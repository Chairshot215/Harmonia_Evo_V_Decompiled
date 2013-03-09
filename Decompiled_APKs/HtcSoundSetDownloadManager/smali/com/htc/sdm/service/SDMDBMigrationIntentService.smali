.class public Lcom/htc/sdm/service/SDMDBMigrationIntentService;
.super Landroid/app/IntentService;
.source "SDMDBMigrationIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;
    }
.end annotation


# static fields
.field public static final ID_UPDATE_REQUEST:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_REQUEST"

.field public static final ID_UPDATE_RESPONSE:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_RESPONSE"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SDMDBMigrationIntentService] "

.field public static final UPGRADE_COMPLETE_INTENT:Ljava/lang/String; = "com.htc.providers.media.DB_UPGRADE_COMPLETE"


# instance fields
.field private alarmSize:I

.field mContext:Landroid/content/Context;

.field private m_UpdateRingtoneTitle:Ljava/lang/Thread;

.field private notificationSize:I

.field private ringtoneSize:I

.field private settingSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string v0, "SDMDBIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    iput v1, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->ringtoneSize:I

    .line 31
    iput v1, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->notificationSize:I

    .line 32
    iput v1, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->alarmSize:I

    .line 33
    iput v1, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->settingSize:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->m_UpdateRingtoneTitle:Ljava/lang/Thread;

    .line 39
    iput-object p0, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$002(Lcom/htc/sdm/service/SDMDBMigrationIntentService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->m_UpdateRingtoneTitle:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v6, "com.htc.providers.media.ID_UPDATE_RESPONSE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    const-string v6, "ringtoneSize"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->ringtoneSize:I

    .line 56
    const-string v6, "notificationSize"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->notificationSize:I

    .line 57
    const-string v6, "alarmSize"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->alarmSize:I

    .line 58
    const-string v6, "settingSize"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->settingSize:I

    .line 62
    const-string v6, "media_ids_res"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 63
    .local v5, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v6, "old_uris"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 64
    .local v3, mUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 65
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri;

    .line 67
    .local v4, tableUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 68
    iget v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->ringtoneSize:I

    if-lt v2, v6, :cond_3

    iget v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->notificationSize:I

    if-ge v2, v6, :cond_3

    .line 70
    sget-object v4, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION:Landroid/net/Uri;

    .line 79
    :cond_2
    :goto_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-static {v1, v4, v6, v7}, Lcom/htc/sdm/util/SDMDBUtil;->replaceUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    :cond_3
    iget v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->notificationSize:I

    if-lt v2, v6, :cond_4

    iget v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->alarmSize:I

    if-ge v2, v6, :cond_4

    .line 73
    sget-object v4, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM:Landroid/net/Uri;

    goto :goto_2

    .line 74
    :cond_4
    iget v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->alarmSize:I

    if-lt v2, v6, :cond_2

    .line 76
    sget-object v4, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SETTING:Landroid/net/Uri;

    goto :goto_2

    .line 83
    :cond_5
    iget-object v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/sdm/util/SDMDBUtil;->updateMediaFlag(Landroid/content/Context;)V

    .line 87
    iget-object v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySoundSet(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 93
    iget-object v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/sdm/util/SDMUtil;->SetDBMigReady(Landroid/content/Context;)V

    .line 94
    iget-object v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->m_UpdateRingtoneTitle:Ljava/lang/Thread;

    if-nez v6, :cond_0

    .line 96
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;

    iget-object v8, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->mContext:Landroid/content/Context;

    invoke-direct {v7, p0, v8}, Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;-><init>(Lcom/htc/sdm/service/SDMDBMigrationIntentService;Landroid/content/Context;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->m_UpdateRingtoneTitle:Ljava/lang/Thread;

    .line 97
    iget-object v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->m_UpdateRingtoneTitle:Ljava/lang/Thread;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 98
    iget-object v6, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->m_UpdateRingtoneTitle:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method
