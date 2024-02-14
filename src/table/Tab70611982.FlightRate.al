table 70611982 "Flight Rate"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Request UID"; Guid)
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Flight UID"; Guid)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Rate No."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(10; Id; Guid)
        {
            DataClassification = ToBeClassified;
        }
        field(11; Name; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(12; Type; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(13; Currency; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Net Rate"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(15; "All In Rate"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(16; Total; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Minimum Rate"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(18; "Coloader Office Id"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Request UID", "Flight UID", "Rate No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}