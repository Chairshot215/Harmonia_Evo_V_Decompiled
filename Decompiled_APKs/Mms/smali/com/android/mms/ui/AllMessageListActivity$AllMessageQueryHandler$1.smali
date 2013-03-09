.class Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$1;
.super Ljava/lang/Object;
.source "AllMessageListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->handleMessage_Debug(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$1;->this$1:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    iput-object p2, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1006
    iget-object v1, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$1;->this$1:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    iget-object v1, v1, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/AllMessageListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1008
    iget-object v1, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$1;->this$1:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    iget-object v1, v1, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AllMessageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1009
    .local v0, emptyView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1010
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$1;->this$1:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    iget-object v1, v1, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v1, v1, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    if-eqz v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$1;->this$1:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    iget-object v1, v1, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v1, v1, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AllMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1023
    .end local v0           #emptyView:Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 1012
    .restart local v0       #emptyView:Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1021
    .end local v0           #emptyView:Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$1;->val$cursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;Z)V

    goto :goto_1
.end method
