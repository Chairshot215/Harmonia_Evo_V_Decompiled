.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;
.super Landroid/os/Handler;
.source "GTalkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 167
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_1

    .line 168
    const-string v5, "GTalkService"

    const-string v6, "mHandler is null"

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 174
    :sswitch_0
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gsf/gtalkservice/Endpoint;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->refreshAuthToken(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    invoke-static {v6, v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    goto :goto_0

    .line 178
    :sswitch_1
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const/4 v6, 0x0

    #setter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z
    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$202(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)Z

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gtalk_send_app_foreground_state"

    invoke-static {v6, v7, v8}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v6

    #setter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEnableTalkForegroundNotifications:Z
    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$302(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)Z

    .line 185
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v5

    if-nez v5, :cond_4

    .line 186
    const-string v5, "GTalkService"

    invoke-static {v5, v9}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 187
    const-string v5, "EVENT_GSERVICES_CHANGED: NO MAIN CONNECTION!"

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 190
    :cond_2
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6, v10, v11}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 196
    .local v0, androidId:J
    cmp-long v5, v0, v10

    if-eqz v5, :cond_3

    .line 197
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeConnection()V
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    goto :goto_0

    .line 180
    .end local v0           #androidId:J
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 199
    .restart local v0       #androidId:J
    :cond_3
    const/16 v5, 0x9

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 200
    const-string v5, "EVENT_GSERVICES_CHANGED: aid is 0"

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    .end local v0           #androidId:J
    :cond_4
    const-string v5, "GTalkService"

    invoke-static {v5, v9}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 204
    const-string v5, "EVENT_GSERVICES_CHANGED: reset current connection"

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 206
    :cond_5
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->resetOnGservicesChange()V
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    goto :goto_0

    .line 212
    :sswitch_2
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTalkAppReportedInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 215
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    .line 216
    .local v2, connection:Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v2, :cond_0

    .line 217
    new-instance v4, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;

    invoke-direct {v4, v8}, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;-><init>(Z)V

    .line 218
    .local v4, metadataPacket:Lorg/jivesoftware/smack/packet/TalkMetadataPacket;
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;->setAccountId(J)V

    .line 221
    :try_start_2
    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 222
    :catch_0
    move-exception v3

    .line 223
    .local v3, ex:Ljava/lang/IllegalStateException;
    const-string v5, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send background state caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method
