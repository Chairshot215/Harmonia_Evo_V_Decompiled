.class Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$1;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 2771
    iput-object p1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$1;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2774
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$1;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-boolean v1, v1, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$1;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v2, v2, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-boolean v2, v2, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    if-ne v1, v2, :cond_1

    .line 2776
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$1;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/app/ContactsListActivity;->getFilterText()Ljava/lang/String;

    move-result-object v0

    .line 2778
    .local v0, filterKey:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2779
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$1;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v1, v1, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2780
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$1;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v1, v1, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 2787
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$1;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iput-boolean v3, v1, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    .line 2789
    .end local v0           #filterKey:Ljava/lang/String;
    :cond_1
    return v3

    .line 2784
    .restart local v0       #filterKey:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter$1;->this$1:Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/app/ContactsListActivity;->startQuery()V

    goto :goto_0
.end method
