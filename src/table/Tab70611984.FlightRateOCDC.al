table 70611984 "Flight Rate OCDC"
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
        field(4; "OCDC No."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(10; Label; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(11; Rate; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(12; Type; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(13; Code; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Min Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(15; "Max Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Request UID", "Flight UID", "Rate No.", "OCDC No.")
        {
            Clustered = true;
        }
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