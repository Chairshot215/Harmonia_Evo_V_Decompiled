.class public Lcom/android/phone/CallTime;
.super Landroid/os/Handler;
.source "CallTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallTime$PeriodicTimerCallback;,
        Lcom/android/phone/CallTime$OnTickListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/CallTime"

.field static final PROFILE:Z = true

.field private static final PROFILE_STATE_NONE:I = 0x0

.field private static final PROFILE_STATE_READY:I = 0x1

.field private static final PROFILE_STATE_RUNNING:I = 0x2

.field private static sProfileState:I


# instance fields
.field private mCall:Lcom/android/internal/telephony/Call;

.field private mInterval:J

.field private mLastReportedTime:J

.field private mListener:Lcom/android/phone/CallTime$OnTickListener;

.field private mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

.field private mTimerRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/CallTime$OnTickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    .line 61
    new-instance v0, Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime$PeriodicTimerCallback;-><init>(Lcom/android/phone/CallTime;)V

    iput-object v0, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/CallTime;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    return p1
.end method

.method static getCallDuration(Lcom/android/internal/telephony/Call;)J
    .locals 9
    .parameter "call"

    .prologue
    .line 153
    const-wide/16 v3, 0x0

    .line 154
    .local v3, duration:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, connections:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 158
    .local v2, count:I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_1

    .line 159
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 162
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v3

    .line 176
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    return-wide v3

    .line 164
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 165
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 168
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .line 169
    .local v6, t:J
    cmp-long v8, v6, v3

    if-lez v8, :cond_2

    .line 170
    move-wide v3, v6

    .line 164
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 180
    const-string v0, "PHONE/CallTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CallTime] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method static setTraceReady()V
    .locals 2

    .prologue
    .line 199
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    .line 201
    const-string v0, "trace ready..."

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current trace state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/CallTime;->sProfileState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateElapsedTime(Lcom/android/internal/telephony/Call;)V
    .locals 9
    .parameter "call"

    .prologue
    const-wide/16 v7, 0x3e8

    .line 124
    iget-object v4, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    if-eqz v4, :cond_0

    .line 126
    sget-boolean v4, Lcom/android/phone/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v4, :cond_1

    .line 128
    const/4 v1, 0x0

    .line 131
    .local v1, c:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    if-eqz v1, :cond_1

    .line 139
    iget-object v4, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v5

    div-long/2addr v5, v7

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isLineFwim()Z

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Lcom/android/phone/CallTime$OnTickListener;->onTickForCallTimeElapsed(JZ)V

    .line 146
    .end local v1           #c:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    :goto_1
    return-void

    .line 143
    :cond_1
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 144
    .local v2, duration:J
    iget-object v4, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    div-long v5, v2, v7

    invoke-interface {v4, v5, v6}, Lcom/android/phone/CallTime$OnTickListener;->onTickForCallTimeElapsed(J)V

    goto :goto_1

    .line 133
    .end local v2           #duration:J
    .restart local v1       #c:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method cancelTimer()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallTime;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 120
    return-void
.end method

.method destroyTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    const-string v0, "PHONE/CallTime"

    const-string v1, "destroyTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 264
    iput-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    .line 265
    iput-object v2, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    .line 266
    return-void
.end method

.method isTraceReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 208
    sget v1, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTraceRunning()Z
    .locals 2

    .prologue
    .line 212
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method periodicUpdateTimer()V
    .locals 9

    .prologue
    .line 86
    iget-boolean v5, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    if-nez v5, :cond_2

    .line 87
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 90
    .local v2, now:J
    iget-wide v5, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    iget-wide v7, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long v0, v5, v7

    .line 92
    .local v0, nextReport:J
    :goto_0
    cmp-long v5, v2, v0

    if-ltz v5, :cond_0

    .line 93
    iget-wide v5, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long/2addr v0, v5

    goto :goto_0

    .line 97
    :cond_0
    iget-object v5, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/phone/CallTime;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 98
    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    .line 100
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    if-eqz v5, :cond_1

    .line 101
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 103
    .local v4, state:Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    .line 104
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v5}, Lcom/android/phone/CallTime;->updateElapsedTime(Lcom/android/internal/telephony/Call;)V

    .line 108
    .end local v4           #state:Lcom/android/internal/telephony/Call$State;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->isTraceReady()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->startTrace()V

    .line 114
    .end local v0           #nextReport:J
    .end local v2           #now:J
    :cond_2
    return-void
.end method

.method reset()V
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/CallTime;->mInterval:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    .line 83
    return-void
.end method

.method setActiveCallMode(Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    .line 77
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mInterval:J

    .line 78
    return-void
.end method

.method startTrace()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 216
    sget v4, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_0
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 220
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const-string v7, "phoneTrace"

    invoke-virtual {v4, v7, v6}, Lcom/android/phone/PhoneApp;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 221
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 224
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "callstate"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, baseName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".data"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, dataFile:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".key"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, keyFile:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 230
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 233
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v5, :cond_2

    .line 235
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 238
    :cond_2
    const/4 v4, 0x2

    sput v4, Lcom/android/phone/CallTime;->sProfileState:I

    .line 239
    const-string v4, "startTrace"

    invoke-static {v4}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 240
    const/high16 v4, 0x80

    invoke-static {v0, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 242
    .end local v0           #baseName:Ljava/lang/String;
    .end local v1           #dataFile:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #keyFile:Ljava/lang/String;
    :cond_3
    return-void

    :cond_4
    move v4, v6

    .line 216
    goto/16 :goto_0
.end method

.method stopTrace()V
    .locals 2

    .prologue
    .line 246
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 247
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    .line 248
    const-string v0, "stopTrace"

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 252
    :cond_0
    return-void
.end method
