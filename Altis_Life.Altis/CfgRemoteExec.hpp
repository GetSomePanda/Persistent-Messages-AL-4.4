#define F(NAME,TARGET) class NAME { \
    allowedTargets = TARGET; \
};

#define ANYONE 0
#define CLIENT 1
#define SERVER 2
#define HC HC_Life

class CfgRemoteExec {
    class Functions 
	{
        mode = 1;
        jip = 0;

		F(DB_fnc_cellPhoneRequest,SERVER)
		F(DB_fnc_saveCellPhone,SERVER)
		
		F(life_fnc_setupCellPhone,CLIENT)
	};
};