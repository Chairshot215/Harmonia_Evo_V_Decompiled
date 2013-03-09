.class public Lcom/google/android/videochat/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static mLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->getLogLevelForVcLib()I

    move-result v0

    sput v0, Lcom/google/android/videochat/util/LogUtil;->mLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LOG(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "loglevel"
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 28
    sget v0, Lcom/google/android/videochat/util/LogUtil;->mLogLevel:I

    if-lt p0, v0, :cond_0

    .line 29
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    return-void
.end method

.method public static LOGD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 38
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/google/android/videochat/util/LogUtil;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static LOGE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public static LOGI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public static LOGV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 34
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/google/android/videochat/util/LogUtil;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static LOGW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public static Logwtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public static debugLoggable()Z
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x3

    sget v1, Lcom/google/android/videochat/util/LogUtil;->mLogLevel:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLogLevelForTag(Ljava/lang/String;)I
    .locals 5
    .parameter "tag"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 105
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    :goto_0
    return v0

    .line 107
    :cond_0
    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    invoke-static {p0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 112
    goto :goto_0

    .line 114
    :cond_3
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private static getLogLevelForVcLib()I
    .locals 1

    .prologue
    .line 81
    const-string v0, "vclib"

    invoke-static {v0}, Lcom/google/android/videochat/util/LogUtil;->getLogLevelForTag(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTalkLogLevel()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/google/android/videochat/util/LogUtil;->mLogLevel:I

    return v0
.end method

.method public static refreshTalkLogLevel()I
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->getLogLevelForVcLib()I

    move-result v0

    sput v0, Lcom/google/android/videochat/util/LogUtil;->mLogLevel:I

    .line 20
    sget v0, Lcom/google/android/videochat/util/LogUtil;->mLogLevel:I

    return v0
.end method

.method public static verboseLoggable()Z
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x2

    sget v1, Lcom/google/android/videochat/util/LogUtil;->mLogLevel:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
