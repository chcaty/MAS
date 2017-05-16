using MAS.DAL;
using MAS.IDAL;
using MAS.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAS.DALFactory
{
    /// <summary>
    /// 数据会话层,就是一个工厂类,负责完成所有数据操作类实例的创建,然后业务层通过数据会话层来获得操作数据类的实例,所以数据会话层将业务层与数据层解耦.
    /// 在数据会话层中提供一个方法,完成所有数据的保存.
    /// </summary>
    public class DBSession : IDBSession
    {
        //HotelEntities Db = new HotelEntities();
        public DbContext Db
        {
            get
            {
                return DBContextFactory.CreateDbContext();
            }
        }

        private IUserInfoDal _UserInfoDal;
        public IUserInfoDal UserInfoDal
        {
            get
            {
                if(_UserInfoDal == null)
                {
                    _UserInfoDal = AdstractFactory.CreateUserInfoDal();
                }
                return _UserInfoDal;
            }
            set
            {
                _UserInfoDal = value;
            }
        }

        /// <summary>
        /// 一个业务中经常涉及到对多张表操作,希望连接一次数据库,完成对多张表的操作.提高性能.工作单元模式.
        /// </summary>
        /// <returns></returns>
        public bool SaveChanges()
        {
            return Db.SaveChanges() > 0;
        }
    }
}
