<?php

class Region extends DataObject
{

    private static $db = array(
        'Title' => 'Varchar',
        'Description' => 'Text',
    );

    private static $has_one = array(
        'Photo' => 'Image'
    );

    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextField::create('Title'),
            TextareaField::create('Description'),
            $uploader = UploadField::create('Photo')
        );

        $uploader->setFolderName('region-photos');
        $uploader->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpeg', 'jpg'));

        return $fields;
    }
}
