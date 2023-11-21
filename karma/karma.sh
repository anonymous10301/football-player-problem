#!/bin/bash
export CHROME_BIN=/usr/bin/chromium
if [ ! -d "/home/coder/project/workspace/angularapp" ]
then
    cp -r /home/coder/project/workspace/karma/angularapp /home/coder/project/workspace/;
fi

if [ ! -d "/home/coder/project/workspace/dotnetapp" ]
then
    cp -r /home/coder/project/workspace/karma/dotnetapp /home/coder/project/workspace/;
fi

if [ -d "/home/coder/project/workspace/angularapp" ]
then
    echo "project folder present"
    cp /home/coder/project/workspace/karma/karma.conf.js /home/coder/project/workspace/angularapp/karma.conf.js;
    # checking for create.component.spec.ts component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/players/create" ]
    then
        cp /home/coder/project/workspace/karma/create.component.spec.ts /home/coder/project/workspace/angularapp/src/app/players/create/create.component.spec.ts;
    else
        echo "CreateComponent_should_create FAILED";
        echo "CreateComponent_should_initialize_the_form FAILED";
        echo "CreateComponent_should_load_positions_on_ngOnInit FAILED";
        echo "CreateComponent_should_validate_required_fields_in_the_create_player_form FAILED";
        echo "PlayerCreateComponent_should_render_the_form_fields FAILED";
    fi

    # checking for details.component.spec.ts component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/players/details" ]
    then
        cp /home/coder/project/workspace/karma/details.component.spec.ts /home/coder/project/workspace/angularapp/src/app/players/details/details.component.spec.ts;
    else
        echo "DetailsComponent_should_create FAILED";
        echo "DetailsComponent_should_load_player_details FAILED";
        echo "DetailsComponent_should_display_player_name_in_h4_element FAILED";
        echo "DetailsComponent_should_display_player_ID_in_list_item FAILED";
        echo "DetailsComponent_should_display_player_shirt_number_in_list_item FAILED";
        echo "DetailsComponent_should_display_player_position_in_list_item FAILED";
        echo "DetailsComponent_should_display_player_appearances_in_list_item FAILED";
        echo "DetailsComponent_should_display_player_goals_in_list_item FAILED";
        echo "DetailsComponent_should_handle_async_loading_of_player_details FAILED";
    fi

    # checking for list.component.spec.ts component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/players/list" ]
    then
        cp /home/coder/project/workspace/karma/list.component.spec.ts /home/coder/project/workspace/angularapp/src/app/players/list/list.component.spec.ts;
    else
        echo "ListComponent_should_create FAILED";
        echo "ListComponent_should_render_players_in_the_table FAILED";
        echo "ListComponent_should_call_deletePlayer_method_when_delete_button_is_clicked FAILED";
        echo "ListComponent_should_render_a_table_with_headers FAILED";
    fi

    # checking for players.service.spec.ts component
    if [ -e "/home/coder/project/workspace/angularapp/src/app/services/players.service.ts" ]
    then
        cp /home/coder/project/workspace/karma/players.service.spec.ts /home/coder/project/workspace/angularapp/src/app/services/players.service.spec.ts;
    else
        echo "PlayersService_should_be_created FAILED";
        echo "PlayersService_should_get_players_from_API FAILED";
    fi

    # checking for positions.service.spec.ts component
    if [ -e "/home/coder/project/workspace/angularapp/src/app/services/positions.service.ts" ]
    then
        cp /home/coder/project/workspace/karma/positions.service.spec.ts /home/coder/project/workspace/angularapp/src/app/services/positions.service.spec.ts;
    else
        echo "PositionsService_should_be_created FAILED";
        echo "PositionsService_return_positions_from_API FAILED";
    fi

    # checking for position.ts component
    if [ -e "/home/coder/project/workspace/angularapp/src/app/models/position.ts" ]
    then
        cp /home/coder/project/workspace/karma/position.spec.ts /home/coder/project/workspace/angularapp/src/app/models/position.spec.ts;
    else
        echo "Position_Model_should_create_Position_instance_Interface FAILED";
    fi

    # checking for player.ts component
    if [ -e "/home/coder/project/workspace/angularapp/src/app/models/player.ts" ]
    then
        cp /home/coder/project/workspace/karma/player.spec.ts /home/coder/project/workspace/angularapp/src/app/models/player.spec.ts;
    else
        echo "Player_Model_should_create_Player_instance_Interface FAILED";
    fi

    if [ -d "/home/coder/project/workspace/angularapp/node_modules" ]; 
    then
        cd /home/coder/project/workspace/angularapp/
        npm test;
    else
        cd /home/coder/project/workspace/angularapp/
        yes | npm install
        npm test
    fi 
else   
    echo "CreateComponent_should_create FAILED";
    echo "CreateComponent_should_initialize_the_form FAILED";
    echo "CreateComponent_should_load_positions_on_ngOnInit FAILED";
    echo "CreateComponent_should_validate_required_fields_in_the_create_player_form FAILED";
    echo "PlayerCreateComponent_should_render_the_form_fields FAILED";
    echo "DetailsComponent_should_create FAILED";
    echo "DetailsComponent_should_load_player_details FAILED";
    echo "DetailsComponent_should_display_player_name_in_h4_element FAILED";
    echo "DetailsComponent_should_display_player_ID_in_list_item FAILED";
    echo "DetailsComponent_should_display_player_shirt_number_in_list_item FAILED";
    echo "DetailsComponent_should_display_player_position_in_list_item FAILED";
    echo "DetailsComponent_should_display_player_appearances_in_list_item FAILED";
    echo "DetailsComponent_should_display_player_goals_in_list_item FAILED";
    echo "DetailsComponent_should_handle_async_loading_of_player_details FAILED";
    echo "ListComponent_should_create FAILED";
    echo "ListComponent_should_render_players_in_the_table FAILED";
    echo "ListComponent_should_call_deletePlayer_method_when_delete_button_is_clicked FAILED";
    echo "ListComponent_should_render_a_table_with_headers FAILED";
    echo "Player_Model_should_create_Player_instance_Interface FAILED";
    echo "PlayersService_should_be_created FAILED";
    echo "PlayersService_should_get_players_from_API FAILED";
    echo "Position_Model_should_create_Position_instance_Interface FAILED";
    echo "PositionsService_should_be_created FAILED";
    echo "PositionsService_return_positions_from_API FAILED";
fi
