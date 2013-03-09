.class Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->handleMessage_Debug(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;Landroid/app/Activity;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->this$1:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->val$act:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1145
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1146
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->this$1:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1148
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->this$1:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mIsDisableCache:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/MessageListAdapter;->access$1602(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    .line 1151
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->this$1:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mQueryCompleteListener:Lcom/android/mms/ui/MessageListAdapter$QueryCompleteListener;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListAdapter;->access$1700(Lcom/android/mms/ui/MessageListAdapter;)Lcom/android/mms/ui/MessageListAdapter$QueryCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->this$1:Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mQueryCompleteListener:Lcom/android/mms/ui/MessageListAdapter$QueryCompleteListener;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListAdapter;->access$1700(Lcom/android/mms/ui/MessageListAdapter;)Lcom/android/mms/ui/MessageListAdapter$QueryCompleteListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/mms/ui/MessageListAdapter$QueryCompleteListener;->onQueryCompleteEvent(I)V

    .line 1154
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTimestampIndicator()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->val$act:Landroid/app/Activity;

    const v1, 0x7f0e002b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1156
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->val$act:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v0, :cond_1

    .line 1157
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->val$act:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->val$act:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->val$act:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    iget v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMovetoPos:I

    if-ltz v0, :cond_2

    .line 1162
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->val$act:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->val$act:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    iget v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMovetoPos:I

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 1163
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->val$act:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    iput v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMovetoPos:I

    .line 1171
    :cond_2
    :goto_0
    return-void

    .line 1169
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$MessageListQueryHandler$1;->val$cursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;Z)V

    goto :goto_0
.end method
