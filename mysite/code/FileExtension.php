<?php

class FileExtension extends DataExtension
{

    private static $belongs_many_many = array(
        'Question' => 'Question'
    );

    function canEdit($member)
    {
        // WARNING! This affects permissions on ALL images. Setting this incorrectly can restrict
        // access to authorised users or unintentionally give access to unauthorised users if set incorrectly.
        return Permission::check('CMS_ACCESS_AssetAdmin');
    }
}
