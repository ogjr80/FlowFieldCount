pageextension 50108 "Sales Order Ext" extends "Sales Order"
{
    layout
    {
        // Add changes to page layout here
        addafter(Status)
        {
            field("No of SO Lines"; Rec."No of SO Lines")
            {
                ApplicationArea = All;
            }
        }
    }


}