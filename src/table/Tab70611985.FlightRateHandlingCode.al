table 70611985 "Flight Rate Handling Code"
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
        field(4; "Handling Code No."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(13; Code; Text[10])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Request UID", "Flight UID", "Rate No.", "Handling Code No.")
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