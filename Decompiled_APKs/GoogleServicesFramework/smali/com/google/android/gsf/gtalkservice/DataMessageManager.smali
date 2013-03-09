.class public Lcom/google/android/gsf/gtalkservice/DataMessageManager;
.super Ljava/lang/Object;
.source "DataMessageManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;,
        Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;
    }
.end annotation


# static fields
.field private static final RESERVED_INTENT_KEYS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

.field private mHandler:Landroid/os/Handler;

.field private mLockObject:Ljava/lang/Object;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->RESERVED_INTENT_KEYS:Ljava/util/HashSet;

    .line 60
    sget-object v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->RESERVED_INTENT_KEYS:Ljava/util/HashSet;

    const-string v1, "from"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mLockObject:Ljava/lang/Object;

    .line 127
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/DataMessageManager;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->reportNoReceiverError(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 416
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataMsgMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method

.method private parseDataMessageIntent(Lorg/jivesoftware/smack/packet/DataMessage;)Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;
    .locals 14
    .parameter "dataMsg"

    .prologue
    const/4 v13, 0x2

    .line 290
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, from:Ljava/lang/String;
    const-string v10, "GTalkService"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseDataMessageIntent: from="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 294
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getCategory()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, category:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 296
    const-string v10, "GTalkService"

    const-string v11, "[DataMsgMgr] found msg w/o category, dropping"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v10, 0x0

    .line 393
    :goto_0
    return-object v10

    .line 303
    :cond_1
    const-string v10, "GSYNC_TICKLE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 304
    const-string v1, "com.google.android.gsf.subscribedfeeds"

    .line 316
    :cond_2
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v10, :cond_3

    .line 317
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setLastDataMessageReceived()V

    .line 320
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getAppDataIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 325
    .local v4, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smack/packet/DataMessage$AppData;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 326
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    .line 327
    .local v0, appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 330
    .local v9, value:Ljava/lang/String;
    sget-object v10, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->RESERVED_INTENT_KEYS:Ljava/util/HashSet;

    invoke-virtual {v10, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "GOOGLE."

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 331
    :cond_4
    const-string v10, "GTalkService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DataMsgMgr] parseDataMessageIntent: not including app data -- key is reserved: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 337
    :cond_5
    const-string v10, "GTalkService"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 338
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse intent data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 340
    :cond_6
    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 344
    .end local v0           #appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    .end local v5           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_7
    const-string v10, "com.google.android.gsf"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "google.com"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 350
    const-string v10, "registration_id"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 353
    .local v7, registration_id:Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 355
    const-string v10, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {v3, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 357
    const-string v10, "app"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    .end local v7           #registration_id:Ljava/lang/String;
    :cond_8
    const-string v10, "from"

    invoke-virtual {v3, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v10, "GTalkService"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse intent, category="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 367
    :cond_9
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getToken()Ljava/lang/String;

    move-result-object v8

    .line 368
    .local v8, token:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 370
    const-string v10, "collapse_key"

    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    :cond_a
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getPermission()Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, permission:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 378
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".permission.C2D_MESSAGE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 386
    :cond_b
    :goto_2
    const-string v10, "INSTALL_ASSET"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "REMOVE_ASSET"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "DECLINE_ASSET"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "UPDATES_AVAILABLE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "SERVER_NOTIFICATION"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 391
    :cond_c
    const/4 v6, 0x0

    .line 393
    :cond_d
    new-instance v10, Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;

    invoke-direct {v10, v3, v6}, Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 380
    :cond_e
    const-string v10, "NONE"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 381
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private processSendDataMessageFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "error"
    .parameter "appPackage"

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.ERROR"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v2, "error_type"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".permission.C2D_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, permission:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private reportNoReceiverError(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .parameter "intent"
    .parameter "from"

    .prologue
    const/4 v6, 0x0

    .line 399
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 400
    .local v1, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    .local v0, app:Ljava/lang/String;
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiver package not found, unregister application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sender "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v2, unregIntent:Landroid/content/Intent;
    const-string v3, "app"

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v4, v6, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 410
    const-string v3, "app_gsf"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 413
    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 146
    monitor-exit v1

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public findReceiverForIntent(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 165
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 166
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 167
    .local v2, ts:J
    invoke-virtual {v0, p1, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v5, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findReceiverForIntent: queryBroadcastReceivers took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 174
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 178
    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "endpoint"
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    .line 130
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    .line 131
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mHandler:Landroid/os/Handler;

    .line 132
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .line 134
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 135
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "GOOGLE_C2DM"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 136
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 137
    return-void
.end method

.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 156
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initConnection for accountId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 161
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smack/XMPPConnection;->addDataMessageListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 162
    return-void
.end method

.method public processDataMessageIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 9
    .parameter "intent"
    .parameter "permission"
    .parameter "callbackReceiver"

    .prologue
    const/4 v6, 0x0

    .line 265
    if-nez p1, :cond_0

    .line 266
    const-string v0, "GTalkService"

    const-string v1, "parseDataMessageIntent() returned null intent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string v0, "GTalkService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 273
    .local v8, extras:Landroid/os/Bundle;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 278
    .end local v8           #extras:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->acquireWakeLock()V

    .line 280
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send ordered broadcast for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 281
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " with permission="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 9
    .parameter "packet"

    .prologue
    .line 249
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/DataMessage;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 250
    check-cast v0, Lorg/jivesoftware/smack/packet/DataMessage;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->parseDataMessageIntent(Lorg/jivesoftware/smack/packet/DataMessage;)Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;

    move-result-object v6

    .line 252
    .local v6, result:Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;
    if-eqz v6, :cond_1

    .line 253
    iget-object v7, v6, Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;->intent:Landroid/content/Intent;

    iget-object v8, v6, Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;->permission:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;

    iget-object v2, v6, Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;-><init>(Lcom/google/android/gsf/gtalkservice/DataMessageManager;Landroid/content/Intent;Ljava/lang/String;J)V

    invoke-virtual {p0, v7, v8, v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->processDataMessageIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 261
    .end local v6           #result:Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;
    :cond_0
    :goto_0
    return-void

    .line 257
    .restart local v6       #result:Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;
    :cond_1
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataMessageMgr] processPacket: cannot parse data message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public releaseWakeLock()V
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendDataMessageStanza(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    .line 187
    const-string v8, "use_rmq"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 188
    .local v7, useRmq:Z
    const-string v8, "use_rmq"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 190
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, appPackage:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 193
    const-string v8, "missing_package_name"

    invoke-direct {p0, v8, v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->processSendDataMessageFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isD2cmWhitelisted()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v8, v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isPackageNameWhitelisted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 201
    :cond_2
    const-string v8, "app"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 203
    const-string v8, "registration_id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, regId:Ljava/lang/String;
    const-string v8, "registration_id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 205
    if-nez v5, :cond_3

    .line 206
    const-string v8, "missing_reg_id"

    invoke-direct {p0, v8, v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->processSendDataMessageFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_3
    new-instance v6, Lorg/jivesoftware/smack/packet/DataMessage;

    invoke-direct {v6}, Lorg/jivesoftware/smack/packet/DataMessage;-><init>()V

    .line 212
    .local v6, stanza:Lorg/jivesoftware/smack/packet/DataMessage;
    const-string v8, "d2cm@google.com"

    invoke-virtual {v6, v8}, Lorg/jivesoftware/smack/packet/DataMessage;->setFrom(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v6, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setCategory(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v6, v5}, Lorg/jivesoftware/smack/packet/DataMessage;->setRegId(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 217
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_6

    .line 218
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 219
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 220
    .local v4, o:Ljava/lang/Object;
    if-eqz v4, :cond_4

    .line 221
    instance-of v8, v4, Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 222
    new-instance v8, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    check-cast v4, Ljava/lang/String;

    .end local v4           #o:Ljava/lang/Object;
    invoke-direct {v8, v3, v4}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lorg/jivesoftware/smack/packet/DataMessage;->addAppData(Lorg/jivesoftware/smack/packet/DataMessage$AppData;)V

    goto :goto_1

    .line 225
    .restart local v4       #o:Ljava/lang/Object;
    :cond_5
    const-string v8, "invalid_params"

    invoke-direct {p0, v8, v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->processSendDataMessageFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #o:Ljava/lang/Object;
    :cond_6
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v8

    if-nez v8, :cond_7

    .line 233
    const-string v8, "no_connection"

    invoke-direct {p0, v8, v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->processSendDataMessageFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_7
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setLastDataMessageSent()V

    goto/16 :goto_0
.end method
