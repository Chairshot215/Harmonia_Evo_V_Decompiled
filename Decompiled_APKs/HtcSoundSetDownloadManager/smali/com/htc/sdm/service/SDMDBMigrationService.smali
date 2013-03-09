.class public Lcom/htc/sdm/service/SDMDBMigrationService;
.super Landroid/app/Service;
.source "SDMDBMigrationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdm/service/SDMDBMigrationService$1;,
        Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;
    }
.end annotation


# static fields
.field public static final ID_UPDATE_REQUEST:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_REQUEST"

.field public static final ID_UPDATE_RESPONSE:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_RESPONSE"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field public static final MEDIA_TYPE_AUDIO:I = 0x2

.field private static final PREFIX:Ljava/lang/String; = "[SDMDBMigrationService] "

.field public static final UPGRADE_COMPLETE_INTENT:Ljava/lang/String; = "com.htc.providers.media.DB_UPGRADE_COMPLETE"


# instance fields
.field private alarmSize:I

.field private mContext:Landroid/content/Context;

.field private mReceiver:Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;

.field private mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private notificationSize:I

.field private ringtoneSize:I

.field private settingSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mContext:Landroid/content/Context;

    .line 29
    iput-object v1, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mReceiver:Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;

    .line 31
    iput v0, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->ringtoneSize:I

    .line 32
    iput v0, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->notificationSize:I

    .line 33
    iput v0, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->alarmSize:I

    .line 34
    iput v0, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->settingSize:I

    .line 111
    return-void
.end method

.method static synthetic access$100(Lcom/htc/sdm/service/SDMDBMigrationService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->ringtoneSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/sdm/service/SDMDBMigrationService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->notificationSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sdm/service/SDMDBMigrationService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->alarmSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sdm/service/SDMDBMigrationService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->settingSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/sdm/service/SDMDBMigrationService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method private sendRequest()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.providers.media.ID_UPDATE_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "media_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-string v1, "media_ids_req"

    iget-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 106
    const-string v1, "category"

    const-string v2, "com.htc.sdm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Lcom/htc/sdm/service/SDMDBMigrationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method private setupBroadcastReceivers()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.providers.media.ID_UPDATE_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "com.htc.sdm"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 90
    new-instance v1, Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;-><init>(Lcom/htc/sdm/service/SDMDBMigrationService;Lcom/htc/sdm/service/SDMDBMigrationService$1;)V

    iput-object v1, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mReceiver:Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;

    .line 91
    iget-object v1, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mReceiver:Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 79
    iget-object v0, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mReceiver:Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mReceiver:Lcom/htc/sdm/service/SDMDBMigrationService$intentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMDBMigrationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mContext:Landroid/content/Context;

    .line 48
    iget-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/sdm/util/SDMUtil;->IsDBMigReady(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/htc/sdm/service/SDMDBMigrationService;->setupBroadcastReceivers()V

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mUris:Ljava/util/ArrayList;

    .line 53
    iget-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mUris:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lcom/htc/sdm/util/SDMDBUtil;->getUris(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 54
    iget-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->ringtoneSize:I

    .line 55
    iget-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mUris:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lcom/htc/sdm/util/SDMDBUtil;->getUris(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 56
    iget-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->notificationSize:I

    .line 57
    iget-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mUris:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lcom/htc/sdm/util/SDMDBUtil;->getUris(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 58
    iget-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->alarmSize:I

    .line 59
    iget-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SETTING:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mUris:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lcom/htc/sdm/util/SDMDBUtil;->getUris(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 60
    iget-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->settingSize:I

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/htc/sdm/service/SDMDBMigrationService;->sendRequest()V

    .line 71
    .end local v0           #i:I
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2

    .line 68
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.sdm.service.SDMDBMigrationService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, sIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/sdm/service/SDMDBMigrationService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method
