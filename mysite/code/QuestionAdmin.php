<?php

class QuestionAdmin extends ModelAdmin
{

    private static $managed_models = array(
        'Question'
    );

    private static $url_segment = 'questions';

    private static $menu_title = 'Question Admin';
}
