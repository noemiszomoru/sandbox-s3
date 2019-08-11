<?php
class QuestionPage extends Page
{ }

class QuestionPage_Controller extends Page_Controller
{
    private static $allowed_actions = array('Form');
    public function Form()
    {
        $fields = new FieldList(
            new TextField('Question', 'Question', null, 255),
            $field = new UploadField('Attachment', 'Attach file')
        );
        $field->setCanAttachExisting(false); // Block access to SilverStripe assets library
        $field->setCanPreviewFolder(false); // Don't show target filesystem folder on upload field
        $field->relationAutoSetting = false; // Prevents the form thinking the QuestionPage is the underlying object
        $actions = new FieldList(new FormAction('submit', 'Post question'));
        return new Form($this, 'Form', $fields, $actions, null);
    }

    public function submit($data, Form $form)
    {
        $Question = new Question();
        $form->saveInto($Question);
        $Question->write();
        return $this;
    }
}
