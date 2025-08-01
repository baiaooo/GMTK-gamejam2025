if (current_time >= trocar_apos) {
    switch (global.hype) {
    case 0:
        room_goto(bosscutscene1_please);
        break;
	case 1:
        room_goto(bosscutscene2_please);
        break;
    case 2:
        room_goto(bosscutscene3_please);
        break;
    case 3:
        room_goto(bosscutscene4_please);
        break;
    case 4:
        room_goto(bosscutscene5_ending);
        break;
    default:
        room_goto(feedback); // fallback
        break;
}
}