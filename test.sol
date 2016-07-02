contract Mortal {

	address public owner;

	function mortal() {

		owner = msg.sender;
	}

	function kill() {

		suicide(owner);

	}
}



contract User is mortal {

	string public userName;

	function User(string _name) {

		userName = _name;

	}
}

contract Provider is mortal {

	string public providerName;

	function Provider(string _name) {

		providerName = _name;
	}
}