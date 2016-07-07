#define true 1
#define false 0

class DefaultEventHandler;

class CfgPatches
{
    class life_headless_client
    {
        units[] = {};
        weapons[] = {};
        requiredAddons[] = {"A3_Data_F"};
        fileName = "life_hc.pbo";
        author[] = {"Nanou"};
    };
};

class CfgFunctions
{
    class Headless_Client
    {
        tag = "HC";
        class General
        {
            file = "\life_hc\MySQL\General";
			class cellPhoneRequest {};
			class getRealTime {};
			class saveCellPhone {};
        };

    };

};
