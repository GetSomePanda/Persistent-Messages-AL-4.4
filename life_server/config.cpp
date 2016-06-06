class DefaultEventhandlers;
class CfgPatches {
	class life_server {
		units[] = {"C_man_1"};
		weapons[] = {};
		requiredAddons[] = {"A3_Data_F","A3_Soft_F","A3_Soft_F_Offroad_01","A3_Characters_F"};
		fileName = "life_server.pbo";
		author[]= {"Tonic"};
	};
};

class CfgFunctions 
{
	class MySQL_Database 
	{
		tag = "DB";
		class MySQL
		{
			file = "\life_server\Functions\MySQL";
			class cellPhoneRequest {};
			class saveCellPhone {};
			class getRealTime {};
		};
	};
};
