.class public final Lcom/htc/reportagent/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final _DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/htc/reportagent/util/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/util/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentNetworkType(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    const/16 v9, 0x12

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 164
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 165
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 166
    .local v2, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 167
    .local v6, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 168
    .local v4, usbNet:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 169
    .local v1, mOn:Z
    const/4 v5, 0x0

    .line 170
    .local v5, wOn:Z
    const/4 v3, 0x0

    .line 171
    .local v3, uOn:Z
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 172
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 173
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 175
    :cond_2
    if-eqz v1, :cond_3

    .line 178
    :goto_0
    return v7

    .line 176
    :cond_3
    if-eqz v5, :cond_4

    move v7, v8

    goto :goto_0

    .line 177
    :cond_4
    if-eqz v3, :cond_5

    move v7, v9

    goto :goto_0

    .line 178
    :cond_5
    const/4 v7, -0x1

    goto :goto_0
.end method

.method private static getErrorReport(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "send_htc_error_report"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPreferNetwork(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_error_report_prefer_network"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRetryTimes()I
    .locals 8

    .prologue
    const/4 v5, 0x3

    .line 49
    invoke-static {}, Lcom/htc/reportagent/ReportUPolicy;->getInstance()Lcom/htc/utils/ulog/UPolicy;

    move-result-object v1

    .line 50
    .local v1, policy:Lcom/htc/utils/ulog/UPolicy;
    const-string v6, "common"

    const-string v7, "retry"

    invoke-virtual {v1, v6, v7}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, retryStr:Ljava/lang/String;
    const/4 v2, 0x1

    .line 53
    .local v2, retry:I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 55
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 56
    .local v4, retryValue:I
    if-le v4, v5, :cond_1

    move v2, v5

    .line 64
    .end local v4           #retryValue:I
    :cond_0
    :goto_0
    return v2

    .line 56
    .restart local v4       #retryValue:I
    :cond_1
    if-gez v4, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .line 57
    .end local v4           #retryValue:I
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/reportagent/util/Utils;->TAG:Ljava/lang/String;

    const-string v6, "Exception happen during paring RetryTimes"

    invoke-static {v5, v6}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getTellHTCUI(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_error_report_setting"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUploadLogFreq()I
    .locals 8

    .prologue
    .line 69
    const/16 v1, 0x18

    .line 70
    .local v1, DEFAULT_FREQ_OF_USER_ROM:I
    const/4 v0, 0x6

    .line 71
    .local v0, DEFAULT_FREQ_OF_DEBUG_ROM:I
    const/4 v3, 0x0

    .line 72
    .local v3, nFreq:I
    invoke-static {}, Lcom/htc/reportagent/ReportUPolicy;->getInstance()Lcom/htc/utils/ulog/UPolicy;

    move-result-object v4

    .line 73
    .local v4, policy:Lcom/htc/utils/ulog/UPolicy;
    const-string v6, "log"

    const-string v7, "freq"

    invoke-virtual {v4, v6, v7}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, strFreq:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 77
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 84
    :cond_0
    :goto_0
    if-gtz v3, :cond_1

    .line 85
    const/16 v3, 0x18

    .line 88
    :cond_1
    const/4 v6, 0x6

    if-le v3, v6, :cond_2

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isDebuggingPolicyEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 89
    const/4 v3, 0x6

    .line 94
    :cond_2
    mul-int/lit16 v6, v3, 0xe10

    mul-int/lit16 v6, v6, 0x3e8

    return v6

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getUserProfiling(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "send_htc_application_log"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isErrorReportSettingEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-static {p0}, Lcom/htc/reportagent/util/Utils;->getTellHTCUI(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {p0}, Lcom/htc/reportagent/util/Utils;->getErrorReport(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 126
    invoke-static {p0}, Lcom/htc/reportagent/util/Utils;->getPreferNetwork(Landroid/content/Context;)I

    move-result v5

    .line 127
    .local v5, preferNetwork:I
    if-nez v5, :cond_1

    move v2, v10

    .line 128
    .local v2, isSupportMobile:Z
    :goto_0
    const-string v12, "connectivity"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 131
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 132
    .local v0, activeNI:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 133
    sget-object v10, Lcom/htc/reportagent/util/Utils;->TAG:Ljava/lang/String;

    const-string v12, "Upload block due to roaming."

    invoke-static {v10, v12}, Lcom/htc/reportagent/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    :goto_1
    return v11

    .end local v0           #activeNI:Landroid/net/NetworkInfo;
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #isSupportMobile:Z
    :cond_1
    move v2, v11

    .line 127
    goto :goto_0

    .line 138
    .restart local v0       #activeNI:Landroid/net/NetworkInfo;
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    .restart local v2       #isSupportMobile:Z
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v12

    if-eq v12, v10, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v12

    const/4 v13, 0x7

    if-eq v12, v13, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_4

    .line 141
    :cond_3
    sget-object v10, Lcom/htc/reportagent/util/Utils;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[2G] upload block because network type is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/htc/reportagent/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    :cond_4
    invoke-virtual {v1, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 147
    .local v4, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 148
    .local v9, wifi:Landroid/net/NetworkInfo;
    const/16 v12, 0x12

    invoke-virtual {v1, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 149
    .local v7, usbNet:Landroid/net/NetworkInfo;
    const/4 v3, 0x0

    .line 150
    .local v3, mOn:Z
    const/4 v8, 0x0

    .line 151
    .local v8, wOn:Z
    const/4 v6, 0x0

    .line 152
    .local v6, uOn:Z
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 153
    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    .line 154
    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    .line 156
    :cond_7
    if-eqz v2, :cond_9

    .line 157
    if-nez v3, :cond_8

    if-nez v8, :cond_8

    if-eqz v6, :cond_0

    :cond_8
    move v11, v10

    goto :goto_1

    .line 159
    :cond_9
    if-nez v8, :cond_a

    if-eqz v6, :cond_0

    :cond_a
    move v11, v10

    goto :goto_1
.end method

.method public static isPolicyAvailable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    invoke-static {p0}, Lcom/htc/reportagent/util/Utils;->isErrorReportSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/reportagent/util/Utils;->isUserProfilingSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isS3UploaderEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 197
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isFactoryRom()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUserRom()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 198
    .local v1, isDebuggingRom:Z
    :goto_0
    const-string v4, "ulog.enable_s3_uploader"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 200
    .local v0, enableS3BySystemProperty:Z
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v2

    .end local v0           #enableS3BySystemProperty:Z
    .end local v1           #isDebuggingRom:Z
    :cond_0
    move v1, v3

    .line 197
    goto :goto_0

    .restart local v0       #enableS3BySystemProperty:Z
    .restart local v1       #isDebuggingRom:Z
    :cond_1
    move v2, v3

    .line 200
    goto :goto_1
.end method

.method public static isUnlockedDevice()Z
    .locals 2

    .prologue
    .line 212
    const-string v0, "1"

    const-string v1, "ro.lb"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUserProfilingSettingEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 109
    invoke-static {p0}, Lcom/htc/reportagent/util/Utils;->getTellHTCUI(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {p0}, Lcom/htc/reportagent/util/Utils;->getUserProfiling(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showAllocateMemory(Ljava/lang/String;)V
    .locals 12
    .parameter "tag"

    .prologue
    .line 182
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    .line 183
    .local v6, runtime:Ljava/lang/Runtime;
    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    .line 184
    .local v4, max:J
    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v7

    .line 185
    .local v7, total:J
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v9

    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->getExternalBytesAllocated()J

    move-result-wide v0

    .line 186
    .local v0, external:J
    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    .line 187
    .local v2, free:J
    sget-object v9, Lcom/htc/reportagent/util/Utils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " max: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", total: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", external: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", free:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method
