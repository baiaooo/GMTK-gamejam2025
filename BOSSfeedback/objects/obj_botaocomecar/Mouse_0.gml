switch (global.hype) {
        case 0:
            room_goto(bosscutscene1_intro);
            break;
		case 1:
            room_goto(bossroom);
            break;
        case 2:
            room_goto(bossroom);
            break;
        case 3:
            room_goto(bossroom);
            break;
        case 4:
            room_goto(bossroom);
            break;
        case 5:
            room_goto(bossroom);
            break;
        default:
            room_goto(bossroom); // fallback caso algo dê errado
            break;
    }