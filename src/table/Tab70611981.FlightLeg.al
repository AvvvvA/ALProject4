table 70611981 "Flight Leg"
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
        field(3; "Leg No."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(10; "Flight Number"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Arrival DateTime"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Arrival Airport"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Departure Time"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Departure Airport"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(15; "Body Type"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Aircraft Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(17; "CO2 Value"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(18; "CO2 Estimation"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Request UID", "Flight UID", "Leg No.")
        {
            Clustered = true;
        }
    }

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