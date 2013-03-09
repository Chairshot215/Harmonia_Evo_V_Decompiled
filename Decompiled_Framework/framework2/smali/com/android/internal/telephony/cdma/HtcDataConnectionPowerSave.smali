.class public Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;
.super Landroid/os/Handler;
.source "HtcDataConnectionPowerSave.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$1;,
        Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;,
        Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;
    }
.end annotation


# static fields
.field private static final ALARM_INTENT_EXTRA_FOR_CONNECTION:Ljava/lang/String; = "Connection"

.field private static final ALARM_INTENT_EXTRA_INDEX:Ljava/lang/String; = "Index"

.field private static final EVENT_CHARGING_CHANGE:I = 0x3

.field private static final EVENT_COUNT_DOWN_REACHED:I = 0x2

.field private static final EVENT_SCREEN_STATUS_CHANGE:I = 0x1

.field private static final TAG_Prefix:Ljava/lang/String; = "PowSv"


# instance fields
.field private mAlarmIntentName:Ljava/lang/String;

.field private mChargerIsOn:Z

.field private mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

.field private mContext:Landroid/content/Context;

.field private mDataConnectionIsOn:Z

.field private mFunctionPaused:Z

.field private mLogTag:Ljava/lang/String;

.field private mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

.field private mOwnerName:Ljava/lang/String;

.field private mPowerSavingCountingDownConnectionOn:Z

.field private mPowerSavingCountingDownIndex:I

.field private mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

.field private mPowerSavingSupportConnectingPeriod:Z

.field private mPowerSavingWaitingForConnectingMode:Z

.field private mScreenIsOn:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    iput-object p4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mAlarmIntentName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->None:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    return-void
.end method

.method private cancelCountingDown()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingWaitingForConnectingMode:Z

    :cond_0
    return-void
.end method

.method private getPowerSavingSetting()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    invoke-interface {v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;->htcDataConnectionPowerSave_SettingOn()Z

    move-result v0

    :cond_0
    return v0
.end method

.method private startCountingDown(Ljava/lang/Boolean;Z)Z
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    :goto_0
    return v4

    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mAlarmIntentName:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "Connection"

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    const-string v5, "Index"

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mContext:Landroid/content/Context;

    const/high16 v6, 0x800

    invoke-static {v5, v4, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    :goto_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingWaitingForConnectingMode:Z

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    if-eqz v4, :cond_2

    const-wide/32 v1, 0x493e0

    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v1

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    goto :goto_1

    :cond_2
    const-wide/32 v1, 0x1b7740

    goto :goto_2

    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    if-eqz v4, :cond_4

    const-wide/32 v1, 0x493e0

    goto :goto_2

    :cond_4
    const-wide/32 v1, 0x1b7740

    goto :goto_2
.end method

.method private timeoutCountingDown(Landroid/content/Intent;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "Connection"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] get unknown timeout - conn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v6, "Connection"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v6, "Index"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    if-eq v2, v6, :cond_3

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PowSv["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", waiting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pending intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    if-nez v8, :cond_2

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->getPowerSavingSetting()Z

    move-result v1

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingSupportConnectingPeriod:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingWaitingForConnectingMode:Z

    if-eqz v6, :cond_7

    move v3, v4

    :goto_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingWaitingForConnectingMode:Z

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    if-nez v6, :cond_4

    if-nez v1, :cond_9

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->InternalOnly:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-ne v4, v5, :cond_8

    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;->htcDataConnectionPowerSave_RequestConnection(Z)V

    :cond_6
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :cond_7
    move v3, v5

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] didn\'t reconnect when timeout - conn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_d

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v7, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ExternalDisconnect:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    if-eqz v6, :cond_a

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    if-nez v0, :cond_b

    move v6, v4

    :goto_4
    invoke-interface {v7, v6}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;->htcDataConnectionPowerSave_RequestConnection(Z)V

    :cond_a
    new-instance v6, Ljava/lang/Boolean;

    if-nez v0, :cond_c

    :goto_5
    invoke-direct {v6, v4}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v4, 0x1

    invoke-direct {p0, v6, v4}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] countdown retry conn - for="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_b
    move v6, v5

    goto :goto_4

    :cond_c
    move v4, v5

    goto :goto_5

    :cond_d
    if-eqz v0, :cond_10

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->None:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-eq v4, v5, :cond_e

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;->htcDataConnectionPowerSave_RequestConnection(Z)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] countdown disc - request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] didn\'t disc when timeout - request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_f
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] countdown conn - request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_10
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] countdown disc - request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_11
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->InternalOnly:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-eq v4, v5, :cond_12

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-ne v4, v5, :cond_13

    :cond_12
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;->htcDataConnectionPowerSave_RequestConnection(Z)V

    goto/16 :goto_3

    :cond_13
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] didn\'t conn when timeout - request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method

.method private updateChageState(ZZZ)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    if-eqz v4, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    iput-boolean p3, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    if-eqz v4, :cond_4

    :cond_1
    move v0, v3

    :goto_1
    if-ne v1, v0, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowSv["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] scr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", crg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fun="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->InternalOnly:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-eq v2, v4, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-ne v2, v4, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;->htcDataConnectionPowerSave_RequestConnection(Z)V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->getPowerSavingSetting()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowSv["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] didn\'t reconnect when turn on - conn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->getPowerSavingSetting()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ExternalDisconnect:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-eq v3, v4, :cond_a

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowSv["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] countdown  - conn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowSv["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] didn\'t countdown when turn off - request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowSv["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] didn\'t countdown when turn off - conn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V

    goto/16 :goto_2
.end method

.method private updateChargingStatus(Ljava/lang/Boolean;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->updateChageState(ZZZ)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateScreenStatus(Ljava/lang/Boolean;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->updateChageState(ZZZ)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public connectiongPeriodSupport(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingSupportConnectingPeriod:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingSupportConnectingPeriod:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingSupportConnectingPeriod:Z

    if-eqz v0, :cond_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disablePowerSaveMode(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->updateChageState(ZZZ)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 2

    const-string v0, "PowSv"

    const-string v1, "HtcDataConnectionPowerSave finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getControlledState()Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/Boolean;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v1

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " HtcDataConnectionPowerSave drop event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->updateScreenStatus(Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->timeoutCountingDown(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->updateChargingStatus(Ljava/lang/Boolean;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBatteryChangeIntent(Z)V
    .locals 2

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConnectFailOrConnectionBreak()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingSupportConnectingPeriod:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->getPowerSavingSetting()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] countdown conn when try - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] clear & countdown conn when try - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] countdown conn during try - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onConnectRequest(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$1;->$SwitchMap$com$android$internal$telephony$cdma$HtcDataConnectionPowerSave$ConnectionRequestState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] countdown stop - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit p0

    return-void

    :pswitch_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->InternalOnly:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onConnected()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->None:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->InternalOnly:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->getPowerSavingSetting()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] countdown disc when conn - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingWaitingForConnectingMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] countdown disc when conn dup - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] clear & countdown disc when conn - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onDisconnectRequest(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$1;->$SwitchMap$com$android$internal$telephony$cdma$HtcDataConnectionPowerSave$ConnectionRequestState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->getPowerSavingSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] countdown conn when request - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :pswitch_0
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ExternalDisconnect:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    if-eqz p1, :cond_0

    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ExternalDisconnect:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ExternalDisconnect:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] countdown conn when request - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", counting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", waiting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingWaitingForConnectingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onReceiveAlarmTimeoutIntent(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onScreenStatusChangeIntent(Z)V
    .locals 2

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
