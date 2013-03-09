.class Lcom/android/htccontacts/BrowseGroupsActivity$1;
.super Landroid/os/Handler;
.source "BrowseGroupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseGroupsActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 199
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "BrowseGroupsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " UIhandler:  handleMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 267
    :sswitch_0
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->updateIndicator()V

    goto :goto_0

    .line 208
    :sswitch_1
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v3, v3, Lcom/android/htccontacts/BrowseGroupsActivity;->mForceUpdateIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 209
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v3, v3, Lcom/android/htccontacts/BrowseGroupsActivity;->mForceUpdateIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    .line 225
    :sswitch_2
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;
    invoke-static {v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$100(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/indicator/IndicatorProcessor;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->isIndicatorEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;
    invoke-static {v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$100(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/indicator/IndicatorProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->startProcess()V

    goto :goto_0

    .line 231
    :sswitch_3
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v3, 0x7da

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$200(Lcom/android/htccontacts/BrowseGroupsActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 233
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/BrowseGroupsActivity;->startQuery(Z)V

    goto/16 :goto_0

    .line 235
    :cond_3
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$300(Lcom/android/htccontacts/BrowseGroupsActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 242
    :sswitch_4
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "BrowseGroupsActivity"

    const-string v3, "UPDATE_LIST_MSG"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_4
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 250
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;

    .line 251
    .local v0, cache:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    iget-object v2, v0, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->itemRef:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_5

    .line 252
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$1;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 257
    :cond_5
    iget-object v2, v0, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->itemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;

    .line 258
    .local v1, item:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    if-eqz v1, :cond_0

    .line 259
    iget-object v2, v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->groupName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->groupName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->updateTitleByCache()V

    goto/16 :goto_0

    .line 203
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f0 -> :sswitch_0
        0x7d0 -> :sswitch_2
        0x7da -> :sswitch_3
        0x7e4 -> :sswitch_1
        0x7ee -> :sswitch_4
        0x7f8 -> :sswitch_5
    .end sparse-switch
.end method
