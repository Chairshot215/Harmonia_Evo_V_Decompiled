.class Lcom/android/mms/ui/MessagingController$MessagingHandler;
.super Landroid/os/Handler;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessagingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingController;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessagingController;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    .line 208
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 209
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/MessagingController;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    .line 212
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 213
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 222
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 224
    :pswitch_1
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$000(Lcom/android/mms/ui/MessagingController;)Ljava/util/ArrayList;

    move-result-object v11

    monitor-enter v11

    .line 225
    :try_start_0
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$000(Lcom/android/mms/ui/MessagingController;)Ljava/util/ArrayList;

    move-result-object v12

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v10}, Lcom/android/mms/ui/MessagingListener;->getWeakReference()Ljava/lang/ref/WeakReference;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 230
    :pswitch_2
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$000(Lcom/android/mms/ui/MessagingController;)Ljava/util/ArrayList;

    move-result-object v11

    monitor-enter v11

    .line 231
    :try_start_1
    iget-object v12, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v12, v10}, Lcom/android/mms/ui/MessagingController;->isActiveListener(Lcom/android/mms/ui/MessagingListener;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 232
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$000(Lcom/android/mms/ui/MessagingController;)Ljava/util/ArrayList;

    move-result-object v12

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v10}, Lcom/android/mms/ui/MessagingListener;->getWeakReference()Ljava/lang/ref/WeakReference;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 234
    :cond_1
    monitor-exit v11

    goto :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10

    .line 237
    :pswitch_3
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$000(Lcom/android/mms/ui/MessagingController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 238
    .local v6, l:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/mms/ui/MessagingListener;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v10}, Lcom/android/mms/ui/MessagingListener;->onConatctInfoChange()V

    goto :goto_1

    .line 242
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #l:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/mms/ui/MessagingListener;>;"
    :pswitch_4
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$100(Lcom/android/mms/ui/MessagingController;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 245
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$200(Lcom/android/mms/ui/MessagingController;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->getAllMessagesUnreadCount(Landroid/content/Context;)[I

    move-result-object v1

    .line 246
    .local v1, counts:[I
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$000(Lcom/android/mms/ui/MessagingController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 247
    .restart local v6       #l:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/mms/ui/MessagingListener;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v10, v1}, Lcom/android/mms/ui/MessagingListener;->onRefreshAllMessagesUnreadCounts([I)V

    goto :goto_2

    .line 251
    .end local v1           #counts:[I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #l:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/mms/ui/MessagingListener;>;"
    :pswitch_5
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$000(Lcom/android/mms/ui/MessagingController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 252
    .restart local v6       #l:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/mms/ui/MessagingListener;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/MessagingListener;

    iget v12, p1, Landroid/os/Message;->arg1:I

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/content/Intent;

    invoke-virtual {v10, v12, v11}, Lcom/android/mms/ui/MessagingListener;->onNewNotification(ILandroid/content/Intent;)V

    goto :goto_3

    .line 256
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #l:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/mms/ui/MessagingListener;>;"
    :pswitch_6
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$200(Lcom/android/mms/ui/MessagingController;)Landroid/content/Context;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-static {v10, v11}, Lcom/android/mms/transaction/MessagingNotification;->cancelNormalNotification(Landroid/content/Context;I)Z

    goto/16 :goto_0

    .line 259
    :pswitch_7
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [J

    move-object v4, v10

    check-cast v4, [J

    .line 260
    .local v4, ids:[J
    if-eqz v4, :cond_0

    .line 261
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 262
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$200(Lcom/android/mms/ui/MessagingController;)Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x321

    invoke-static {v10, v4, v11}, Lcom/android/mms/transaction/MessagingNotification;->removeNotificationByThreadIDs(Landroid/content/Context;[JI)V

    goto/16 :goto_0

    .line 265
    :cond_5
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$200(Lcom/android/mms/ui/MessagingController;)Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x7b

    invoke-static {v10, v4, v11}, Lcom/android/mms/transaction/MessagingNotification;->removeNotificationByThreadIDs(Landroid/content/Context;[JI)V

    goto/16 :goto_0

    .line 278
    .end local v4           #ids:[J
    :pswitch_8
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    .line 279
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "unread_count"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 280
    .local v9, unReadCount:I
    const-string v10, "force"

    invoke-virtual {v5, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 281
    .local v2, force:Z
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$200(Lcom/android/mms/ui/MessagingController;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9, v2}, Lcom/android/mms/ui/MessagingShortcut;->updateVvmShortcut(Landroid/content/Context;IZ)V

    goto/16 :goto_0

    .line 284
    .end local v2           #force:Z
    .end local v5           #intent:Landroid/content/Intent;
    .end local v9           #unReadCount:I
    :pswitch_9
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    .line 285
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v10, "count"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 286
    .local v0, count:I
    const-string v10, "force"

    invoke-virtual {v5, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 287
    .restart local v2       #force:Z
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$200(Lcom/android/mms/ui/MessagingController;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v0, v2}, Lcom/android/mms/ui/MessagingShortcut;->updateMsgShortcut(Landroid/content/Context;IZ)V

    goto/16 :goto_0

    .line 290
    .end local v0           #count:I
    .end local v2           #force:Z
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_a
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 291
    .local v7, thread_id:J
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$000(Lcom/android/mms/ui/MessagingController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 292
    .restart local v6       #l:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/mms/ui/MessagingListener;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v10, v7, v8}, Lcom/android/mms/ui/MessagingListener;->onDeleteDetailScreen(J)V

    goto :goto_4

    .line 296
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #l:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/mms/ui/MessagingListener;>;"
    .end local v7           #thread_id:J
    :pswitch_b
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    .line 297
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v10, "count"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 298
    .restart local v0       #count:I
    const-string v10, "force"

    invoke-virtual {v5, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 299
    .restart local v2       #force:Z
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$200(Lcom/android/mms/ui/MessagingController;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v0, v11, v2}, Lcom/android/mms/ui/MessagingShortcut;->updateMessagingShortcut(Landroid/content/Context;ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 302
    .end local v0           #count:I
    .end local v2           #force:Z
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_c
    iget-object v10, p0, Lcom/android/mms/ui/MessagingController$MessagingHandler;->this$0:Lcom/android/mms/ui/MessagingController;

    #getter for: Lcom/android/mms/ui/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/MessagingController;->access$200(Lcom/android/mms/ui/MessagingController;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicatorIfNeed(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 305
    :pswitch_d
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [J

    check-cast v10, [J

    invoke-static {v11, v10}, Lcom/android/mms/transaction/MessagingNotification;->removeThreaIdFromNotifyIdList(I[J)V

    goto/16 :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
