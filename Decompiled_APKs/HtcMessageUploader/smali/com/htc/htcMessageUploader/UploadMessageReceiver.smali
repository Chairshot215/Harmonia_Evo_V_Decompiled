.class public Lcom/htc/htcMessageUploader/UploadMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UploadMessageReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;
    }
.end annotation


# static fields
.field private static APPUPDATE_UPLOAD_URL:Ljava/lang/String; = null

.field private static APPUPDATE_UPLOAD_URL_CN:Ljava/lang/String; = null

.field private static final APP_PROP_EXTRAMSG_URL:Ljava/lang/String; = "ro.htc.appupdate.exmsg.url"

.field private static final APP_PROP_EXTRAMSG_URL_CN:Ljava/lang/String; = "ro.htc.appupdate.exmsg.url_CN"

.field private static APU_IDV_EXTRA_URL:Ljava/lang/String; = null

.field private static APU_IDV_EXTRA_URL_CN:Ljava/lang/String; = null

.field private static final FIRST_SUCCESS_CHECKIN_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_FIRST_SUCCESS_CHECKIN"

.field private static final IAPP_PROP_EXTRAMSG_URL:Ljava/lang/String; = "ro.htc.iappupdate.exmsg.url"

.field private static final IAPP_PROP_EXTRAMSG_URL_CN:Ljava/lang/String; = "ro.htc.iappupdate.exmsg.url_CN"

.field private static final INSTALL_COMPLETE_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_INSTALL_COMPLETE"

.field private static final INTENT_APPUPDATE_FAIL:Ljava/lang/String; = "android.server.checkin.APPUPDATE_FAIL"

.field private static final LAST_UPLOAD_MESSAGE_TIME_FILE_PATH:Ljava/lang/String; = "/data/data/com.htc.htcMessageUploader/upload_time"

.field public static LOCAL_LOGV:Z = false

.field public static final MESSAGE_DEBUG_PROPERTY:Ljava/lang/String; = "messageUpload.debug"

.field private static final MESSAGE_QUEUE_FILE_PATH:Ljava/lang/String; = "/data/data/com.htc.htcMessageUploader/message_queue"

.field public static final SCHEDULE_COMMAND_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_SCHEDULE_COMMAND"

.field private static final SUCCESS:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "htcMessageUploader"

.field public static final UPLOAD_MESSAGE_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_UPLOAD_MESSAGE"

.field private static final UPLOAD_SERVICE_DIR:Ljava/lang/String; = "/data/data/com.htc.htcMessageUploader"

.field private static UPLOAD_URL:Ljava/lang/String; = null

.field private static UPLOAD_URL_CN:Ljava/lang/String; = null

.field private static final VERIFY_COMPLETE_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_VERIFY_COMPLETE"

.field private static final lockThread:Ljava/lang/Object;

.field private static mJobRunning:Z

.field public static mNetworkConnected:Z


# instance fields
.field final APPUPDATE_AGENT:Ljava/lang/String;

.field private APPUPDATE_MSG_PREFIX:Ljava/lang/String;

.field final APPUPDATE_STATUS_ACCEPT:Ljava/lang/String;

.field final APPUPDATE_STATUS_INSTALL_FAILED:Ljava/lang/String;

.field final APPUPDATE_STATUS_INSTALL_SUCCESS:Ljava/lang/String;

.field private IDVAPPUPDATE_MSG_PREFIX:Ljava/lang/String;

.field private final INTENT_APPUPDATE_SUCCESS:Ljava/lang/String;

.field private final INTENT_APP_RUNUPDATE:Ljava/lang/String;

.field final STRING_EMPTY:Ljava/lang/String;

.field final STRING_NA:Ljava/lang/String;

.field final STRING_NA_NUM:Ljava/lang/String;

.field final STRING_UNKNOWN:Ljava/lang/String;

.field private final UPLOAD_MESSAGE_INTERVAL:J

.field public mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    const-string v0, "http://fotamsg.htc.com/android/extra/"

    sput-object v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->UPLOAD_URL:Ljava/lang/String;

    .line 174
    const-string v0, "http://fotamsg.htccomm.com.cn/android/extra/"

    sput-object v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->UPLOAD_URL_CN:Ljava/lang/String;

    .line 199
    sput-boolean v1, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mNetworkConnected:Z

    .line 203
    sput-boolean v1, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    .line 210
    sput-boolean v1, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 221
    const-string v0, "http://apu-msg.htc.com/extra-msg/rws/and-app/msg"

    sput-object v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->APPUPDATE_UPLOAD_URL:Ljava/lang/String;

    .line 222
    const-string v0, "http://apu-msg.htccomm.com.cn/extra-msg/rws/and-app/msg"

    sput-object v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->APPUPDATE_UPLOAD_URL_CN:Ljava/lang/String;

    .line 224
    const-string v0, "http://apu-msg.htc.com/extra-msg/rws/and-app/msg-i/"

    sput-object v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->APU_IDV_EXTRA_URL:Ljava/lang/String;

    .line 225
    const-string v0, "http://apu-msg.htccomm.com.cn/extra-msg/rws/and-app/msg-i"

    sput-object v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->APU_IDV_EXTRA_URL_CN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 247
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    .line 195
    const-wide/32 v0, 0x1b77400

    iput-wide v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->UPLOAD_MESSAGE_INTERVAL:J

    .line 217
    const-string v0, "android.server.checkin.APP_RUNUPDATE"

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->INTENT_APP_RUNUPDATE:Ljava/lang/String;

    .line 218
    const-string v0, "android.server.checkin.APPUPDATE_SUCCESS"

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->INTENT_APPUPDATE_SUCCESS:Ljava/lang/String;

    .line 233
    const-string v0, "#APPUPDATE#"

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->APPUPDATE_MSG_PREFIX:Ljava/lang/String;

    .line 234
    const-string v0, "#IDVAPPUPDATE#"

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->IDVAPPUPDATE_MSG_PREFIX:Ljava/lang/String;

    .line 236
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->STRING_NA:Ljava/lang/String;

    .line 237
    const-string v0, "-1"

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->STRING_NA_NUM:Ljava/lang/String;

    .line 238
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->STRING_EMPTY:Ljava/lang/String;

    .line 239
    const-string v0, "U"

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->STRING_UNKNOWN:Ljava/lang/String;

    .line 240
    const-string v0, "AppUpdate-ExtraMsg/3.0"

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->APPUPDATE_AGENT:Ljava/lang/String;

    .line 242
    const-string v0, "ACCEPT"

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->APPUPDATE_STATUS_ACCEPT:Ljava/lang/String;

    .line 243
    const-string v0, "INSTALL_SUCCESS"

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->APPUPDATE_STATUS_INSTALL_SUCCESS:Ljava/lang/String;

    .line 244
    const-string v0, "INSTALL_FAILED"

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->APPUPDATE_STATUS_INSTALL_FAILED:Ljava/lang/String;

    .line 248
    const-string v0, "htcMessageUploader"

    const-string v1, "[UploadMessageReceiver] UploadMessageReceiver() constructor !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method private cancelSchedule(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1329
    sget-boolean v2, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    .line 1330
    const-string v2, "htcMessageUploader"

    const-string v3, "CancelSchedule()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.server.checkin.FOTA_UPLOAD_MESSAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1332
    .local v0, schedIntent:Landroid/content/Intent;
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1333
    .local v1, sender:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1334
    return-void
.end method

.method private getAcceptJSONObject(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 7
    .parameter "pIntent"

    .prologue
    .line 521
    const-string v4, "htcMessageUploader"

    const-string v5, "getAcceptJSONObject"

    invoke-static {v4, v5}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-direct {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getBasicData()Lorg/json/JSONObject;

    move-result-object v3

    .line 524
    .local v3, objAccept:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "ApStatus"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 525
    .local v0, aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 526
    .local v2, nAcceptNum:I
    const-string v4, "htcMessageUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get ACCEPT num is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v4, "status"

    const-string v5, "ACCEPT"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    const-string v4, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    const-string v4, "tag1"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v0           #aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #nAcceptNum:I
    :goto_0
    return-object v3

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "htcMessageUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Err in getAcceptJSONObject():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAppupdateUploadURL(Z)Ljava/lang/String;
    .locals 4
    .parameter "isIndividualAPU"

    .prologue
    .line 1125
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1127
    :cond_0
    if-eqz p1, :cond_3

    .line 1128
    const-string v2, "ro.htc.iappupdate.exmsg.url_CN"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1129
    .local v1, url:Ljava/lang/String;
    sget-object v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->APU_IDV_EXTRA_URL_CN:Ljava/lang/String;

    .line 1142
    .local v0, defaultURL:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1143
    :cond_1
    move-object v1, v0

    .line 1144
    :cond_2
    return-object v1

    .line 1131
    .end local v0           #defaultURL:Ljava/lang/String;
    .end local v1           #url:Ljava/lang/String;
    :cond_3
    const-string v2, "ro.htc.appupdate.exmsg.url_CN"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1132
    .restart local v1       #url:Ljava/lang/String;
    sget-object v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->APPUPDATE_UPLOAD_URL_CN:Ljava/lang/String;

    .restart local v0       #defaultURL:Ljava/lang/String;
    goto :goto_0

    .line 1134
    .end local v0           #defaultURL:Ljava/lang/String;
    .end local v1           #url:Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_5

    .line 1135
    const-string v2, "ro.htc.iappupdate.exmsg.url"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1136
    .restart local v1       #url:Ljava/lang/String;
    sget-object v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->APU_IDV_EXTRA_URL:Ljava/lang/String;

    .restart local v0       #defaultURL:Ljava/lang/String;
    goto :goto_0

    .line 1138
    .end local v0           #defaultURL:Ljava/lang/String;
    .end local v1           #url:Ljava/lang/String;
    :cond_5
    const-string v2, "ro.htc.appupdate.exmsg.url"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1139
    .restart local v1       #url:Ljava/lang/String;
    sget-object v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->APPUPDATE_UPLOAD_URL:Ljava/lang/String;

    .restart local v0       #defaultURL:Ljava/lang/String;
    goto :goto_0
.end method

.method private getBasicData()Lorg/json/JSONObject;
    .locals 11

    .prologue
    .line 541
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 542
    .local v6, objBasicJSon:Lorg/json/JSONObject;
    const-string v8, "htcMessageUploader"

    const-string v9, "getBasicData()."

    invoke-static {v8, v9}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :try_start_0
    invoke-static {}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getPhoneIdentity()Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, imei:Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v2, "-1"

    .line 547
    :cond_0
    const-string v8, "imei"

    invoke-virtual {v6, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    const-string v8, "ro.build.description"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 550
    .local v7, romVersion:Ljava/lang/String;
    if-nez v7, :cond_1

    const-string v7, "N/A"

    .line 551
    :cond_1
    const-string v8, "romVersion"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string v8, "sku"

    invoke-direct {p0, v7}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getSKU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string v8, "ro.cid"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, cid:Ljava/lang/String;
    if-nez v0, :cond_2

    const-string v0, "N/A"

    .line 557
    :cond_2
    const-string v8, "cid"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    invoke-direct {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getMNC_MCC()Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, mccMnc:Ljava/lang/String;
    if-nez v3, :cond_3

    const-string v3, "N/A"

    .line 561
    :cond_3
    const-string v8, "htcMessageUploader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mccmnc: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v8, "mccMnc"

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    invoke-direct {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getMID()Ljava/lang/String;

    move-result-object v4

    .line 565
    .local v4, mid:Ljava/lang/String;
    if-nez v4, :cond_4

    const-string v4, "N/A"

    .line 566
    :cond_4
    const-string v8, "mid"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 568
    const-string v8, "key"

    invoke-direct {p0, v7}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    const-string v8, "ro.product.model"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 571
    .local v5, modelno:Ljava/lang/String;
    if-nez v5, :cond_5

    const-string v5, "N/A"

    .line 572
    :cond_5
    const-string v8, "modelNum"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v0           #cid:Ljava/lang/String;
    .end local v2           #imei:Ljava/lang/String;
    .end local v3           #mccMnc:Ljava/lang/String;
    .end local v4           #mid:Ljava/lang/String;
    .end local v5           #modelno:Ljava/lang/String;
    .end local v7           #romVersion:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "htcMessageUploader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Err in getBasicData():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getConnectMedia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->isIPTOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    const-string v0, "IPT"

    .line 955
    :goto_0
    return-object v0

    .line 949
    :cond_0
    invoke-direct {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->isWifiOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    const-string v0, "Wifi"

    goto :goto_0

    .line 951
    :cond_1
    invoke-direct {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->isWiMAXOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 952
    const-string v0, "WiMax"

    goto :goto_0

    .line 953
    :cond_2
    invoke-direct {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->isDataCallOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 954
    const-string v0, "radio"

    goto :goto_0

    .line 955
    :cond_3
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "rom"

    .prologue
    .line 622
    const-string v3, "U"

    .line 624
    .local v3, key:Ljava/lang/String;
    :try_start_0
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 625
    .local v2, idx:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, fullKey:Ljava/lang/String;
    const-string v4, "release-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 627
    const-string v3, "R"

    .line 635
    .end local v1           #fullKey:Ljava/lang/String;
    .end local v2           #idx:I
    :goto_0
    return-object v3

    .line 628
    .restart local v1       #fullKey:Ljava/lang/String;
    .restart local v2       #idx:I
    :cond_0
    const-string v4, "test-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 629
    const-string v3, "T"

    goto :goto_0

    .line 631
    :cond_1
    const-string v3, "U"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 632
    .end local v1           #fullKey:Ljava/lang/String;
    .end local v2           #idx:I
    :catch_0
    move-exception v0

    .line 633
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "U"

    goto :goto_0
.end method

.method private getLastUploadTime()J
    .locals 8

    .prologue
    .line 1343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1344
    .local v2, now:J
    const-wide/16 v4, 0x0

    .line 1346
    .local v4, uploadTime:J
    const-string v6, "/data/data/com.htc.htcMessageUploader/upload_time"

    invoke-direct {p0, v6}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->readUploadTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1347
    .local v1, lastUploadTime:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1348
    :cond_0
    const-wide/16 v6, 0x0

    .line 1355
    :goto_0
    return-wide v6

    .line 1350
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1355
    :goto_1
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_0

    .line 1351
    :catch_0
    move-exception v0

    .line 1352
    .local v0, e:Ljava/lang/Exception;
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method private getLocation()Ljava/lang/String;
    .locals 21

    .prologue
    .line 1029
    const-string v11, ""

    .local v11, location:Ljava/lang/String;
    const-string v19, ", "

    .line 1030
    .local v19, strSep:Ljava/lang/String;
    const-string v18, "NA"

    .local v18, strLocality:Ljava/lang/String;
    const-string v16, "NA"

    .local v16, strAdminArea:Ljava/lang/String;
    const-string v17, "NA"

    .line 1033
    .local v17, strCountryCode:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/LocationManager;

    .line 1034
    .local v12, locationManager:Landroid/location/LocationManager;
    const-string v13, "gps"

    .line 1035
    .local v13, locationProvider_G:Ljava/lang/String;
    const-string v14, "network"

    .line 1036
    .local v14, locationProvider_N:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1038
    .local v9, lastKnownLocation:Landroid/location/Location;
    invoke-virtual {v12, v13}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 1039
    if-nez v9, :cond_0

    .line 1040
    const-string v2, "htcMessageUploader"

    const-string v3, "Location from GPS is null"

    invoke-static {v2, v3}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v12, v14}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 1044
    :cond_0
    if-nez v9, :cond_1

    .line 1045
    const-string v2, "htcMessageUploader"

    const-string v3, "Location from NETWORK is null as well"

    invoke-static {v2, v3}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v11, "NA, NA, NA"

    .line 1049
    :cond_1
    if-eqz v9, :cond_5

    .line 1050
    new-instance v1, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 1051
    .local v1, geoCoder:Landroid/location/Geocoder;
    const/4 v10, 0x0

    .line 1052
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const/4 v7, 0x0

    .line 1054
    .local v7, address:Landroid/location/Address;
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v10

    .line 1055
    if-eqz v10, :cond_7

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1056
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #address:Landroid/location/Address;
    check-cast v7, Landroid/location/Address;

    .line 1058
    .restart local v7       #address:Landroid/location/Address;
    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1059
    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v18

    .line 1060
    :cond_2
    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1061
    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v16

    .line 1062
    :cond_3
    invoke-virtual {v7}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1063
    invoke-virtual {v7}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v17

    .line 1064
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1076
    .end local v1           #geoCoder:Landroid/location/Geocoder;
    .end local v7           #address:Landroid/location/Address;
    .end local v9           #lastKnownLocation:Landroid/location/Location;
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v12           #locationManager:Landroid/location/LocationManager;
    .end local v13           #locationProvider_G:Ljava/lang/String;
    .end local v14           #locationProvider_N:Ljava/lang/String;
    :cond_5
    :goto_0
    :try_start_1
    const-string v2, "NA, NA, NA"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1077
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v15

    .line 1078
    .local v15, req:Lcom/htc/util/weather/WSPRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;

    move-result-object v20

    .line 1079
    .local v20, wsp:Lcom/htc/util/weather/WSPData;
    if-eqz v20, :cond_8

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Lcom/htc/util/weather/WSPData;->getCurLocName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/htc/util/weather/WSPData;->getCurLocState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/htc/util/weather/WSPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1081
    const-string v2, "htcMessageUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get location from WeatherClock:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1091
    .end local v15           #req:Lcom/htc/util/weather/WSPRequest;
    .end local v20           #wsp:Lcom/htc/util/weather/WSPData;
    :cond_6
    :goto_1
    return-object v11

    .line 1066
    .restart local v1       #geoCoder:Landroid/location/Geocoder;
    .restart local v7       #address:Landroid/location/Address;
    .restart local v9       #lastKnownLocation:Landroid/location/Location;
    .restart local v10       #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local v12       #locationManager:Landroid/location/LocationManager;
    .restart local v13       #locationProvider_G:Ljava/lang/String;
    .restart local v14       #locationProvider_N:Ljava/lang/String;
    :cond_7
    :try_start_2
    const-string v11, "NA, NA, NA"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1069
    .end local v1           #geoCoder:Landroid/location/Geocoder;
    .end local v7           #address:Landroid/location/Address;
    .end local v9           #lastKnownLocation:Landroid/location/Location;
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v12           #locationManager:Landroid/location/LocationManager;
    .end local v13           #locationProvider_G:Ljava/lang/String;
    .end local v14           #locationProvider_N:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1070
    .local v8, e:Ljava/lang/Exception;
    const-string v2, "htcMessageUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in getLocation(). Err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const-string v11, "NA, NA, NA"

    goto/16 :goto_0

    .line 1084
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v15       #req:Lcom/htc/util/weather/WSPRequest;
    .restart local v20       #wsp:Lcom/htc/util/weather/WSPData;
    :cond_8
    :try_start_3
    const-string v2, "htcMessageUploader"

    const-string v3, "WSPData is NULL"

    invoke-static {v2, v3}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1086
    .end local v15           #req:Lcom/htc/util/weather/WSPRequest;
    .end local v20           #wsp:Lcom/htc/util/weather/WSPData;
    :catch_1
    move-exception v8

    .line 1087
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v2, "htcMessageUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error when get location from WeatherClock: Err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const-string v11, "NA, NA, NA"

    goto :goto_1
.end method

.method private getMID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 611
    const-string v1, ""

    .line 613
    .local v1, mid:Ljava/lang/String;
    :try_start_0
    const-string v2, "ro.mid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 618
    :goto_0
    return-object v1

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "htcMessageUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMID error. Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v1, ""

    goto :goto_0
.end method

.method private getMNC_MCC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 599
    const-string v0, ""

    .line 600
    .local v0, mnc_mcc:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 601
    if-nez v0, :cond_0

    const-string v0, ""

    .line 602
    :cond_0
    return-object v0
.end method

.method private static getPhoneIdentity()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1009
    const-string v1, ""

    .line 1011
    .local v1, phoneID:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1012
    sget-boolean v2, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "htcMessageUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "World phone product, get system property as IMEI. Device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_0
    const-string v2, "ro.gsm.imei"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1020
    :goto_0
    return-object v1

    .line 1015
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method private getSKU(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "rom"

    .prologue
    .line 581
    const-string v4, "-1"

    .line 584
    .local v4, sku:Ljava/lang/String;
    :try_start_0
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 585
    .local v3, idx:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    const-string v5, "-1"

    .line 595
    .end local v3           #idx:I
    :goto_0
    return-object v5

    .line 586
    .restart local v3       #idx:I
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, fullMainVersion:Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, aryVersion:[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    .line 589
    const-string v5, "-1"

    goto :goto_0

    .line 590
    :cond_1
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .end local v0           #aryVersion:[Ljava/lang/String;
    .end local v2           #fullMainVersion:Ljava/lang/String;
    .end local v3           #idx:I
    :goto_1
    move-object v5, v4

    .line 595
    goto :goto_0

    .line 591
    :catch_0
    move-exception v1

    .line 592
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "htcMessageUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in getSKU(), rom:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Err:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v4, "-1"

    goto :goto_1
.end method

.method private getUploadURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1104
    sget-object v1, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->UPLOAD_URL:Ljava/lang/String;

    .line 1105
    .local v1, url:Ljava/lang/String;
    sget-object v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->UPLOAD_URL:Ljava/lang/String;

    .line 1107
    .local v0, defaultURL:Ljava/lang/String;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1109
    :cond_0
    const-string v2, "ro.htc.checkin.exmsg.url_CN"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1110
    sget-object v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->UPLOAD_URL_CN:Ljava/lang/String;

    .line 1116
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v1, v0

    .line 1118
    .end local v1           #url:Ljava/lang/String;
    :cond_2
    return-object v1

    .line 1113
    .restart local v1       #url:Ljava/lang/String;
    :cond_3
    const-string v2, "ro.htc.checkin.exmsg.url"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized hasLog()Z
    .locals 4

    .prologue
    .line 642
    const-class v2, Lcom/htc/htcMessageUploader/UploadMessageReceiver;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    .line 643
    const-string v1, "htcMessageUploader"

    const-string v3, "hasLog()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_0
    invoke-static {}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->readFromFile()Ljava/util/ArrayList;

    move-result-object v0

    .line 645
    .local v0, msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcMessageUploader/UploadMessage;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 646
    :cond_1
    const/4 v1, 0x0

    .line 648
    :goto_0
    monitor-exit v2

    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isDataCallOn()Z
    .locals 5

    .prologue
    .line 995
    iget-object v3, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 996
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 997
    .local v2, dataCallInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 998
    .local v0, bDataCall:Z
    return v0
.end method

.method private isIPTOn()Z
    .locals 7

    .prologue
    .line 959
    const/4 v1, 0x0

    .line 962
    .local v1, bIPTOn:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 964
    .local v2, cm:Landroid/net/ConnectivityManager;
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 965
    .local v0, IPTInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 970
    .end local v0           #IPTInfo:Landroid/net/NetworkInfo;
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v1

    .line 966
    :catch_0
    move-exception v3

    .line 967
    .local v3, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 968
    const-string v4, "htcMessageUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when get USBNET status. Err:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isWiMAXOn()Z
    .locals 7

    .prologue
    .line 981
    const/4 v1, 0x0

    .line 984
    .local v1, bWiMAXOn:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 985
    .local v2, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 986
    .local v0, WiMAXInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 991
    .end local v0           #WiMAXInfo:Landroid/net/NetworkInfo;
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v1

    .line 987
    :catch_0
    move-exception v3

    .line 988
    .local v3, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 989
    const-string v4, "htcMessageUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when get WiMAX status. Err:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isWifiOn()Z
    .locals 4

    .prologue
    .line 975
    iget-object v2, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 976
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 977
    .local v1, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2
.end method

.method private prepareMessage(Landroid/content/Intent;)Lcom/htc/htcMessageUploader/UploadMessage;
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    .line 703
    sget-boolean v4, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    .line 704
    const-string v4, "htcMessageUploader"

    const-string v5, "prepareMessage()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    new-instance v2, Lcom/htc/htcMessageUploader/UploadMessage;

    invoke-direct {v2}, Lcom/htc/htcMessageUploader/UploadMessage;-><init>()V

    .line 708
    .local v2, msg:Lcom/htc/htcMessageUploader/UploadMessage;
    invoke-static {}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getPhoneIdentity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/htcMessageUploader/UploadMessage;->imei:Ljava/lang/String;

    .line 709
    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, modelno:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 711
    iput-object v1, v2, Lcom/htc/htcMessageUploader/UploadMessage;->model:Ljava/lang/String;

    .line 713
    :cond_1
    const-string v4, "ro.build.description"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, firmwarever:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 715
    iput-object v0, v2, Lcom/htc/htcMessageUploader/UploadMessage;->version:Ljava/lang/String;

    .line 718
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.server.checkin.FOTA_INSTALL_COMPLETE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 720
    const-string v4, "htcMessageUploader"

    const-string v5, "Receive INSTALL_COMPLETE_ACTION intent"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v4, "htcMessageUploader"

    const-string v5, "By installation rule, starting upload process "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v4, "update_result"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 723
    const-string v4, "update_result"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 724
    const-string v4, "INSTALL_SUCCESS"

    iput-object v4, v2, Lcom/htc/htcMessageUploader/UploadMessage;->status:Ljava/lang/String;

    .line 745
    :cond_3
    :goto_0
    const-string v4, "time_stamp"

    invoke-virtual {p1, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-eqz v4, :cond_9

    .line 746
    const-string v3, "time_stamp"

    invoke-virtual {p1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/htcMessageUploader/UploadMessage;->timestamp:J

    .line 795
    .end local v2           #msg:Lcom/htc/htcMessageUploader/UploadMessage;
    :cond_4
    :goto_1
    return-object v2

    .line 726
    .restart local v2       #msg:Lcom/htc/htcMessageUploader/UploadMessage;
    :cond_5
    const-string v4, "INSTALL_FAILURE"

    iput-object v4, v2, Lcom/htc/htcMessageUploader/UploadMessage;->status:Ljava/lang/String;

    .line 727
    const-string v4, "update_status"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 728
    const-string v4, "update_status"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v4, "update_status"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 730
    :cond_6
    const-string v4, "NA"

    iput-object v4, v2, Lcom/htc/htcMessageUploader/UploadMessage;->tag1:Ljava/lang/String;

    .line 731
    const-string v4, "htcMessageUploader"

    const-string v5, "There is no update_status"

    invoke-static {v4, v5}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :goto_2
    const-string v4, "htcMessageUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get failure reason:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/htcMessageUploader/UploadMessage;->tag1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 733
    :cond_7
    const-string v4, "update_status"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/htcMessageUploader/UploadMessage;->tag1:Ljava/lang/String;

    goto :goto_2

    .line 739
    :cond_8
    const-string v4, "htcMessageUploader"

    const-string v5, "The intent lacks extra infomation of \'update_result\'"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const-string v4, "htcMessageUploader"

    const-string v5, "Cancel uploading since no \'update_result\' information"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 741
    goto :goto_1

    .line 749
    :cond_9
    const-string v4, "htcMessageUploader"

    const-string v5, "The intent lacks extra infomation of \'time_stamp\'"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v4, "htcMessageUploader"

    const-string v5, "Cancel uploading since no \'time_stamp\' information"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 751
    goto :goto_1

    .line 754
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.server.checkin.FOTA_VERIFY_COMPLETE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 755
    const-string v4, "htcMessageUploader"

    const-string v5, "receive VERIFY_COMPLETE_ACTION intent"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-string v4, "htcMessageUploader"

    const-string v5, "By verification rule, starting upload process "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v4, "status"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 758
    const-string v4, "status"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 759
    const-string v4, "VERIFY_SUCCESS"

    iput-object v4, v2, Lcom/htc/htcMessageUploader/UploadMessage;->status:Ljava/lang/String;

    .line 773
    const-string v4, "time_stamp"

    invoke-virtual {p1, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-eqz v4, :cond_d

    .line 774
    const-string v3, "time_stamp"

    invoke-virtual {p1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/htcMessageUploader/UploadMessage;->timestamp:J

    goto/16 :goto_1

    .line 762
    :cond_b
    const-string v4, "htcMessageUploader"

    const-string v5, "Cancel uploading since verifying failure"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 763
    goto/16 :goto_1

    .line 767
    :cond_c
    const-string v4, "htcMessageUploader"

    const-string v5, "The intent lacks extra infomation of \'status\'"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v4, "htcMessageUploader"

    const-string v5, "Cancel uploading since no \'status\' information"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 769
    goto/16 :goto_1

    .line 777
    :cond_d
    const-string v4, "htcMessageUploader"

    const-string v5, "The intent lacks extra infomation of \'time_stamp\'"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v4, "htcMessageUploader"

    const-string v5, "Cancel uploading since no \'time_stamp\' information"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 779
    goto/16 :goto_1

    .line 781
    :cond_e
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.server.checkin.FOTA_FIRST_SUCCESS_CHECKIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 782
    const-string v4, "htcMessageUploader"

    const-string v5, "receive FIRST_SUCCESS_CHECKIN_ACTION intent"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v4, "FIRST_SUCCESS_CHECKIN"

    iput-object v4, v2, Lcom/htc/htcMessageUploader/UploadMessage;->status:Ljava/lang/String;

    .line 784
    const-string v4, "time_stamp"

    invoke-virtual {p1, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-eqz v4, :cond_f

    .line 785
    const-string v3, "time_stamp"

    invoke-virtual {p1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/htcMessageUploader/UploadMessage;->timestamp:J

    goto/16 :goto_1

    .line 788
    :cond_f
    const-string v4, "htcMessageUploader"

    const-string v5, "The intent lacks extra infomation of \'time_stamp\'"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v4, "htcMessageUploader"

    const-string v5, "Cancel uploading since no \'time_stamp\' information"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 790
    goto/16 :goto_1
.end method

.method public static declared-synchronized readFromFile()Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcMessageUploader/UploadMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1208
    const-class v13, Lcom/htc/htcMessageUploader/UploadMessageReceiver;

    monitor-enter v13

    :try_start_0
    sget-boolean v12, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v12, :cond_0

    .line 1209
    const-string v12, "htcMessageUploader"

    const-string v14, "readFromFile()"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcMessageUploader/UploadMessage;>;"
    new-instance v1, Ljava/io/File;

    const-string v12, "/data/data/com.htc.htcMessageUploader/message_queue"

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1212
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1213
    sget-boolean v12, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v12, :cond_1

    .line 1214
    const-string v12, "htcMessageUploader"

    const-string v14, " File Not Found"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    :cond_1
    const/4 v2, 0x0

    .line 1287
    .end local v2           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcMessageUploader/UploadMessage;>;"
    :goto_0
    monitor-exit v13

    return-object v2

    .line 1217
    .restart local v2       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcMessageUploader/UploadMessage;>;"
    :cond_2
    const/4 v5, 0x0

    .line 1219
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v14, 0x2000

    invoke-direct {v6, v12, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1220
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v6, reader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1221
    .local v4, newline:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1222
    .local v8, reocrdError:Z
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1223
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1224
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v14, 0xa

    if-le v12, v14, :cond_3

    .line 1225
    new-instance v3, Lcom/htc/htcMessageUploader/UploadMessage;

    invoke-direct {v3}, Lcom/htc/htcMessageUploader/UploadMessage;-><init>()V

    .line 1226
    .local v3, msg:Lcom/htc/htcMessageUploader/UploadMessage;
    invoke-virtual {v3, v4}, Lcom/htc/htcMessageUploader/UploadMessage;->readRecord(Ljava/lang/String;)Z

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_4

    .line 1227
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1278
    .end local v3           #msg:Lcom/htc/htcMessageUploader/UploadMessage;
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 1280
    .end local v4           #newline:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v8           #reocrdError:Z
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :goto_2
    :try_start_3
    const-string v12, "htcMessageUploader"

    const-string v14, "readFromFile ERROR: FileNotFoundException"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const-string v12, "htcMessageUploader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1208
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #file:Ljava/io/File;
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 1230
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #msg:Lcom/htc/htcMessageUploader/UploadMessage;
    .restart local v4       #newline:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .restart local v8       #reocrdError:Z
    :cond_4
    const/4 v8, 0x1

    .line 1231
    :try_start_4
    const-string v12, "htcMessageUploader"

    const-string v14, "data format error"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const-string v12, "htcMessageUploader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[recored] "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1282
    .end local v3           #msg:Lcom/htc/htcMessageUploader/UploadMessage;
    :catch_1
    move-exception v0

    move-object v5, v6

    .line 1284
    .end local v4           #newline:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v8           #reocrdError:Z
    .local v0, e:Ljava/io/IOException;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :goto_3
    :try_start_5
    const-string v12, "htcMessageUploader"

    const-string v14, "readFromFile ERROR: IOException"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const-string v12, "htcMessageUploader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1236
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #newline:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .restart local v8       #reocrdError:Z
    :cond_5
    if-eqz v8, :cond_7

    .line 1238
    const/4 v10, 0x0

    .line 1242
    .local v10, writer:Ljava/io/BufferedWriter;
    :try_start_6
    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/FileWriter;

    const-string v14, "/data/data/com.htc.htcMessageUploader/message_queue"

    const/4 v15, 0x0

    invoke-direct {v12, v14, v15}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1245
    .end local v10           #writer:Ljava/io/BufferedWriter;
    .local v11, writer:Ljava/io/BufferedWriter;
    :try_start_7
    const-string v12, " "

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v11, v12, v14, v15}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1247
    :try_start_8
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v10, v11

    .line 1253
    .end local v11           #writer:Ljava/io/BufferedWriter;
    .restart local v10       #writer:Ljava/io/BufferedWriter;
    :goto_4
    :try_start_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 1254
    const/4 v7, 0x0

    .line 1255
    .local v7, record:Ljava/lang/String;
    sget-boolean v12, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v12, :cond_6

    .line 1256
    const-string v12, "htcMessageUploader"

    const-string v14, "Find some error data in queue, and start to clear error data"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_6
    new-instance v10, Ljava/io/BufferedWriter;

    .end local v10           #writer:Ljava/io/BufferedWriter;
    new-instance v12, Ljava/io/FileWriter;

    const-string v14, "/data/data/com.htc.htcMessageUploader/message_queue"

    const/4 v15, 0x1

    invoke-direct {v12, v14, v15}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v10, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1259
    .restart local v10       #writer:Ljava/io/BufferedWriter;
    const/4 v9, 0x0

    .local v9, wb:I
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    move-result v12

    if-ge v9, v12, :cond_7

    .line 1261
    :try_start_a
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/htcMessageUploader/UploadMessage;

    invoke-virtual {v12}, Lcom/htc/htcMessageUploader/UploadMessage;->toRecord()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v7

    .line 1266
    const/4 v12, 0x0

    :try_start_b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v10, v7, v12, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 1267
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1269
    :try_start_c
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0

    .line 1259
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1247
    .end local v7           #record:Ljava/lang/String;
    .end local v9           #wb:I
    :catchall_1
    move-exception v12

    :goto_7
    :try_start_d
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    throw v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0

    .line 1249
    :catch_2
    move-exception v0

    .line 1250
    .restart local v0       #e:Ljava/io/IOException;
    :goto_8
    :try_start_e
    const-string v12, "htcMessageUploader"

    const-string v14, "clearFile ERROR: IOException when trying to clear error data"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const-string v12, "htcMessageUploader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_4

    .line 1269
    .end local v0           #e:Ljava/io/IOException;
    .restart local v7       #record:Ljava/lang/String;
    .restart local v9       #wb:I
    :catchall_2
    move-exception v12

    :try_start_f
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    throw v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_0

    .line 1271
    :catch_3
    move-exception v0

    .line 1272
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_10
    const-string v12, "htcMessageUploader"

    const-string v14, "writeToFile ERROR: IOException when trying to clear error data"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const-string v12, "htcMessageUploader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    goto :goto_6

    .end local v0           #e:Ljava/io/IOException;
    .end local v7           #record:Ljava/lang/String;
    .end local v9           #wb:I
    .end local v10           #writer:Ljava/io/BufferedWriter;
    :cond_7
    move-object v5, v6

    .line 1286
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 1282
    .end local v4           #newline:Ljava/lang/String;
    .end local v8           #reocrdError:Z
    :catch_4
    move-exception v0

    goto/16 :goto_3

    .line 1278
    :catch_5
    move-exception v0

    goto/16 :goto_2

    .line 1249
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #newline:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .restart local v8       #reocrdError:Z
    .restart local v11       #writer:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v0

    move-object v10, v11

    .end local v11           #writer:Ljava/io/BufferedWriter;
    .restart local v10       #writer:Ljava/io/BufferedWriter;
    goto :goto_8

    .line 1247
    .end local v10           #writer:Ljava/io/BufferedWriter;
    .restart local v11       #writer:Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v12

    move-object v10, v11

    .end local v11           #writer:Ljava/io/BufferedWriter;
    .restart local v10       #writer:Ljava/io/BufferedWriter;
    goto :goto_7
.end method

.method private readUploadTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filename"

    .prologue
    .line 1365
    const/4 v1, 0x0

    .line 1366
    .local v1, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 1369
    .local v3, ret:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1370
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 1384
    :goto_0
    return-object v4

    .line 1372
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    move-object v1, v2

    .line 1379
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v1, :cond_1

    .line 1380
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    move-object v4, v3

    .line 1384
    goto :goto_0

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    .local v0, e:Ljava/io/IOException;
    :goto_3
    new-instance v3, Ljava/lang/String;

    .end local v3           #ret:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_1

    .line 1381
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 1374
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private declared-synchronized scheduleUpload(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const-wide/32 v4, 0x1b77400

    .line 1298
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 1299
    const-string v0, "htcMessageUploader"

    const-string v1, "scheduleUpload()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_0
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.server.checkin.FOTA_UPLOAD_MESSAGE"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1302
    .local v9, schedIntent:Landroid/content/Intent;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v9, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1304
    .local v6, sender:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->hasLog()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mNetworkConnected:Z

    if-nez v0, :cond_3

    .line 1305
    :cond_1
    sget-boolean v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v0, :cond_2

    .line 1306
    const-string v0, "htcMessageUploader"

    const-string v1, "Cancel Schedule since no log or network off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_2
    iget-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1322
    :goto_0
    monitor-exit p0

    return-void

    .line 1312
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1313
    .local v7, now:J
    invoke-direct {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getLastUploadTime()J

    move-result-wide v0

    add-long v2, v0, v4

    .line 1314
    .local v2, next:J
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1316
    const-string v0, "htcMessageUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start to upload at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v4, v2, v7

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ms later, and repeat every "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/32 v4, 0x1b77400

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    sget-boolean v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v0, :cond_4

    .line 1318
    const-string v0, "htcMessageUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last uploading started at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getLastUploadTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ms, current time is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_4
    iget-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    const-wide/32 v4, 0x1b77400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1298
    .end local v2           #next:J
    .end local v6           #sender:Landroid/app/PendingIntent;
    .end local v7           #now:J
    .end local v9           #schedIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private uploadAppupdateExtraMsg(Ljava/lang/String;Z)Z
    .locals 17
    .parameter "strContent"
    .parameter "isIndividualAPU"

    .prologue
    .line 475
    const-string v14, "htcMessageUploader"

    const-string v15, "ExtraMsg for Appupdate!!"

    invoke-static {v14, v15}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/4 v3, 0x0

    .line 478
    .local v3, bResult:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->APPUPDATE_MSG_PREFIX:Ljava/lang/String;

    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 479
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->IDVAPPUPDATE_MSG_PREFIX:Ljava/lang/String;

    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 480
    const-string v14, "htcMessageUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "uploadAppupdateExtraMsg(). Appupdate ExtraMsg: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v10, 0x0

    .line 482
    .local v10, post:Lorg/apache/http/client/methods/HttpPost;
    const/4 v6, 0x0

    .line 484
    .local v6, httClient:Landroid/net/http/AndroidHttpClient;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getAppupdateUploadURL(Z)Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, appupdateMsgURL:Ljava/lang/String;
    const-string v14, "htcMessageUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Appupdate ExtraMsg URL:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :try_start_0
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v11, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .end local v10           #post:Lorg/apache/http/client/methods/HttpPost;
    .local v11, post:Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    const-string v14, "Content-type"

    const-string v15, "application/json"

    invoke-virtual {v11, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v14, Lorg/apache/http/entity/StringEntity;

    const-string v15, "UTF-8"

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v15}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 492
    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    .line 493
    .local v7, length:J
    const-string v14, "htcMessageUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Sending AppUpdate checkin request ( length:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bytes)..."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v14, "AppUpdate-ExtraMsg/3.0"

    invoke-static {v14}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v6

    .line 497
    const/4 v14, 0x0

    check-cast v14, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v6, v11, v14}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 498
    .local v12, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    .line 499
    .local v13, status:Lorg/apache/http/StatusLine;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 500
    .local v5, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 502
    .local v9, nStatus:I
    const/16 v14, 0xc8

    if-ne v9, v14, :cond_2

    const/4 v3, 0x1

    .line 503
    :goto_0
    const-string v14, "htcMessageUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Upload status:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 508
    if-eqz v11, :cond_0

    .line 509
    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 510
    :cond_0
    if-eqz v6, :cond_6

    .line 511
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v10, v11

    .line 513
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #length:J
    .end local v9           #nStatus:I
    .end local v11           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #status:Lorg/apache/http/StatusLine;
    .restart local v10       #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_1
    :goto_1
    return v3

    .line 502
    .end local v10           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #entity:Lorg/apache/http/HttpEntity;
    .restart local v7       #length:J
    .restart local v9       #nStatus:I
    .restart local v11       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #status:Lorg/apache/http/StatusLine;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 504
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #length:J
    .end local v9           #nStatus:I
    .end local v11           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #status:Lorg/apache/http/StatusLine;
    .restart local v10       #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v4

    .line 505
    .local v4, e:Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string v14, "htcMessageUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Err in performAppCheckin(), Err:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    const/4 v3, 0x0

    .line 508
    if-eqz v10, :cond_3

    .line 509
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 510
    :cond_3
    if-eqz v6, :cond_1

    .line 511
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    .line 508
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v10, :cond_4

    .line 509
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 510
    :cond_4
    if-eqz v6, :cond_5

    .line 511
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_5
    throw v14

    .line 508
    .end local v10           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v11       #post:Lorg/apache/http/client/methods/HttpPost;
    :catchall_1
    move-exception v14

    move-object v10, v11

    .end local v11           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v10       #post:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_3

    .line 504
    .end local v10           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v11       #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v4

    move-object v10, v11

    .end local v11           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v10       #post:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .end local v10           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #entity:Lorg/apache/http/HttpEntity;
    .restart local v7       #length:J
    .restart local v9       #nStatus:I
    .restart local v11       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #status:Lorg/apache/http/StatusLine;
    :cond_6
    move-object v10, v11

    .end local v11           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v10       #post:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_1
.end method


# virtual methods
.method public clearFile()V
    .locals 7

    .prologue
    .line 1151
    sget-boolean v4, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    .line 1152
    const-string v4, "htcMessageUploader"

    const-string v5, "clearFile()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.htc.htcMessageUploader/message_queue"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1155
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 1159
    .local v2, writer:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/data/data/com.htc.htcMessageUploader/message_queue"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .local v3, writer:Ljava/io/BufferedWriter;
    :try_start_1
    const-string v4, " "

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1164
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v3

    .line 1171
    .end local v3           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 1164
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1166
    :catch_0
    move-exception v0

    .line 1168
    .local v0, e:Ljava/io/IOException;
    :goto_2
    const-string v4, "htcMessageUploader"

    const-string v5, "clearFile ERROR: IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const-string v4, "htcMessageUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1166
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #writer:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 1164
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #writer:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 256
    .local v0, nStart:J
    iput-object p1, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    .line 257
    iput-object p2, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    .line 258
    const-string v2, "htcMessageUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start thread to upload fota event message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v2, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 262
    const-string v2, "htcMessageUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total time in main thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milli-seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 268
    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 269
    :try_start_0
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    if-eqz v7, :cond_0

    .line 270
    const-string v7, "htcMessageUploader"

    const-string v9, "Another thread is running for UploadMessageReceiver."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    monitor-exit v8

    .line 468
    :goto_0
    return-void

    .line 274
    :cond_0
    const/4 v7, 0x1

    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 275
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 276
    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 280
    :try_start_1
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v7, :cond_1

    .line 281
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    iput-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    .line 284
    :cond_1
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.server.checkin.FOTA_UPLOAD_MESSAGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 285
    const-string v7, "htcMessageUploader"

    const-string v8, "[UploadMessageReceiver] By schedule rule, starting upload process "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v7, :cond_2

    .line 288
    const-string v7, "htcMessageUploader"

    const-string v8, " Receive schedule intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_2
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mNetworkConnected:Z

    if-nez v7, :cond_4

    .line 291
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v7, :cond_3

    .line 292
    const-string v7, "htcMessageUploader"

    const-string v8, "Send intent to cancel schedule"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_3
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->cancelSchedule(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 463
    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 464
    const/4 v7, 0x0

    :try_start_2
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 465
    const-string v7, "htcMessageUploader"

    const-string v9, "== UploadMessageReceiver finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 275
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 296
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->hasLog()Z

    move-result v7

    if-ne v7, v10, :cond_5

    .line 297
    const-string v7, "htcMessageUploader"

    const-string v8, "Having logs in message queue and preparing to upload message"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->sendQueue()V

    .line 306
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->writeUploadTime(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 463
    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 464
    const/4 v7, 0x0

    :try_start_5
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 465
    const-string v7, "htcMessageUploader"

    const-string v9, "== UploadMessageReceiver finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v7

    .line 301
    :cond_5
    :try_start_6
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v7, :cond_6

    .line 302
    const-string v7, "htcMessageUploader"

    const-string v8, "Send intent to cancel schedule"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_6
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->cancelSchedule(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v7, "htcMessageUploader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upload Message error. err:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 463
    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 464
    const/4 v7, 0x0

    :try_start_8
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 465
    const-string v7, "htcMessageUploader"

    const-string v9, "== UploadMessageReceiver finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8

    goto/16 :goto_0

    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v7

    .line 308
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_9
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.server.checkin.FOTA_INSTALL_COMPLETE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.server.checkin.FOTA_VERIFY_COMPLETE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.server.checkin.FOTA_FIRST_SUCCESS_CHECKIN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 312
    :cond_8
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v7, :cond_9

    .line 313
    const-string v7, "htcMessageUploader"

    const-string v8, "Receive INSTALL_COMPLETE_ACTION or VERIFY_COMPLETE_ACTION intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_9
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v7}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->prepareMessage(Landroid/content/Intent;)Lcom/htc/htcMessageUploader/UploadMessage;

    move-result-object v3

    .line 318
    .local v3, message:Lcom/htc/htcMessageUploader/UploadMessage;
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mNetworkConnected:Z

    if-nez v7, :cond_a

    .line 319
    invoke-virtual {p0, v3}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->writeToFile(Lcom/htc/htcMessageUploader/UploadMessage;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 463
    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 464
    const/4 v7, 0x0

    :try_start_a
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 465
    const-string v7, "htcMessageUploader"

    const-string v9, "== UploadMessageReceiver finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8

    goto/16 :goto_0

    :catchall_4
    move-exception v7

    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v7

    .line 325
    :cond_a
    if-nez v3, :cond_b

    .line 463
    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 464
    const/4 v7, 0x0

    :try_start_b
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 465
    const-string v7, "htcMessageUploader"

    const-string v9, "== UploadMessageReceiver finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8

    goto/16 :goto_0

    :catchall_5
    move-exception v7

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v7

    .line 329
    :cond_b
    :try_start_c
    invoke-static {}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->hasLog()Z

    move-result v7

    if-ne v7, v10, :cond_c

    .line 330
    const-string v7, "htcMessageUploader"

    const-string v8, "Having logs in message queue and preparing to upload message"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->sendQueue()V

    .line 333
    :cond_c
    const-string v7, "htcMessageUploader"

    const-string v8, "Ready to send the current message"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0, v3}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->sendMessage(Lcom/htc/htcMessageUploader/UploadMessage;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 336
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v7, :cond_d

    .line 337
    const-string v7, "htcMessageUploader"

    const-string v8, "Sending message fails "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_d
    invoke-virtual {p0, v3}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->writeToFile(Lcom/htc/htcMessageUploader/UploadMessage;)V

    .line 340
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v7, :cond_e

    .line 341
    const-string v7, "htcMessageUploader"

    const-string v8, "Send intent to start schedule"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_e
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->scheduleUpload(Landroid/content/Context;)V

    .line 354
    :cond_f
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->writeUploadTime(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 463
    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 464
    const/4 v7, 0x0

    :try_start_d
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 465
    const-string v7, "htcMessageUploader"

    const-string v9, "== UploadMessageReceiver finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8

    goto/16 :goto_0

    :catchall_6
    move-exception v7

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v7

    .line 348
    :cond_10
    :try_start_e
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v7, :cond_f

    .line 349
    const-string v7, "htcMessageUploader"

    const-string v8, "Sending message successes "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_2

    .line 463
    .end local v3           #message:Lcom/htc/htcMessageUploader/UploadMessage;
    :catchall_7
    move-exception v7

    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 464
    const/4 v9, 0x0

    :try_start_f
    sput-boolean v9, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 465
    const-string v9, "htcMessageUploader"

    const-string v10, "== UploadMessageReceiver finished =="

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v7

    .line 356
    :cond_11
    :try_start_10
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 358
    const-string v7, "htcMessageUploader"

    const-string v8, "Get CONNECTIVITY_ACTION intent "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    const-string v8, "networkInfo"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 360
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_15

    .line 363
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v7, :cond_12

    .line 364
    const-string v7, "htcMessageUploader"

    const-string v8, "Network is on"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_12
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mNetworkConnected:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    if-eqz v7, :cond_13

    .line 463
    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 464
    const/4 v7, 0x0

    :try_start_11
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 465
    const-string v7, "htcMessageUploader"

    const-string v9, "== UploadMessageReceiver finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8

    goto/16 :goto_0

    :catchall_8
    move-exception v7

    monitor-exit v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    throw v7

    .line 366
    :cond_13
    const/4 v7, 0x1

    :try_start_12
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mNetworkConnected:Z

    .line 377
    :goto_3
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v7, :cond_14

    .line 378
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    iput-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    .line 379
    :cond_14
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->scheduleUpload(Landroid/content/Context;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    .line 463
    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 464
    const/4 v7, 0x0

    :try_start_13
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 465
    const-string v7, "htcMessageUploader"

    const-string v9, "== UploadMessageReceiver finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8

    goto/16 :goto_0

    :catchall_9
    move-exception v7

    monitor-exit v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    throw v7

    .line 369
    :cond_15
    :try_start_14
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v7, :cond_16

    .line 370
    const-string v7, "htcMessageUploader"

    const-string v8, "Network is off"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_16
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mNetworkConnected:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    if-nez v7, :cond_17

    .line 463
    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 464
    const/4 v7, 0x0

    :try_start_15
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 465
    const-string v7, "htcMessageUploader"

    const-string v9, "== UploadMessageReceiver finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8

    goto/16 :goto_0

    :catchall_a
    move-exception v7

    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    throw v7

    .line 372
    :cond_17
    const/4 v7, 0x0

    :try_start_16
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mNetworkConnected:Z

    goto :goto_3

    .line 381
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_18
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    move-result v7

    if-eqz v7, :cond_19

    .line 463
    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 464
    const/4 v7, 0x0

    :try_start_17
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 465
    const-string v7, "htcMessageUploader"

    const-string v9, "== UploadMessageReceiver finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8

    goto/16 :goto_0

    :catchall_b
    move-exception v7

    monitor-exit v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    throw v7

    .line 383
    :cond_19
    :try_start_18
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.server.checkin.APP_RUNUPDATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.server.checkin.APPUPDATE_SUCCESS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.server.checkin.APPUPDATE_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 387
    :cond_1a
    const-string v7, "htcMessageUploader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get Appupdate intent: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]!!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v2, 0x0

    .line 392
    .local v2, jsonContent:Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.server.checkin.APP_RUNUPDATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 393
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v7}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getAcceptJSONObject(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v2

    .line 395
    :cond_1b
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.server.checkin.APPUPDATE_SUCCESS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.server.checkin.APPUPDATE_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 397
    :cond_1c
    new-instance v4, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    const-string v8, "apkinfo"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 398
    .local v4, objAPKInfo:Lorg/json/JSONObject;
    const-string v7, "htcMessageUploader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get appupdate Succeed/Fail intent:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    const-string v10, "apkinfo"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getBasicData()Lorg/json/JSONObject;

    move-result-object v2

    .line 400
    const-string v7, "tag1"

    const-string v8, "tag1"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    const-string v7, "tag2"

    const-string v8, "tag2"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.server.checkin.APPUPDATE_SUCCESS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 403
    const-string v7, "status"

    const-string v8, "INSTALL_SUCCESS"

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    :cond_1d
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.server.checkin.APPUPDATE_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 405
    const-string v7, "status"

    const-string v8, "INSTALL_FAILED"

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    :cond_1e
    const-string v7, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 410
    .local v5, objJarray:Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 411
    .local v6, temp:Lorg/json/JSONObject;
    const-string v7, "apkId"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string v7, "packageName"

    const-string v8, "fakePkg"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    const-string v7, "versionCode"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 415
    const-string v7, "installable"

    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    .end local v4           #objAPKInfo:Lorg/json/JSONObject;
    .end local v5           #objJarray:Lorg/json/JSONArray;
    .end local v6           #temp:Lorg/json/JSONObject;
    :cond_1f
    new-instance v3, Lcom/htc/htcMessageUploader/UploadMessage;

    invoke-direct {v3}, Lcom/htc/htcMessageUploader/UploadMessage;-><init>()V

    .line 420
    .restart local v3       #message:Lcom/htc/htcMessageUploader/UploadMessage;
    invoke-virtual {v3}, Lcom/htc/htcMessageUploader/UploadMessage;->enableAppUpdateMsg()V

    .line 421
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/htc/htcMessageUploader/UploadMessage;->setAppUpdateMsgContent(Ljava/lang/String;)V

    .line 422
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mIntent:Landroid/content/Intent;

    const-string v8, "package_name"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 423
    invoke-virtual {v3}, Lcom/htc/htcMessageUploader/UploadMessage;->setIndividualAPU()V

    .line 424
    const-string v7, "htcMessageUploader"

    const-string v8, "extra msg for iapu"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_20
    const-string v7, "htcMessageUploader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Appupdate msg:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mNetworkConnected:Z

    if-nez v7, :cond_21

    .line 431
    const-string v7, "htcMessageUploader"

    const-string v8, "Appupdate msg is postponed. network is OFF"

    invoke-static {v7, v8}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0, v3}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->writeToFile(Lcom/htc/htcMessageUploader/UploadMessage;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    .line 463
    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 464
    const/4 v7, 0x0

    :try_start_19
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 465
    const-string v7, "htcMessageUploader"

    const-string v9, "== UploadMessageReceiver finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8

    goto/16 :goto_0

    :catchall_c
    move-exception v7

    monitor-exit v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    throw v7

    .line 436
    :cond_21
    :try_start_1a
    invoke-static {}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->hasLog()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 437
    const-string v7, "htcMessageUploader"

    const-string v8, "Having logs in message queue and preparing to upload message"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->sendQueue()V

    .line 441
    :cond_22
    const-string v7, "htcMessageUploader"

    const-string v8, "Ready to send current Appupdate message"

    invoke-static {v7, v8}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0, v3}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->sendMessage(Lcom/htc/htcMessageUploader/UploadMessage;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 443
    const-string v7, "htcMessageUploader"

    const-string v8, "Sending Appupdate message failed!"

    invoke-static {v7, v8}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0, v3}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->writeToFile(Lcom/htc/htcMessageUploader/UploadMessage;)V

    .line 446
    const-string v7, "htcMessageUploader"

    const-string v8, "Send intent to start schedule for appupdate"

    invoke-static {v7, v8}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v7, p0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->scheduleUpload(Landroid/content/Context;)V

    .line 452
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->writeUploadTime(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    .line 463
    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 464
    const/4 v7, 0x0

    :try_start_1b
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 465
    const-string v7, "htcMessageUploader"

    const-string v9, "== UploadMessageReceiver finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8

    goto/16 :goto_0

    :catchall_d
    move-exception v7

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    throw v7

    .line 449
    :cond_23
    :try_start_1c
    const-string v7, "htcMessageUploader"

    const-string v8, "Appupdate message is sent successesly"

    invoke-static {v7, v8}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 457
    .end local v2           #jsonContent:Lorg/json/JSONObject;
    .end local v3           #message:Lcom/htc/htcMessageUploader/UploadMessage;
    :cond_24
    sget-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v7, :cond_25

    .line 458
    const-string v7, "htcMessageUploader"

    const-string v8, "Receive unknown intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    .line 463
    :cond_25
    sget-object v8, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v8

    .line 464
    const/4 v7, 0x0

    :try_start_1d
    sput-boolean v7, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->mJobRunning:Z

    .line 465
    const-string v7, "htcMessageUploader"

    const-string v9, "== UploadMessageReceiver finished =="

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v8

    goto/16 :goto_0

    :catchall_e
    move-exception v7

    monitor-exit v8
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    throw v7

    :catchall_f
    move-exception v7

    :try_start_1e
    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    throw v7
.end method

.method public declared-synchronized sendMessage(Lcom/htc/htcMessageUploader/UploadMessage;)Z
    .locals 17
    .parameter "msg"

    .prologue
    .line 842
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/htc/htcMessageUploader/UploadMessage;->isAppUpdateMsg()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 843
    invoke-virtual/range {p1 .. p1}, Lcom/htc/htcMessageUploader/UploadMessage;->toRecord()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/htc/htcMessageUploader/UploadMessage;->isIndividualAPUMsg()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->uploadAppupdateExtraMsg(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 931
    :goto_0
    monitor-exit p0

    return v8

    .line 845
    :cond_0
    const/4 v8, 0x0

    .line 848
    .local v8, result:Z
    :try_start_1
    const-string v14, "ro.cid"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 849
    .local v2, cid:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getMNC_MCC()Ljava/lang/String;

    move-result-object v6

    .line 850
    .local v6, mcc_mnc:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getConnectMedia()Ljava/lang/String;

    move-result-object v3

    .line 851
    .local v3, connMedia:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getLocation()Ljava/lang/String;

    move-result-object v9

    .line 852
    .local v9, strLocation:Ljava/lang/String;
    const-string v14, "htcMessageUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get city_label:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IMEI"

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/htc/htcMessageUploader/UploadMessage;->imei:Ljava/lang/String;

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 856
    .local v4, data:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "VERSION"

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/htc/htcMessageUploader/UploadMessage;->version:Ljava/lang/String;

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 858
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "MODEL"

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/htc/htcMessageUploader/UploadMessage;->model:Ljava/lang/String;

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 860
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "TIME"

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/htc/htcMessageUploader/UploadMessage;->timestamp:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 864
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "STATUS"

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/htc/htcMessageUploader/UploadMessage;->status:Ljava/lang/String;

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 866
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "cid"

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-static {v2, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 868
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "mcc_mnc"

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-static {v6, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 870
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "connection_media"

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-static {v3, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 872
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "city_label"

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-static {v9, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 876
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/htc/htcMessageUploader/UploadMessage;->tag1:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 877
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "tag1"

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/htc/htcMessageUploader/UploadMessage;->tag1:Ljava/lang/String;

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 880
    :cond_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/htc/htcMessageUploader/UploadMessage;->tag2:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    .line 881
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "tag2"

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/htc/htcMessageUploader/UploadMessage;->tag2:Ljava/lang/String;

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 885
    :cond_2
    const-string v14, "htcMessageUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "post data:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-direct/range {p0 .. p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->getUploadURL()Ljava/lang/String;

    move-result-object v12

    .line 890
    .local v12, urlPath:Ljava/lang/String;
    const-string v14, "htcMessageUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Extra-message upload URL:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 893
    .local v10, url:Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    .line 895
    .local v11, urlConnection:Ljava/net/HttpURLConnection;
    const/16 v1, 0x7d0

    .line 899
    .local v1, HTTP_TIMEOUT:I
    invoke-virtual {v11, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 902
    const-string v14, "POST"

    invoke-virtual {v11, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 903
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 904
    new-instance v13, Ljava/io/OutputStreamWriter;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 907
    .local v13, wr:Ljava/io/OutputStreamWriter;
    :try_start_2
    const-string v14, "htcMessageUploader"

    const-string v15, "Sending message "

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    sget-boolean v14, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v14, :cond_3

    .line 909
    const-string v14, "htcMessageUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_3
    invoke-virtual {v13, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->flush()V

    .line 913
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->connect()V

    .line 914
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 915
    .local v7, responseCode:I
    const/16 v14, 0xc8

    if-ne v7, v14, :cond_4

    .line 916
    const/4 v8, 0x1

    .line 917
    const-string v14, "htcMessageUploader"

    const-string v15, "Sending is successful"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 923
    :goto_1
    :try_start_3
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 925
    .end local v1           #HTTP_TIMEOUT:I
    .end local v2           #cid:Ljava/lang/String;
    .end local v3           #connMedia:Ljava/lang/String;
    .end local v4           #data:Ljava/lang/String;
    .end local v6           #mcc_mnc:Ljava/lang/String;
    .end local v7           #responseCode:I
    .end local v9           #strLocation:Ljava/lang/String;
    .end local v10           #url:Ljava/net/URL;
    .end local v11           #urlConnection:Ljava/net/HttpURLConnection;
    .end local v12           #urlPath:Ljava/lang/String;
    .end local v13           #wr:Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v5

    .line 927
    .local v5, e:Ljava/lang/Exception;
    :try_start_4
    const-string v14, "htcMessageUploader"

    const-string v15, "sendMessage ERROR"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const-string v14, "htcMessageUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 842
    .end local v5           #e:Ljava/lang/Exception;
    .end local v8           #result:Z
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 919
    .restart local v1       #HTTP_TIMEOUT:I
    .restart local v2       #cid:Ljava/lang/String;
    .restart local v3       #connMedia:Ljava/lang/String;
    .restart local v4       #data:Ljava/lang/String;
    .restart local v6       #mcc_mnc:Ljava/lang/String;
    .restart local v7       #responseCode:I
    .restart local v8       #result:Z
    .restart local v9       #strLocation:Ljava/lang/String;
    .restart local v10       #url:Ljava/net/URL;
    .restart local v11       #urlConnection:Ljava/net/HttpURLConnection;
    .restart local v12       #urlPath:Ljava/lang/String;
    .restart local v13       #wr:Ljava/io/OutputStreamWriter;
    :cond_4
    :try_start_5
    const-string v14, "htcMessageUploader"

    const-string v15, "Sending fails"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-string v14, "htcMessageUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Status code = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 923
    .end local v7           #responseCode:I
    :catchall_1
    move-exception v14

    :try_start_6
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->close()V

    throw v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public declared-synchronized sendQueue()V
    .locals 8

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    sget-boolean v5, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v5, :cond_0

    .line 656
    const-string v5, "htcMessageUploader"

    const-string v6, "sendQueue()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    invoke-static {}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->readFromFile()Ljava/util/ArrayList;

    move-result-object v0

    .line 659
    .local v0, msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcMessageUploader/UploadMessage;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 695
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 661
    :cond_2
    const/4 v2, 0x0

    .line 662
    .local v2, send:Z
    const/4 v4, 0x0

    .line 663
    .local v4, toSend:I
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 664
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcMessageUploader/UploadMessage;

    invoke-virtual {p0, v5}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->sendMessage(Lcom/htc/htcMessageUploader/UploadMessage;)Z

    move-result v2

    .line 665
    if-nez v2, :cond_5

    .line 666
    sget-boolean v5, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v5, :cond_3

    .line 667
    const-string v5, "htcMessageUploader"

    const-string v6, "Sending fail, save messages not sent to message queue"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v5, "htcMessageUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " records, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " records has sent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_3
    if-lez v4, :cond_7

    .line 672
    const/4 v3, 0x0

    .local v3, sent:I
    :goto_2
    if-ge v3, v4, :cond_4

    .line 673
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 672
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 675
    :cond_4
    invoke-virtual {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->clearFile()V

    .line 676
    const/4 v1, 0x0

    .local v1, s:I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 677
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcMessageUploader/UploadMessage;

    invoke-virtual {p0, v5}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->writeToFile(Lcom/htc/htcMessageUploader/UploadMessage;)V

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 682
    .end local v1           #s:I
    .end local v3           #sent:I
    :cond_5
    sget-boolean v5, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v5, :cond_6

    .line 683
    const-string v5, "htcMessageUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending message success, still has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " messages to send."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 688
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 689
    invoke-virtual {p0}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->clearFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 655
    .end local v0           #msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcMessageUploader/UploadMessage;>;"
    .end local v2           #send:Z
    .end local v4           #toSend:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public writeToFile(Lcom/htc/htcMessageUploader/UploadMessage;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 1177
    const-string v5, "htcMessageUploader"

    const-string v6, "writeToFile()"

    invoke-static {v5, v6}, Lcom/htc/htcMessageUploader/UploadMessageReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/htcMessageUploader/UploadMessage;->toRecord()Ljava/lang/String;

    move-result-object v3

    .line 1180
    .local v3, record:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v5, "/data/data/com.htc.htcMessageUploader"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v0, dir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/data/com.htc.htcMessageUploader/message_queue"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1183
    .local v2, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1184
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1185
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1186
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1187
    :cond_1
    const/4 v4, 0x0

    .line 1189
    .local v4, writer:Ljava/io/BufferedWriter;
    new-instance v4, Ljava/io/BufferedWriter;

    .end local v4           #writer:Ljava/io/BufferedWriter;
    new-instance v5, Ljava/io/FileWriter;

    const-string v6, "/data/data/com.htc.htcMessageUploader/message_queue"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    .restart local v4       #writer:Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 1194
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1196
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 1202
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #record:Ljava/lang/String;
    .end local v4           #writer:Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 1196
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #record:Ljava/lang/String;
    .restart local v4       #writer:Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1198
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #record:Ljava/lang/String;
    .end local v4           #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 1199
    .local v1, e:Ljava/io/IOException;
    const-string v5, "htcMessageUploader"

    const-string v6, "writeToFile ERROR: IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-string v5, "htcMessageUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected writeUploadTime(Ljava/lang/String;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 804
    sget-boolean v4, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    .line 805
    const-string v4, "htcMessageUploader"

    const-string v5, "writeUploadTime()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/data/com.htc.htcMessageUploader/upload_time"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 809
    .local v2, file:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/data/com.htc.htcMessageUploader"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 810
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 811
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    .line 812
    sget-boolean v4, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v4, :cond_1

    .line 813
    const-string v4, "htcMessageUploader"

    const-string v5, " can\'t creat dir :: /data/data/com.htc.htcMessageUploader"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 817
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 818
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 821
    :cond_3
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/data/data/com.htc.htcMessageUploader/upload_time"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    .local v3, writer:Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 825
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 830
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 831
    .local v1, e:Ljava/io/IOException;
    const-string v4, "htcMessageUploader"

    const-string v5, "writeUploadTime ERROR: IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const-string v4, "htcMessageUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 828
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #writer:Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method
