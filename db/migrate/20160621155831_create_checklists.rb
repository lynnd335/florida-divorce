class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.string :Client_Name
      t.string :Grounds
      t.string :Petitioner_Preg_Aff
      t.string :Pregnancy_Affidavit_Respondent
      t.string :Waiver_Petitioner_s
      t.string :Waiver_Respondent_s
      t.string :MSA
      t.string :Residency_Proof
      t.string :Social_Security_Petitioner
      t.string :Social_Security_Respondent
      t.string :A
      t.string :Discovery_Waiver_Signed_by_Both
      t.string :Discovery_Waiver_Signed_by_Petitioner
      t.string :Discovery_Waiver_Signed_by_Respondent
      t.string :Financial_Affidavit_Petitioner
      t.string :Financial_Affidavit_Respondent
      t.string :Child_Custody_Affidavit
      t.string :Parenting_Course_Husband
      t.string :Parenting_Course_Wife
      t.string :Parenting_Plan
      t.string :Gudelines
      t.string :Addendum
      t.string :Notes
      t.string :Client_Email_Address
      t.boolean :Send_Link_Email

      t.timestamps null: false
    end
  end
end
