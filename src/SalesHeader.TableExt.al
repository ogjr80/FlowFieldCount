tableextension 50108 "Sales Header Ext" extends "Sales Header"
{
    fields
    {
        // Add changes to table fields here
        field(5100; "No of SO Lines"; Integer)
        {
            Caption = 'No of SO Lines';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Line" where("Document Type" = field("Document Type"), "Document No." = field("No.")));
        }

    }

}

