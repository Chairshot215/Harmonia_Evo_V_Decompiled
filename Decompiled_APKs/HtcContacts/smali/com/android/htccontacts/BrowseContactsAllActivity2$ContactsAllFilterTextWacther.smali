.class public Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;
.super Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;
.source "BrowseContactsAllActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactsAllFilterTextWacther"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 2593
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-direct {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;-><init>(Lcom/android/htccontacts/ContactListSearchPicker;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2595
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2596
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2597
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->setSubHeaderEnabled(Z)V

    .line 2598
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->setAutoHideSubHeaderEnabled(Z)V

    .line 2599
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->enableCompanySearch(Z)V

    .line 2600
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->setMyProfileEnabled(Z)V

    .line 2601
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->setVoiceSearchEnabled(Z)V

    .line 2612
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 2613
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #setter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mShouldRefocusSearch:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$602(Lcom/android/htccontacts/BrowseContactsAllActivity2;Z)Z

    .line 2614
    return-void

    .line 2605
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->setSubHeaderEnabled(Z)V

    .line 2606
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mFirstAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->setAutoHideSubHeaderEnabled(Z)V

    .line 2607
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v0, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->enableCompanySearch(Z)V

    .line 2608
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->setMyProfileEnabled(Z)V

    .line 2609
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ContactsAllFilterTextWacther;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->setVoiceSearchEnabled(Z)V

    goto :goto_0
.end method
