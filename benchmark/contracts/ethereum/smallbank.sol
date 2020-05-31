pragma solidity ^0.4.0;

contract SmallBank {
    
    //unit64 constant MAX_ACCOUNT = 10000;
    //unit64 constant BALANCE = 10000;
    //bytes20 constant accountTab = "account";
    //bytes20 constant savingTab = "saving";
    //bytes20 constant checkingTab = "checking";
    
    mapping(string=>unit64) savingStore;
    mapping(string=>unit64) checkingStore;

    function almagate(string arg0, string arg1) public {
       unit64 bal1 = savingStore[arg0];
       unit64 bal2 = checkingStore[arg1];
       
       checkingStore[arg0] = 0;
       savingStore[arg1] = add(bal1, bal2);
    }

    function getBalance(string arg0) public constant returns (unit64 balance) {
        unit64 bal1 = savingStore[arg0];
        unit64 bal2 = checkingStore[arg0];
        
        balance = add(bal1,bal2);
        return balance;
    }
    
    function updateBalance(string arg0, unit64 arg1) public {
        unit64 bal1 = checkingStore[arg0];
        unit64 bal2 = arg1;
        
        checkingStore[arg0] = add( bal1, bal2) ;
    }
    
    function updateSaving(string arg0, unit64 arg1) public {
        unit64 bal1 = savingStore[arg0];
        unit64 bal2 = arg1;
        
        savingStore[arg0] = add( bal1, bal2);
    }
    
    function sendPayment(string arg0, string arg1, unit64 arg2) public {
        unit64 bal1 = checkingStore[arg0];
        unit64 bal2 = checkingStore[arg1];
        unit64 amount = arg2;
        
        bal1 = sub(bal1, amount);
        bal2 = add(bal2,amount);
        
        checkingStore[arg0] = bal1;
        checkingStore[arg1] = bal2;
    }
    
    function writeCheck(string arg0, unit64 arg1) public {
        unit64 bal1 = checkingStore[arg0];
        unit64 bal2 = savingStore[arg0];
        unit64 amount = arg1;
        
        if (amount < bal1 + bal2) {
            checkingStore[arg0] = sub(sub(bal1,amount),1);
        } 
        else {
            checkingStore[arg0] = sub(bal1,amount);
        }
    }   
    function add(uint64 a, uint64 b) internal pure returns (uint64) {
        uint64 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    function sub(uint64 a, uint64 b) internal pure returns (uint64) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

  
    function sub(uint64 a, uint64 b, string memory errorMessage) internal pure returns (uint64) {
        require(b <= a, errorMessage);
        uint64 c = a - b;

        return c;
    }

   
    function mul(uint64 a, uint64 b) internal pure returns (uint64) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint64 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

}
}


