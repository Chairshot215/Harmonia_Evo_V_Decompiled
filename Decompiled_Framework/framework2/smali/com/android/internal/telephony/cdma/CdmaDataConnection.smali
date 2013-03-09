.class public Lcom/android/internal/telephony/cdma/CdmaDataConnection;
.super Lcom/android/internal/telephony/DataConnection;
.source "CdmaDataConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field protected mActiveApnType:Ljava/lang/String;

.field protected mProfileId:I

.field protected mUseRuimCard:Z


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;ILcom/android/internal/telephony/RetryManager;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/RetryManager;)V

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mProfileId:I

    const-string v1, "default"

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mActiveApnType:Ljava/lang/String;

    const-string v1, "persist.radio.enableruim"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mUseRuimCard:Z

    return-void
.end method

.method public static ReInitialDataConnectionCounter()V
    .locals 2

    const-string v0, "CDMA"

    const-string v1, "mCount_cdma is been initial to 0 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mCountLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mCount_cdma:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static makeDataConnection(Lcom/android/internal/telephony/cdma/CDMAPhone;ILcom/android/internal/telephony/RetryManager;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 3

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mCountLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget v1, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mCount_cdma:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mCount_cdma:I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaDC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mCount_cdma:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;ILcom/android/internal/telephony/RetryManager;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->start()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Made "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    return-wide v0
.end method

.method protected isDnsOk([Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "0.0.0.0"

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "0.0.0.0"

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->isDnsCheckDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
    .locals 10

    const-wide/16 v1, -0x1

    const-string v0, "CdmaDataConnection Connecting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/ApnSetting;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mUseRuimCard:Z

    if-eqz v0, :cond_1

    const/4 v9, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mUseRuimCard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v5, v0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    :cond_0
    const v0, 0x40001

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    iput-object p1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getRadioTechnology(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "IP"

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/ApnSetting;

    iget v9, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    goto :goto_0
.end method

.method public setActiveApnType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mActiveApnType:Ljava/lang/String;

    return-void
.end method

.method public setProfileId(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mProfileId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " create="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFasilCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
