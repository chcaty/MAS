using MAS.IBLL;
using MAS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAS.BLL
{
    public class UserInfoService : BaseService<MAS_Users>,IUserInfoService
    {
        public override void SetCurrentDal()
        {
            CurrentDal = this.CurrentDBSession.UserInfoDal;
        }
    }
}
