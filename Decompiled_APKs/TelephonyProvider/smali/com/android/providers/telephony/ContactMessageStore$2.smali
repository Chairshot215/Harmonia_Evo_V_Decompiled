.class Lcom/android/providers/telephony/ContactMessageStore$2;
.super Landroid/content/BroadcastReceiver;
.source "ContactMessageStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/ContactMessageStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/ContactMessageStore;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/ContactMessageStore;)V
    .locals 0
    .parameter

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1612
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1615
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1616
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #setter for: Lcom/android/providers/telephony/ContactMessageStore;->isScreenOff:Z
    invoke-static {v3, v5}, Lcom/android/providers/telephony/ContactMessageStore;->access$302(Lcom/android/providers/telephony/ContactMessageStore;Z)Z

    .line 1617
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$600()Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1618
    invoke-static {v7}, Lcom/android/providers/telephony/ContactMessageStore;->access$702(Z)Z

    .line 1620
    :cond_0
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->CSneedSync:Z
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$400(Lcom/android/providers/telephony/ContactMessageStore;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1621
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-virtual {v3}, Lcom/android/providers/telephony/ContactMessageStore;->requestCS2Sync()V

    .line 1668
    :cond_1
    :goto_0
    return-void

    .line 1623
    :cond_2
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1625
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$600()Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->isDeleting()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1626
    new-instance v3, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    iget-object v4, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-direct {v3, v4}, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;-><init>(Lcom/android/providers/telephony/ContactMessageStore;)V

    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$602(Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;)Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    .line 1627
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$600()Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1632
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.EAS_ACCOUNT_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.intent.action.ACTION_ACCOUNT_DELETION_CONTACT_UPDATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.opensense.provider.intent.ACTION_SYNC_CONTACTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1639
    :cond_4
    monitor-enter p0

    .line 1641
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/android/providers/telephony/ContactMessageStore;->lPersonId:J

    .line 1642
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    const-string v4, "_id"

    const-wide/16 v5, -0x1

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/providers/telephony/ContactMessageStore;->lPersonId:J

    .line 1643
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    iget-wide v3, v3, Lcom/android/providers/telephony/ContactMessageStore;->lPersonId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    .line 1644
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    const-string v4, "contact_id"

    const-wide/16 v5, -0x1

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/providers/telephony/ContactMessageStore;->lPersonId:J

    .line 1645
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1649
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1650
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1651
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1645
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1657
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.htcdialer.CONTACT_CACHE_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1660
    const-string v3, "content://mms-sms-v2/get-ContactInfo"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1661
    .local v2, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$500()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1663
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1664
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1665
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$2;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    #getter for: Lcom/android/providers/telephony/ContactMessageStore;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/providers/telephony/ContactMessageStore;->access$000(Lcom/android/providers/telephony/ContactMessageStore;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
