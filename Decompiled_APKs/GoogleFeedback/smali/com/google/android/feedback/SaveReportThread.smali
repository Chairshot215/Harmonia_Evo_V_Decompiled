.class public Lcom/google/android/feedback/SaveReportThread;
.super Ljava/lang/Thread;
.source "SaveReportThread.java"


# static fields
.field private static final mCompareByDate:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Lcom/google/android/feedback/FeedbackActivity;

.field private final mReport:Lcom/google/android/feedback/ExtendedErrorReport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/google/android/feedback/SaveReportThread$1;

    invoke-direct {v0}, Lcom/google/android/feedback/SaveReportThread$1;-><init>()V

    sput-object v0, Lcom/google/android/feedback/SaveReportThread;->mCompareByDate:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/feedback/FeedbackActivity;Lcom/google/android/feedback/ExtendedErrorReport;)V
    .locals 0
    .parameter "context"
    .parameter "report"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/feedback/SaveReportThread;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    .line 41
    iput-object p2, p0, Lcom/google/android/feedback/SaveReportThread;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    .line 42
    return-void
.end method

.method private static createAndroidBugReportProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "report"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->ANDROID_BUG_REPORT:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 133
    .local v0, result:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createCommonDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 134
    const/4 v1, 0x2

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createAndroidDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 135
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->type:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 136
    return-object v0
.end method

.method private static createAndroidDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4
    .parameter "report"

    .prologue
    .line 155
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->ANDROID_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 156
    .local v0, androidData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x1

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createSystemDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 157
    const/4 v2, 0x2

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createPackageDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 158
    const/4 v2, 0x3

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createBuildDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 159
    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_1

    .line 160
    const/4 v2, 0x4

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createCrashDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 171
    :goto_0
    iget v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->type:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 172
    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createUserInitiatedFeedbackDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 173
    .local v1, userInitiatedFeedbackProto:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v1, :cond_0

    .line 174
    const/16 v2, 0x9

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createUserInitiatedFeedbackDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 178
    .end local v1           #userInitiatedFeedbackProto:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    return-object v0

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    if-eqz v2, :cond_2

    .line 162
    const/4 v2, 0x5

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createAnrDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    if-eqz v2, :cond_3

    .line 164
    const/4 v2, 0x6

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createBatteryDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 165
    :cond_3
    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    if-eqz v2, :cond_4

    .line 166
    const/4 v2, 0x7

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createRunningServiceDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 169
    :cond_4
    const-string v2, "SaveReportThread"

    const-string v3, "unknown error report type"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static createAnrDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "report"

    .prologue
    .line 302
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->ANR_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 303
    .local v0, anrData:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v1, p0, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 304
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 306
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 307
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/google/android/feedback/ExtendedErrorReport;->anrStackTraces:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 309
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->anrStackTraces:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 311
    :cond_1
    return-object v0
.end method

.method private static createBatteryDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4
    .parameter "report"

    .prologue
    .line 318
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->BATTERY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 319
    .local v0, batteryData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    iget v2, v2, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 320
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    iget-wide v2, v2, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 321
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 322
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 323
    return-object v0
.end method

.method private static createBuildDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "report"

    .prologue
    .line 260
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->BUILD_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 261
    .local v0, buildData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->device:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 262
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->buildId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 263
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->buildType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 264
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 265
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->product:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 266
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->sdk_int:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 267
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->release:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 268
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->incremental:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 269
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->codename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 270
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->board:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 271
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 272
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->buildFingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 273
    return-object v0
.end method

.method private static createCommonDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "report"

    .prologue
    .line 143
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->COMMON_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 144
    .local v0, commonData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/google/android/feedback/ExtendedErrorReport;->account:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->account:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 148
    :cond_0
    return-object v0
.end method

.method private static createCrashDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4
    .parameter "report"

    .prologue
    const/4 v3, 0x3

    .line 280
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->CRASH_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 281
    .local v0, crashData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 283
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 291
    :goto_0
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 292
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 293
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 294
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 295
    return-object v0

    .line 289
    :cond_0
    const-string v1, "unknown"

    invoke-virtual {v0, v3, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static createPackageDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "report"

    .prologue
    .line 246
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->PACKAGE_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 247
    .local v0, packageData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 248
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 249
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 250
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->packageVersion:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 251
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->packageVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 252
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->systemApp:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 253
    return-object v0
.end method

.method private static createRunningServiceDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4
    .parameter "report"

    .prologue
    .line 327
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->RUNNING_SERVICE_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 328
    .local v0, runningServiceData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    iget-wide v2, v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 330
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 332
    return-object v0
.end method

.method private static createSystemDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 7
    .parameter "report"

    .prologue
    .line 220
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->SYSTEM_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 221
    .local v3, systemData:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v4, p0, Lcom/google/android/feedback/ExtendedErrorReport;->eventLog:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 222
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/android/feedback/ExtendedErrorReport;->eventLog:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 224
    :cond_0
    iget-object v4, p0, Lcom/google/android/feedback/ExtendedErrorReport;->systemLog:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 225
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/feedback/ExtendedErrorReport;->systemLog:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 227
    :cond_1
    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/google/android/feedback/ExtendedErrorReport;->time:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 228
    iget-object v4, p0, Lcom/google/android/feedback/ExtendedErrorReport;->installedPackages:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 229
    iget-object v4, p0, Lcom/google/android/feedback/ExtendedErrorReport;->installedPackages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    .local v2, p:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_0

    .line 233
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/google/android/feedback/ExtendedErrorReport;->runningApplications:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 234
    iget-object v4, p0, Lcom/google/android/feedback/ExtendedErrorReport;->runningApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    .local v0, a:Ljava/lang/String;
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_1

    .line 238
    .end local v0           #a:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v4, 0x6

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createTelephonyDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 239
    return-object v3
.end method

.method private static createTelephonyDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "report"

    .prologue
    .line 208
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->TELEPHONY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 209
    .local v0, telephonyData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->phoneType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 210
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->networkType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 211
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->networkName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 212
    return-object v0
.end method

.method private static createUserInitiatedFeedbackDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 6
    .parameter "report"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 186
    iget-object v3, p0, Lcom/google/android/feedback/ExtendedErrorReport;->screenshot:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 187
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->USER_INITIATED_FEEDBACK_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 189
    .local v2, userInitiatedFeedbackData:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->IMAGE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 190
    .local v0, screenshotData:Lcom/google/common/io/protocol/ProtoBuf;
    const-string v3, "image/jpeg"

    invoke-virtual {v0, v4, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 191
    iget-object v3, p0, Lcom/google/android/feedback/ExtendedErrorReport;->screenshot:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 192
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->DIMENSIONS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 193
    .local v1, screenshotDimensions:Lcom/google/common/io/protocol/ProtoBuf;
    iget v3, p0, Lcom/google/android/feedback/ExtendedErrorReport;->screenshotHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setFloat(IF)V

    .line 194
    iget v3, p0, Lcom/google/android/feedback/ExtendedErrorReport;->screenshotWidth:I

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setFloat(IF)V

    .line 195
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 196
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 200
    .end local v0           #screenshotData:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v1           #screenshotDimensions:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v2           #userInitiatedFeedbackData:Lcom/google/common/io/protocol/ProtoBuf;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized deleteOldest(Ljava/io/File;I)V
    .locals 5
    .parameter "dataDir"
    .parameter "max"

    .prologue
    .line 117
    const-class v4, Lcom/google/android/feedback/SaveReportThread;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 118
    .local v1, dataFiles:[Ljava/io/File;
    array-length v3, v1

    sub-int v0, v3, p1

    .line 119
    .local v0, chop:I
    if-lez v0, :cond_0

    .line 120
    sget-object v3, Lcom/google/android/feedback/SaveReportThread;->mCompareByDate:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 121
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 122
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v2           #i:I
    :cond_0
    monitor-exit v4

    return-void

    .line 117
    .end local v0           #chop:I
    .end local v1           #dataFiles:[Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private saveReport(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/io/File;
    .locals 9
    .parameter "proto"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/google/android/feedback/SaveReportThread;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v6}, Lcom/google/android/feedback/FeedbackActivity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "reports"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .local v0, dataDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_0

    .line 68
    new-instance v6, Ljava/io/IOException;

    const-string v7, "failed to create reports directory"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 74
    :cond_0
    const/4 v6, 0x3

    invoke-static {v0, v6}, Lcom/google/android/feedback/SaveReportThread;->deleteOldest(Ljava/io/File;I)V

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, name:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .local v4, tmpFile:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".proto.gz"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v3, reportFile:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 82
    .local v2, out:Ljava/io/FileOutputStream;
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 83
    .local v5, zout:Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 84
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 86
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 87
    new-instance v6, Ljava/io/IOException;

    const-string v7, "failed to rename temporary file"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v2           #out:Ljava/io/FileOutputStream;
    .end local v5           #zout:Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v6

    .restart local v2       #out:Ljava/io/FileOutputStream;
    .restart local v5       #zout:Ljava/util/zip/GZIPOutputStream;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    return-object v3
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/google/android/feedback/SaveReportThread;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    invoke-static {v2}, Lcom/google/android/feedback/SaveReportThread;->createAndroidBugReportProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 48
    .local v1, proto:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-direct {p0, v1}, Lcom/google/android/feedback/SaveReportThread;->saveReport(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/io/File;

    .line 49
    iget-object v2, p0, Lcom/google/android/feedback/SaveReportThread;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/google/android/feedback/FeedbackActivity;->runSendService()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    .end local v1           #proto:Lcom/google/common/io/protocol/ProtoBuf;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/android/feedback/SaveReportThread;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Lcom/google/android/feedback/FeedbackActivity;->showToast(I)V

    .line 52
    const-string v2, "SaveReportThread"

    const-string v3, "failed to write bug report"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 53
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 55
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "SaveReportThread"

    const-string v3, "invalid report"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
