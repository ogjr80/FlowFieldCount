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

        field(50101; "Total Unit Price"; Decimal)
        {
            Caption = 'Total Unit Price';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Sales Line"."Unit Price" where("Document Type" = field("Document Type"), "Document No." = field("No.")));
        }

        field(50102; "Sales Line Exist"; Boolean)
        {
            Caption = 'Sales Line Exist';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = exist("Sales Line" where("Document Type" = field("Document Type"), "Document No." = field("No.")));
        }

    }

}

