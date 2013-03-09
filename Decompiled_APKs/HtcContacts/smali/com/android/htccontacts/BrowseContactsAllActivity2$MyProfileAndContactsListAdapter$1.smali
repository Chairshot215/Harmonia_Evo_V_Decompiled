.class Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$1;
.super Landroid/os/Handler;
.source "BrowseContactsAllActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$1;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1698
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1707
    :cond_0
    :goto_0
    return-void

    .line 1700
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$1;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->access$2300(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$1;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    new-instance v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;

    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$1;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$1;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->access$2500(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$1;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->access$2300(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)Landroid/view/View;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;Ljava/lang/ref/WeakReference;Landroid/view/View;)V

    #setter for: Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileAsyncQuery:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->access$2402(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;

    .line 1702
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$1;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileAsyncQuery:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->access$2400(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1698
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
