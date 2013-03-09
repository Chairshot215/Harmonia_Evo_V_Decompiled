.class Lcom/android/htccontacts/BrowseContactsAllActivity2$9;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;->createFontSizeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$9;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1389
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1390
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$9;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-static {v2, p2}, Lcom/android/htccontacts/util/ContactsUtils;->setFontSize(Landroid/content/Context;I)Z

    move-result v1

    .line 1391
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 1392
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$9;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$9;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-static {v3}, Lcom/android/htccontacts/util/ContactsUtils;->getFontSize(Landroid/content/Context;)I

    move-result v3

    #setter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mFontSize:I
    invoke-static {v2, v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$1602(Lcom/android/htccontacts/BrowseContactsAllActivity2;I)I

    .line 1393
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$9;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;

    .line 1394
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->updateResource()V

    .line 1395
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$9;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #calls: Lcom/android/htccontacts/BrowseContactsAllActivity2;->resetEmptyView()V
    invoke-static {v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$1700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    .line 1396
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$9;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$9;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v3, v3, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterString:Ljava/lang/String;

    #setter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mFilterStringCache:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$1802(Lcom/android/htccontacts/BrowseContactsAllActivity2;Ljava/lang/String;)Ljava/lang/String;

    .line 1397
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$9;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
    invoke-static {v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$1900(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1398
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$9;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$9;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mAdapter:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
    invoke-static {v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$2000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1401
    .end local v0           #mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    :cond_0
    return-void
.end method
