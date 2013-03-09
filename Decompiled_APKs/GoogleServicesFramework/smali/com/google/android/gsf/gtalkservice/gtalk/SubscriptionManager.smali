.class public Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# static fields
.field private static final CONTACT_SUBSCRIPTION_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBatchPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

.field private mPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mSubscribeListener:Lorg/jivesoftware/smack/PacketListener;

.field private mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "subscriptionStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "subscriptionType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->CONTACT_SUBSCRIPTION_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mSubscribeListener:Lorg/jivesoftware/smack/PacketListener;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;)Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->processPresencePacket(Lorg/jivesoftware/smack/packet/Presence;)V

    return-void
.end method

.method private computeWhereClause()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "username"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, whereClause:Ljava/lang/StringBuilder;
    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mWhereClause:Ljava/lang/String;

    .line 112
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mSelectionArgs:[Ljava/lang/String;

    .line 113
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 376
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SubsMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 380
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SubsMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method private notifyNewSubscriptionRequest(Ljava/lang/String;J)V
    .locals 1
    .parameter "user"
    .parameter "account"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyRosterChanged()Z

    .line 351
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->notifyInvitationViaStatusNotifier(Ljava/lang/String;J)V

    .line 352
    return-void
.end method

.method private notifySubscriptionRequestRemoved(Ljava/lang/String;J)V
    .locals 2
    .parameter "user"
    .parameter "account"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyRosterChanged()Z

    .line 370
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->removeSubscriptionNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 373
    return-void
.end method

.method private processPresencePacket(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 17
    .parameter "presence"

    .prologue
    .line 233
    if-eqz p1, :cond_1

    .line 234
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v10

    .line 235
    .local v10, type:Lorg/jivesoftware/smack/packet/Presence$Type;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, from:Ljava/lang/String;
    invoke-static {v6}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, bareJid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v13}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v4

    .line 238
    .local v4, connection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v1

    .line 240
    .local v1, accountId:J
    sget-object v13, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v10, v13, :cond_2

    .line 241
    sget-boolean v13, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "got presence SUBSCRIBE from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 242
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->receivedSubscriptionRequestFromContact(Ljava/lang/String;J)V

    .line 346
    .end local v1           #accountId:J
    .end local v3           #bareJid:Ljava/lang/String;
    .end local v4           #connection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    .end local v6           #from:Ljava/lang/String;
    .end local v10           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    :cond_1
    :goto_0
    return-void

    .line 243
    .restart local v1       #accountId:J
    .restart local v3       #bareJid:Ljava/lang/String;
    .restart local v4       #connection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    .restart local v6       #from:Ljava/lang/String;
    .restart local v10       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    :cond_2
    sget-object v13, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v10, v13, :cond_4

    .line 250
    sget-boolean v13, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "got presence UNSUBSCRIBE from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 252
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->removeSubscriptionRequestFromUser(Ljava/lang/String;J)V

    .line 259
    new-instance v12, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v13, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v12, v13}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 260
    .local v12, unsubscribed:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 262
    :try_start_0
    invoke-virtual {v4, v12}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v5

    .line 264
    .local v5, ex:Ljava/lang/IllegalStateException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ProcessPacketCallback: caught "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v5           #ex:Ljava/lang/IllegalStateException;
    .end local v12           #unsubscribed:Lorg/jivesoftware/smack/packet/Presence;
    :cond_4
    sget-object v13, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v10, v13, :cond_8

    .line 270
    sget-boolean v13, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "got presence SUBSCRIBED from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 277
    :cond_5
    new-instance v9, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v13, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v9, v13}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 278
    .local v9, subscribe:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 280
    :try_start_1
    invoke-virtual {v4, v9}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v13, v6, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 288
    .local v7, fromContactId:J
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-lez v13, :cond_1

    .line 289
    sget-boolean v13, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fromContactId is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 290
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v13, v7, v8}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->presenceHasUser(Landroid/content/ContentResolver;J)Z

    move-result v13

    if-nez v13, :cond_1

    .line 291
    sget-boolean v13, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v13, :cond_7

    const-string v13, "contact has a pending subscription"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 293
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v13}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v13

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v14

    invoke-virtual {v13, v6, v1, v2, v14}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->removeSubscriptionNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v13, v1, v2, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->deleteContact(Landroid/content/ContentResolver;JLjava/lang/String;)I

    .line 303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v13}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v6, v14, v15, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->createContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 281
    .end local v7           #fromContactId:J
    :catch_1
    move-exception v5

    .line 282
    .restart local v5       #ex:Ljava/lang/IllegalStateException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ProcessPacketCallback: caught "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 309
    .end local v5           #ex:Ljava/lang/IllegalStateException;
    .end local v9           #subscribe:Lorg/jivesoftware/smack/packet/Presence;
    :cond_8
    sget-object v13, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v10, v13, :cond_1

    .line 317
    sget-boolean v13, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v13, :cond_9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "got presence UNSUBSCRIBED from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 337
    :cond_9
    new-instance v11, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v13, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v11, v13}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 338
    .local v11, unsubscribe:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 340
    :try_start_2
    invoke-virtual {v4, v11}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 341
    :catch_2
    move-exception v5

    .line 342
    .restart local v5       #ex:Ljava/lang/IllegalStateException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ProcessPacketCallback: caught "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateSelectionArgs(Ljava/lang/String;J)V
    .locals 3
    .parameter "username"
    .parameter "accountId"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mSelectionArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 117
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mSelectionArgs:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 118
    return-void
.end method


# virtual methods
.method public acceptRequestForUser(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "accountId"
    .parameter "username"
    .parameter "nickname"
    .parameter "groups"

    .prologue
    .line 190
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accept subscription request from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 193
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->removeSubscriptionRequestFromUser(Ljava/lang/String;J)V

    .line 201
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p3, p4, p5, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->createContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 204
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 205
    .local v1, response:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 208
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 211
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acceptRequestForUser caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declineRequestForUser(JLjava/lang/String;)V
    .locals 5
    .parameter "accountId"
    .parameter "user"

    .prologue
    .line 216
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decline subscription request from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 219
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->removeSubscriptionRequestFromUser(Ljava/lang/String;J)V

    .line 221
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 222
    .local v1, response:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 228
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "declineRequestForUser caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method init(Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;Landroid/os/Handler;)V
    .locals 0
    .parameter "resolver"
    .parameter "mc"
    .parameter "handler"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    .line 67
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    .line 68
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->computeWhereClause()V

    .line 69
    return-void
.end method

.method initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 4
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mSubscribeListener:Lorg/jivesoftware/smack/PacketListener;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mSubscribeListener:Lorg/jivesoftware/smack/PacketListener;

    .line 94
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnectionAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;

    move-result-object v0

    .line 96
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 98
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/BatchPresence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mBatchPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mSubscribeListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mSubscribeListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mBatchPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 104
    return-void
.end method

.method public notifyInvitationViaStatusNotifier(Ljava/lang/String;J)V
    .locals 8
    .parameter "user"
    .parameter "account"

    .prologue
    .line 355
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyNewSubscriptionRequest ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") call notifier"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v7

    .line 358
    .local v7, service:Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 359
    .local v6, resource:Landroid/content/res/Resources;
    const v1, 0x7f080059

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v6, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    .line 362
    .local v0, notifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v5

    move-object v1, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notifySubscriptionRequest(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 364
    return-void
.end method

.method receivedSubscriptionRequestFromContact(Ljava/lang/String;J)V
    .locals 17
    .parameter "username"
    .parameter "accountId"

    .prologue
    .line 121
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receivedSubscriptionRequestFromContact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-direct/range {p0 .. p3}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->updateSelectionArgs(Ljava/lang/String;J)V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->CONTACT_SUBSCRIPTION_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mWhereClause:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mSelectionArgs:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 131
    .local v12, c:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 132
    .local v13, exist:Z
    const/4 v15, 0x0

    .line 133
    .local v15, subscriptionStatus:I
    const/16 v16, 0x0

    .line 135
    .local v16, subscriptionType:I
    if-eqz v12, :cond_2

    .line 137
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    const/4 v13, 0x1

    .line 139
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 140
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    .line 143
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_2
    const/4 v14, 0x1

    .line 149
    .local v14, notify:Z
    if-nez v13, :cond_5

    .line 150
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to contacts db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 153
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x5

    move-wide/from16 v3, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v11}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->addContact(Landroid/content/ContentResolver;JJLjava/lang/String;Ljava/lang/String;III)Landroid/net/Uri;

    .line 178
    :goto_0
    if-eqz v14, :cond_4

    .line 179
    invoke-direct/range {p0 .. p3}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->notifyNewSubscriptionRequest(Ljava/lang/String;J)V

    .line 181
    :cond_4
    return-void

    .line 143
    .end local v14           #notify:Z
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 162
    .restart local v14       #notify:Z
    :cond_5
    const/4 v2, 0x1

    if-ne v2, v15, :cond_7

    const/4 v2, 0x5

    move/from16 v0, v16

    if-ne v2, v0, :cond_7

    .line 164
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_6

    const-string v2, "receivedSubscriptionRequestFromContact: old invitation"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 165
    :cond_6
    const/4 v14, 0x0

    goto :goto_0

    .line 167
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x5

    move-wide/from16 v3, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v11}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->updateContact(Landroid/content/ContentResolver;JJLjava/lang/String;Ljava/lang/String;III)I

    goto :goto_0
.end method

.method removeSubscriptionRequestFromUser(Ljava/lang/String;J)V
    .locals 1
    .parameter "username"
    .parameter "accountId"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p2, p3, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->deleteContact(Landroid/content/ContentResolver;JLjava/lang/String;)I

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->notifySubscriptionRequestRemoved(Ljava/lang/String;J)V

    .line 186
    return-void
.end method
