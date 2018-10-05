//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"Операция по возвращению Крыма Украине началась. Вашему отряду предстоит уничтожить два зенитных ракетных комплекса С-750. Вас высадят на побережье вблизи одной из ЗРК. После уничтожения вызывайте вертолёт и возвращайтесь на базу. "
END

TOPIC("А. Враждебные силы:")
"до 2-х взодов ВСРФ"
END

TOPIC("Б. Дружественные силы:")
"Отряд КМП США"
END

TOPIC("II. Задание:")
"1. Уничтожить 2 ЗРК С750<br />2. Эвакуироваться<br />"
END

TOPIC("III. Выполнение:")
"По плану командира."
END

TOPIC("IV. Поддержка:")
"Поддержка артиллерии<br />Steel Rain-1-1 (Sholef 152mm)<br />Пусковая установка с крылатыми ракетами<br />"
END

TOPIC("V. Сигналы:")
"SUP NET 51<br />1'1 - SR CH 1<br />"
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"По необходимости запускать крылатые ракеты"
END
};

ADD_TOPICS