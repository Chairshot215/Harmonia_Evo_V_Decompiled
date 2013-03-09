.class public Lcom/htc/android/mail/eassvc/util/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final FILE_DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static TAG:Ljava/lang/String;

.field public static customizedDataSet:Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;

.field private static mUUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->DEBUG:Z

    .line 33
    sput-object v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->mUUID:Ljava/lang/String;

    .line 34
    const-string v0, "EAS DeviceInfo"

    sput-object v0, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->TAG:Ljava/lang/String;

    .line 36
    sput-object v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->customizedDataSet:Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceFriendlyName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0x94

    .line 235
    sget-boolean v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->TAG:Ljava/lang/String;

    const-string v2, ">getDeviceFriendlyName()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->isCustomized(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    sget-object v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->customizedDataSet:Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;

    iget-object v0, v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;->deviceFriendlyName:Ljava/lang/String;

    .line 249
    :cond_1
    :goto_0
    return-object v0

    .line 239
    :cond_2
    sget-boolean v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->TAG:Ljava/lang/String;

    const-string v2, "deviceFriendName didn\'t exist."

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_3
    const-string v1, "ro.product.model"

    const-string v2, "Not Available"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, name:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_4

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x93

    if-ne v1, v2, :cond_4

    .line 244
    const-string v0, "EVO Shift"

    goto :goto_0

    .line 245
    :cond_4
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x95

    if-ne v1, v2, :cond_1

    .line 247
    const-string v0, "HTCshooter"

    goto :goto_0
.end method

.method public static final getDeviceID()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v10, 0x71

    const/16 v9, 0x70

    const/16 v7, 0x1d

    .line 97
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, IMEI:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v6, "00000000000000"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "000000000000000"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 102
    :cond_0
    const-string v6, "ril.cdma.esn"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, esn:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, "0"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 105
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x1d

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, deviceId:Ljava/lang/String;
    const-string v6, "EAS DeviceInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " No IMEI, use ESNs instead: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v3           #esn:Ljava/lang/String;
    :goto_0
    sget-boolean v6, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "EAS DeviceInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " GetDeviceID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_1
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v6, v9, :cond_2

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v10, :cond_a

    .line 143
    .end local v1           #deviceId:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v1

    .line 108
    .restart local v3       #esn:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v6, "ro.serialno"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, serialno:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 110
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x1d

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 111
    .restart local v1       #deviceId:Ljava/lang/String;
    const-string v6, "EAS DeviceInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " No IMEI, use serialno "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 134
    .end local v1           #deviceId:Ljava/lang/String;
    .end local v3           #esn:Ljava/lang/String;
    .end local v5           #serialno:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 135
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    throw v2

    .line 113
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #esn:Ljava/lang/String;
    .restart local v5       #serialno:Ljava/lang/String;
    :cond_4
    :try_start_2
    sget-object v6, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->mUUID:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 114
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x1d

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->mUUID:Ljava/lang/String;

    .line 116
    :cond_5
    sget-object v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->mUUID:Ljava/lang/String;

    .line 117
    .restart local v1       #deviceId:Ljava/lang/String;
    const-string v6, "EAS DeviceInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " No IMEI, use UUID instead: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    .end local v1           #deviceId:Ljava/lang/String;
    .end local v3           #esn:Ljava/lang/String;
    .end local v5           #serialno:Ljava/lang/String;
    :cond_6
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v6, v9, :cond_7

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v10, :cond_8

    .line 123
    :cond_7
    move-object v1, v0

    .restart local v1       #deviceId:Ljava/lang/String;
    goto/16 :goto_0

    .line 125
    .end local v1           #deviceId:Ljava/lang/String;
    :cond_8
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, md5:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_9

    .line 127
    const/4 v6, 0x0

    const/16 v7, 0x1d

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .restart local v1       #deviceId:Ljava/lang/String;
    goto/16 :goto_0

    .line 129
    .end local v1           #deviceId:Ljava/lang/String;
    :cond_9
    move-object v1, v4

    .restart local v1       #deviceId:Ljava/lang/String;
    goto/16 :goto_0

    .line 143
    .end local v4           #md5:Ljava/lang/String;
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public static final getDeviceModel(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 259
    sget-boolean v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->TAG:Ljava/lang/String;

    const-string v2, ">getDeviceModel()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->isCustomized(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    sget-object v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->customizedDataSet:Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;->deviceModel:Ljava/lang/String;

    .line 270
    :goto_0
    return-object v1

    .line 263
    :cond_1
    sget-boolean v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->TAG:Ljava/lang/String;

    const-string v2, "deviceModel didn\'t exist."

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_2
    const-string v1, "ro.product.model"

    const-string v2, "Not Available"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, model:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-ne v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x95

    if-ne v1, v2, :cond_3

    .line 267
    const-string v0, "PG86100"

    .line 270
    :cond_3
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 217
    sget-boolean v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->TAG:Ljava/lang/String;

    const-string v2, ">getDeviceType() "

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->isCustomized(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    sget-boolean v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->customizedDataSet:Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_1
    sget-object v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->customizedDataSet:Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;

    iget-object v0, v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;->deviceName:Ljava/lang/String;

    .line 225
    :cond_2
    :goto_0
    return-object v0

    .line 223
    :cond_3
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, defaultValue:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceName didn\'t exist, so default is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final getIMEI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 327
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, IMEI:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "00000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    :cond_0
    const-string v2, "ril.cdma.esn"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v1, result:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 337
    const-string v2, "************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 340
    :cond_2
    const-string v2, "Not Available"

    goto :goto_0
.end method

.method private static getMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 361
    .local v0, digest:Ljava/security/MessageDigest;
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 364
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->toHexString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 368
    :goto_0
    return-object v2

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 368
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x1d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static final getMobileOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 311
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 312
    .local v1, t:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, operatorName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 322
    .end local v0           #operatorName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 318
    .restart local v0       #operatorName:Ljava/lang/String;
    :cond_0
    const-string v0, "Not Available"

    goto :goto_0

    .line 322
    .end local v0           #operatorName:Ljava/lang/String;
    :cond_1
    const-string v0, "Not Available"

    goto :goto_0
.end method

.method public static final getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x4

    .line 278
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 279
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v1, "Not Available"

    .line 280
    .local v1, notAvailable:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v4, result:Ljava/lang/StringBuilder;
    if-eqz v5, :cond_4

    .line 283
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, phoneNumber:Ljava/lang/String;
    const/4 v2, 0x0

    .line 285
    .local v2, phoneNumLen:I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 286
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 288
    if-ge v2, v7, :cond_1

    if-lez v2, :cond_1

    .line 289
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    rsub-int/lit8 v6, v2, 0xa

    if-ge v0, v6, :cond_0

    .line 290
    const/16 v6, 0x2a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .end local v0           #i:I
    .end local v2           #phoneNumLen:I
    .end local v3           #phoneNumber:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 293
    .restart local v2       #phoneNumLen:I
    .restart local v3       #phoneNumber:Ljava/lang/String;
    :cond_1
    if-lt v2, v7, :cond_2

    .line 294
    const-string v6, "******"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 297
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 300
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 303
    .end local v2           #phoneNumLen:I
    .end local v3           #phoneNumber:Ljava/lang/String;
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static isCustomized(ILandroid/content/Context;)Z
    .locals 3
    .parameter "which"
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 186
    sget-object v2, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->customizedDataSet:Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;

    if-nez v2, :cond_0

    .line 187
    new-instance v2, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;

    invoke-direct {v2, p1}, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->customizedDataSet:Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;

    .line 190
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 204
    :cond_1
    :goto_0
    return v0

    .line 192
    :pswitch_0
    sget-object v2, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->customizedDataSet:Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;->deviceName:Ljava/lang/String;

    if-eqz v2, :cond_1

    move v0, v1

    .line 193
    goto :goto_0

    .line 196
    :pswitch_1
    sget-object v2, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->customizedDataSet:Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;->deviceFriendlyName:Ljava/lang/String;

    if-eqz v2, :cond_1

    move v0, v1

    .line 197
    goto :goto_0

    .line 200
    :pswitch_2
    sget-object v2, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->customizedDataSet:Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;->deviceModel:Ljava/lang/String;

    if-eqz v2, :cond_1

    move v0, v1

    .line 201
    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static toHexString([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "bytes"
    .parameter "separator"

    .prologue
    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v2, hexString:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 348
    .local v1, b:B
    and-int/lit16 v5, v1, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 350
    .end local v1           #b:B
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
