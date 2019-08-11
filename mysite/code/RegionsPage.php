<?php

class RegionsPage extends Page
{
    private static $has_many = array(
        'Regions' => 'Region'
    );
}

class RegionsPage_Controller extends Page_Controller
{

    private static $allowed_actions = array('Form');

    public function Form()
    {
        $fields = new FieldList(
            new TextField('Title', 'Title', null, 255),
            $field = new UploadField('Images', 'Upload Images')
        );
        $field->setCanAttachExisting(false); // Block access to SilverStripe assets library
        $field->setCanPreviewFolder(false); // Don't show target filesystem folder on upload field
        $field->relationAutoSetting = false; // Prevents the form thinking the GalleryPage is the underlying object
        $actions = new FieldList(new FormAction('submit', 'Save Images'));
        return new Form($this, 'Form', $fields, $actions, null);
    }

    public function submit($data, Form $form)
    {
        $region = new Region();
        $form->saveInto($region);
        $region->write();
        return $this;
    }
}
