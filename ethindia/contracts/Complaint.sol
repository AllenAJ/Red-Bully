pragma solidity >=0.4.21 <0.6.0;

contract complain{
  //uint totalusers;
  uint totalcomplains;
  string lol = "test 1";

  struct Complaintlist{
          uint id;
          string cemail;
          string cname;
          string clinkuser;
          string ctarget;
          string clinktarget;
          string desc;
          uint creward;
      }
      //,Complaintlist[] public clientc;
      mapping(uint => Complaintlist) public complains;

  function createComplain(string memory _cemail,string memory _cname,string memory _clinkuser,string memory _ctarget,string memory _clinktarget,string memory _desc,uint _creward) public{
              totalcomplains++;
              complains[totalcomplains]=Complaintlist(totalcomplains,_cemail,_cname,_clinkuser,_ctarget,_clinktarget,_desc,_creward);
            }
  function getMessage() public view returns(string memory){
               return lol;
                        }
  function getComplainnumber() public view returns(uint){
              return(totalcomplains);
             }                        

}
