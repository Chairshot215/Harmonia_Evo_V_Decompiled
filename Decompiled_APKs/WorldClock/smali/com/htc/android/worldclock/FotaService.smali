.class public Lcom/htc/android/worldclock/FotaService;
.super Landroid/app/Service;
.source "FotaService.java"

# interfaces
.implements Lcom/htc/android/worldclock/Alarms$AlarmSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/FotaService$1;,
        Lcom/htc/android/worldclock/FotaService$intentReceiver;
    }
.end annotation


# static fields
.field public static final ID_UPDATE_REQUEST:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_REQUEST"

.field public static final ID_UPDATE_RESPONSE:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_RESPONSE"

.field public static final MEDIA_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TYPE_IMAGE:I = 0x1

.field public static final MEDIA_TYPE_NONE:I = 0x0

.field public static final MEDIA_TYPE_PLAYLIST:I = 0x4

.field public static final MEDIA_TYPE_VIDEO:I = 0x3

.field public static final UPGRADE_COMPLETE_INTENT:Ljava/lang/String; = "com.htc.providers.media.DB_UPGRADE_COMPLETE"


# instance fields
.field private mIntentReceiver:Lcom/htc/android/worldclock/FotaService$intentReceiver;

.field mRequestUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mResponse:Z

.field mResponseUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/FotaService;->mIntentReceiver:Lcom/htc/android/worldclock/FotaService$intentReceiver;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/FotaService;->mRequestUriList:Ljava/util/ArrayList;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/FotaService;->mResponse:Z

    .line 103
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/FotaService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/android/worldclock/FotaService;->setNewTimerUri()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/FotaService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/android/worldclock/FotaService;->setNewAlarmUri()V

    return-void
.end method

.method private getOriginalAlarmUri()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/htc/android/worldclock/FotaService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/htc/android/worldclock/Alarms;->getAlarms(Landroid/content/ContentResolver;Lcom/htc/android/worldclock/Alarms$AlarmSettings;)V

    .line 132
    return-void
.end method

.method private getOriginalTimerUri()V
    .locals 4

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/FotaService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/PreferencesUtil;->getAlertSoundUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, uriString:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FotaService:handleTimerUri: original uriString = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 124
    if-eqz v1, :cond_0

    .line 125
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/htc/android/worldclock/FotaService;->mRequestUriList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method private setNewAlarmUri()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/FotaService;->mResponse:Z

    .line 149
    invoke-virtual {p0}, Lcom/htc/android/worldclock/FotaService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/htc/android/worldclock/Alarms;->getAlarms(Landroid/content/ContentResolver;Lcom/htc/android/worldclock/Alarms$AlarmSettings;)V

    .line 150
    return-void
.end method

.method private setNewTimerUri()V
    .locals 4

    .prologue
    .line 135
    iget-object v2, p0, Lcom/htc/android/worldclock/FotaService;->mResponseUriList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 136
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, uriString:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FotaService: upgrade uriString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 141
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/htc/android/worldclock/FotaService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlertSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    .end local v1           #uriString:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setupBroadcastReceivers()V
    .locals 3

    .prologue
    .line 92
    const-string v1, "FotaService: setupBroadcastReceivers"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/htc/android/worldclock/FotaService;->mIntentReceiver:Lcom/htc/android/worldclock/FotaService$intentReceiver;

    if-nez v1, :cond_0

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.providers.media.ID_UPDATE_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/htc/android/worldclock/FotaService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 98
    new-instance v1, Lcom/htc/android/worldclock/FotaService$intentReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/android/worldclock/FotaService$intentReceiver;-><init>(Lcom/htc/android/worldclock/FotaService;Lcom/htc/android/worldclock/FotaService$1;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/FotaService;->mIntentReceiver:Lcom/htc/android/worldclock/FotaService$intentReceiver;

    .line 99
    iget-object v1, p0, Lcom/htc/android/worldclock/FotaService;->mIntentReceiver:Lcom/htc/android/worldclock/FotaService$intentReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/worldclock/FotaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/android/worldclock/FotaService;->mIntentReceiver:Lcom/htc/android/worldclock/FotaService$intentReceiver;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/android/worldclock/FotaService;->mIntentReceiver:Lcom/htc/android/worldclock/FotaService$intentReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/FotaService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/FotaService;->mIntentReceiver:Lcom/htc/android/worldclock/FotaService$intentReceiver;

    .line 87
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 88
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x2

    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 50
    if-nez p1, :cond_0

    .line 51
    const-string v3, "get intent data fail"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/htc/android/worldclock/FotaService;->stopSelf()V

    .line 73
    :goto_0
    return v2

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/FotaService;->setupBroadcastReceivers()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "com.htc.providers.media.DB_UPGRADE_COMPLETE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    const-string v3, "FotaService: receive com.htc.providers.media.DB_UPGRADE_COMPLETE action"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 61
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v1, uriIntent:Landroid/content/Intent;
    const-string v3, "com.htc.providers.media.ID_UPDATE_REQUEST"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v3, "media_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    invoke-direct {p0}, Lcom/htc/android/worldclock/FotaService;->getOriginalTimerUri()V

    .line 66
    invoke-direct {p0}, Lcom/htc/android/worldclock/FotaService;->getOriginalAlarmUri()V

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FotaService: mRequestUriList.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/worldclock/FotaService;->mRequestUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 69
    const-string v2, "media_ids_req"

    iget-object v3, p0, Lcom/htc/android/worldclock/FotaService;->mRequestUriList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 70
    const-string v2, "category"

    invoke-virtual {p0}, Lcom/htc/android/worldclock/FotaService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/FotaService;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    .end local v1           #uriIntent:Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public reportAlarm(IZIIJLcom/htc/android/worldclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .parameter "idx"
    .parameter "enabled"
    .parameter "hour"
    .parameter "minutes"
    .parameter "alarmtime"
    .parameter "daysOfWeek"
    .parameter "vibrate"
    .parameter "message"
    .parameter "alert"
    .parameter "snoozed"

    .prologue
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FotaService:reportAlarm original alarm id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alert = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 155
    iget-boolean v1, p0, Lcom/htc/android/worldclock/FotaService;->mResponse:Z

    if-nez v1, :cond_2

    .line 156
    const/4 v12, 0x0

    .line 157
    .local v12, uri:Landroid/net/Uri;
    if-eqz p10, :cond_0

    .line 158
    invoke-static/range {p10 .. p10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/htc/android/worldclock/FotaService;->mRequestUriList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_1
    :goto_0
    return-void

    .line 162
    .end local v12           #uri:Landroid/net/Uri;
    :cond_2
    iget-object v1, p0, Lcom/htc/android/worldclock/FotaService;->mResponseUriList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 163
    .restart local v12       #uri:Landroid/net/Uri;
    if-eqz v12, :cond_1

    .line 164
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, uriString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FotaService: upgrade alarm id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uriString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 166
    const/4 v11, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v9, p9

    move/from16 v10, p11

    invoke-static/range {v1 .. v11}, Lcom/htc/android/worldclock/SetAlarm;->saveAlarm(Landroid/content/Context;IZIILcom/htc/android/worldclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
