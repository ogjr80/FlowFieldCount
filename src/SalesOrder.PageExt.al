pageextension 50108 "Sales Order Ext" extends "Sales Order"
{
    layout
    {
        // Add changes to page layout here
        addafter(Status)
        {
            // field("No of SO Lines"; Rec."No of SO Lines")
            // {
            //     ApplicationArea = All;
            // }
            field("Total Unit Price"; Rec."Total Unit Price")
            {
                ApplicationArea = All;
            }

            field("Sales Lines Exist"; Rec."Sales Line Exist")
            {
                ApplicationArea = All;
            }

            field("Contact Email"; Rec."Contact Email")
            {
                ApplicationArea = All;
            }



        }
    }

    trigger OnOpenPage()
    begin
        rec.CalcFields("No of SO Lines");
        Message(Rec.FieldName("No of SO Lines") + ' ' + format(Rec."No of SO Lines"));
    end;




}