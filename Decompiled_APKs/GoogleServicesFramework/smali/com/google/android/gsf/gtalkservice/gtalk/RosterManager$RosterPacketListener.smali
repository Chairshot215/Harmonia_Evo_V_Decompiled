.class Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;
.super Ljava/lang/Object;
.source "RosterManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RosterPacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 20
    .parameter "packet"

    .prologue
    .line 373
    move-object/from16 v2, p1

    check-cast v2, Lorg/jivesoftware/smack/packet/RosterPacket;

    .line 374
    .local v2, rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Packet;->getAccountId()J

    move-result-wide v7

    .line 376
    .local v7, accountId:J
    const/16 v17, 0x0

    .line 378
    .local v17, isRosterResult:Z
    monitor-enter p0

    .line 385
    :try_start_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v1, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->isRosterRequestPendingForAccount(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    const/4 v6, 0x0

    invoke-virtual {v1, v7, v8, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->setRosterRequestPendingForAccount(JZ)V

    .line 388
    const/16 v17, 0x1

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sending rmq packets for account: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->log(Ljava/lang/String;)V
    invoke-static {v1, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->access$700(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Ljava/lang/String;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->access$500(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->resendPacketsForAccount(J)V

    .line 395
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;->getEtag()Ljava/lang/String;

    move-result-object v16

    .line 398
    .local v16, etag:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;->getNotModified()Ljava/lang/Boolean;

    move-result-object v19

    .line 399
    .local v19, notModifiedBoolean:Ljava/lang/Boolean;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v18, 0x1

    .line 402
    .local v18, notModified:Z
    :goto_0
    if-eqz v18, :cond_3

    .line 405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->access$600(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->setRosterFetched(Z)V

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->access$600(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyRosterChanged()Z

    .line 442
    :goto_1
    return-void

    .line 395
    .end local v16           #etag:Ljava/lang/String;
    .end local v18           #notModified:Z
    .end local v19           #notModifiedBoolean:Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 399
    .restart local v16       #etag:Ljava/lang/String;
    .restart local v19       #notModifiedBoolean:Ljava/lang/Boolean;
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 412
    .restart local v18       #notModified:Z
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v3, addedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v4, updatedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v5, deletedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    if-eqz v17, :cond_4

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    const/4 v6, 0x1

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->processLongRosterUpdate(Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ZJ)V
    invoke-static/range {v1 .. v8}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->access$800(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ZJ)V

    .line 439
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->fireRosterChangedEvent(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static/range {v6 .. v11}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->access$1000(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->access$1100(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-static {v1, v7, v8, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->setRosterEtag(Landroid/content/ContentResolver;JLjava/lang/String;)V

    goto :goto_1

    .line 429
    :cond_4
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItemCount()I

    move-result v1

    const/16 v6, 0x32

    if-ge v1, v6, :cond_5

    .line 430
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-wide v14, v7

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->processShortRosterUpdate(Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;J)V
    invoke-static/range {v9 .. v15}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->access$900(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;J)V

    goto :goto_2

    .line 433
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    const/4 v6, 0x0

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->processLongRosterUpdate(Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ZJ)V
    invoke-static/range {v1 .. v8}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->access$800(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ZJ)V

    goto :goto_2
.end method
