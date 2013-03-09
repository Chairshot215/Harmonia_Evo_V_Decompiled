.class Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->initMyContactView(Lcom/android/htccontacts/widget/HtcListItemBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

.field final synthetic val$activity:Lcom/android/htccontacts/app/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;Lcom/android/htccontacts/app/BaseListActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1915
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    iput-object p2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->val$activity:Lcom/android/htccontacts/app/BaseListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsAvailableMyContact:Z
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->access$2700(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1918
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileAsyncQuery:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->access$2400(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mMyContactId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->val$activity:Lcom/android/htccontacts/app/BaseListActivity;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileAsyncQuery:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->access$2400(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mMyContactId:J

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->shareMyContactCard(Landroid/content/Context;J)V

    .line 1931
    :cond_0
    :goto_0
    return-void

    .line 1923
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mWarningDialog:Landroid/app/Dialog;

    if-nez v0, :cond_2

    .line 1924
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->val$activity:Lcom/android/htccontacts/app/BaseListActivity;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->createShareMyContactInavailableDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mWarningDialog:Landroid/app/Dialog;

    .line 1925
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->val$activity:Lcom/android/htccontacts/app/BaseListActivity;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mWarningDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/BaseListActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 1927
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mWarningDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mWarningDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1928
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mWarningDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
