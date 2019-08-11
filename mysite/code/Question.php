<?php

class Question extends DataObject
{

    private static $summary_fields = array(
        'Question',
        // 'Attachment'
    );

    private static $db = array(
        'Question' => 'Text',
    );

    private static $has_one = array(
        'Attachment' => 'File'
    );

    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextareaField::create('Question'),
            $uploader = UploadField::create('Attachment')
        );

        $uploader->setFolderName('question-attachments');
        $uploader->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpeg', 'jpg', 'pdf', 'docx'));

        return $fields;
    }
}
