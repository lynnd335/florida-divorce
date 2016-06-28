json.array!(@checklists) do |checklist|
  json.extract! checklist, :id, :Client_Name, :Grounds, :Petitioner_Preg_Aff, :Pregnancy_Affidavit_Respondent, :Waiver_Petitioner_s, :Waiver_Respondent_s, :MSA, :Residency_Proof, :Social_Security_Petitioner, :Social_Security_Respondent, :A, :Discovery_Waiver_Signed_by_Both, :Discovery_Waiver_Signed_by_Petitioner, :Discovery_Waiver_Signed_by_Respondent, :Financial_Affidavit_Petitioner, :Financial_Affidavit_Respondent, :Child_Custody_Affidavit, :Parenting_Course_Husband, :Parenting_Course_Wife, :Parenting_Plan, :Gudelines, :Addendum, :Notes, :Client_Email_Address, :Send_Link_Email
  json.url checklist_url(checklist, format: :json)
end
