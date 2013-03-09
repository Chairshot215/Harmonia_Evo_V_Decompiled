.class public Lcom/android/providers/htcCheckin/appUpdateExecuter;
.super Ljava/lang/Object;
.source "appUpdateExecuter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;
    }
.end annotation


# static fields
.field private static final APP_DFT_CHECKIN_URL:Ljava/lang/String; = "http://apu-chin.htc.com/check-in/rws/and-app/update"

.field private static final APP_DFT_CHECKIN_URL_CN:Ljava/lang/String; = "http://apu-chin.htccomm.com.cn/check-in/rws/and-app/update"

.field private static final APP_IDV_CHECKIN_URL:Ljava/lang/String; = "http://apu-chin.htc.com/check-in/rws/and-app/update-i/"

.field private static final APP_IDV_CHECKIN_URL_CN:Ljava/lang/String; = "http://apu-chin.htccomm.com.cn/check-in/rws/and-app/update-i"

.field private static final APP_PROP_CHECKIN_URL:Ljava/lang/String; = "ro.htc.appupdate.url"

.field private static final APP_PROP_CHECKIN_URL_CN:Ljava/lang/String; = "ro.htc.appupdate.url_CN"

.field public static final AppUpdate_TABLE_NAME:Ljava/lang/String; = "appupdate"

.field public static final AppUpdate_apkId:Ljava/lang/String; = "apkId"

.field public static final AppUpdate_finished:Ljava/lang/String; = "finished"

.field public static final AppUpdate_installType:Ljava/lang/String; = "installType"

.field public static final AppUpdate_order:Ljava/lang/String; = "apkOrder"

.field public static final AppUpdate_packageName:Ljava/lang/String; = "packageName"

.field public static final AppUpdate_size:Ljava/lang/String; = "appSize"

.field public static final AppUpdate_source:Ljava/lang/String; = "source"

.field public static final AppUpdate_timestamp:Ljava/lang/String; = "timestamp"

.field public static final AppUpdate_versionCode:Ljava/lang/String; = "versionCode"

.field private static final COTA_ENABLE_PROPERTY:Ljava/lang/String; = "ro.config.htc.enableCOTA"

.field private static final IAPP_PROP_CHECKIN_URL:Ljava/lang/String; = "ro.htc.iappupdate.url"

.field private static final IAPP_PROP_CHECKIN_URL_CN:Ljava/lang/String; = "ro.htc.iappupdate.url_CN"

.field private static final LOCAL_LOGV:Z = false

.field public static final Settings_HTCservices_LATEST_APK_TIMESTAMP:Ljava/lang/String; = "latest_apk_timestamp"

.field protected static final TAG:Ljava/lang/String; = "FOTA.AppUpdate"


# instance fields
.field private final APPUPDATE_AGENT:Ljava/lang/String;

.field private final CLIENT_VERSION:Ljava/lang/String;

.field private final INTENT_APP_CANCEL:Ljava/lang/String;

.field private final INTENT_APP_CANCEL_OMADM:Ljava/lang/String;

.field private final INTENT_APP_RUNUPDATE:Ljava/lang/String;

.field private final INTENT_APP_UPDATE:Ljava/lang/String;

.field private final INTENT_COTA_CHECKIN:Ljava/lang/String;

.field private final INTENT_SRC_PUSHMODE:Ljava/lang/String;

.field final SEPATATER:Ljava/lang/String;

.field final STA_NEW:Ljava/lang/String;

.field final STA_UPDATE:Ljava/lang/String;

.field private final STRING_EMPTY:Ljava/lang/String;

.field private final STRING_NA:Ljava/lang/String;

.field private final STRING_NA_NUM:Ljava/lang/String;

.field private final STRING_UNKNOWN:Ljava/lang/String;

.field private bIndividualApu:Z

.field private mCheckType:Ljava/lang/String;

.field private mConMgr:Landroid/net/ConnectivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCtext:Landroid/content/Context;

.field private mPkgMgr:Landroid/content/pm/PackageManager;

.field private mRunAppUpdateReceiver:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;

.field private mTargetPackage:Ljava/lang/String;

.field private mTriggerType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "pushmode"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->INTENT_SRC_PUSHMODE:Ljava/lang/String;

    .line 69
    const-string v0, "U"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->STRING_UNKNOWN:Ljava/lang/String;

    .line 70
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->STRING_NA:Ljava/lang/String;

    .line 71
    const-string v0, "-1"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->STRING_NA_NUM:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->STRING_EMPTY:Ljava/lang/String;

    .line 73
    const-string v0, "A3.5"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->CLIENT_VERSION:Ljava/lang/String;

    .line 74
    const-string v0, "AppUpdate-Checkin/3.5"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->APPUPDATE_AGENT:Ljava/lang/String;

    .line 83
    const-string v0, "android.server.checkin.APP_CANCEL"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->INTENT_APP_CANCEL:Ljava/lang/String;

    .line 84
    const-string v0, "android.server.checkin.APP_CANCEL_OMADM"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->INTENT_APP_CANCEL_OMADM:Ljava/lang/String;

    .line 85
    const-string v0, "android.server.checkin.APP_UPDATE"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->INTENT_APP_UPDATE:Ljava/lang/String;

    .line 86
    const-string v0, "android.server.checkin.APP_RUNUPDATE"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->INTENT_APP_RUNUPDATE:Ljava/lang/String;

    .line 87
    const-string v0, "android.server.HTCCOTA.CHECKIN"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->INTENT_COTA_CHECKIN:Ljava/lang/String;

    .line 88
    const-string v0, ","

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->SEPATATER:Ljava/lang/String;

    .line 89
    const-string v0, "new"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->STA_NEW:Ljava/lang/String;

    .line 90
    const-string v0, "update"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->STA_UPDATE:Ljava/lang/String;

    .line 105
    const-string v0, "U"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCheckType:Ljava/lang/String;

    .line 106
    const-string v0, "U"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mTriggerType:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->bIndividualApu:Z

    .line 111
    const-string v0, "U"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mTargetPackage:Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCtext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mContentResolver:Landroid/content/ContentResolver;

    .line 118
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mConMgr:Landroid/net/ConnectivityManager;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 122
    new-instance v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;

    invoke-direct {v0, p1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mRunAppUpdateReceiver:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;

    .line 123
    return-void
.end method

.method private DumpArrayList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p1, pAry:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 655
    const-string v2, "FOTA.AppUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_0
    return-void
.end method

.method private DumpMap(Ljava/util/TreeMap;)V
    .locals 6
    .parameter "map"

    .prologue
    .line 638
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 639
    :cond_0
    const-string v3, "FOTA.AppUpdate"

    const-string v4, "map is null or size is 0!"

    invoke-static {v3, v4}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :cond_1
    return-void

    .line 642
    :cond_2
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 643
    .local v2, set:Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 644
    .local v1, itr:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 645
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 646
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/providers/htcCheckin/apkInfo;>;"
    const-string v4, "FOTA.AppUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Value:\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/htcCheckin/apkInfo;

    invoke-virtual {v3}, Lcom/android/providers/htcCheckin/apkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private composeAppCheckinJSON()Lorg/json/JSONObject;
    .locals 28

    .prologue
    .line 287
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 291
    .local v17, objJSon:Lorg/json/JSONObject;
    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 292
    .local v16, objCheckin:Lorg/json/JSONObject;
    const-string v25, "checkIn"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 295
    .local v15, objBuild:Lorg/json/JSONObject;
    const-string v25, "build"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string v25, "ro.product.model"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 298
    .local v14, modelno:Ljava/lang/String;
    if-nez v14, :cond_0

    const-string v14, "N/A"

    .line 299
    :cond_0
    const-string v25, "modelNum"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    invoke-static {}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->getPhoneIdentity()Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, imei:Ljava/lang/String;
    if-nez v8, :cond_1

    const-string v8, "-1"

    .line 304
    :cond_1
    const-string v25, "imei"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v25, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v25, "ro.build.version.sdk"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, apiLevel:Ljava/lang/String;
    if-nez v3, :cond_2

    const-string v3, "-1"

    .line 310
    :cond_2
    const-string v25, "apiLevel"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v25, "ro.htc.common.version"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 313
    .local v18, openSenseSdk:Ljava/lang/String;
    if-nez v18, :cond_3

    const-string v18, "-1"

    .line 314
    :cond_3
    const-string v25, "openSenseSdk"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->getSenseSDKVer(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->readLatestAPKTimestamp()Ljava/lang/String;

    move-result-object v10

    .line 325
    .local v10, latestAPKTimestamp:Ljava/lang/String;
    if-nez v10, :cond_4

    const-string v10, "-1"

    .line 326
    :cond_4
    const-string v25, "timestamp"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->getLocation()Ljava/lang/String;

    move-result-object v11

    .line 330
    .local v11, location:Ljava/lang/String;
    const-string v25, "city_label"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v25, "checkType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCheckType:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->getMNC_MCC()Ljava/lang/String;

    move-result-object v12

    .line 336
    .local v12, mccMnc:Ljava/lang/String;
    if-nez v12, :cond_5

    const-string v12, "N/A"

    .line 337
    :cond_5
    const-string v25, "FOTA.AppUpdate"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mccmnc: ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v25, "mccMnc"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->getMID()Ljava/lang/String;

    move-result-object v13

    .line 341
    .local v13, mid:Ljava/lang/String;
    if-nez v13, :cond_6

    const-string v13, "N/A"

    .line 342
    :cond_6
    const-string v25, "mid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v25, "ro.cid"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, cid:Ljava/lang/String;
    if-nez v5, :cond_7

    const-string v5, "N/A"

    .line 346
    :cond_7
    const-string v25, "cid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->getConnectMedia()Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, connectMedia:Ljava/lang/String;
    const-string v25, "connectMedia"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->getIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 352
    .local v9, ip:Ljava/lang/String;
    const-string v25, "ip"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v25, "clientVersion"

    const-string v26, "A3.5"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->bIndividualApu:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 357
    const-string v25, "targetPackage"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mTargetPackage:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    :cond_8
    const-string v25, "ro.build.description"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 361
    .local v22, romVersion:Ljava/lang/String;
    if-nez v22, :cond_9

    const-string v22, "N/A"

    .line 362
    :cond_9
    const-string v25, "romVersion"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v25, "mainVersion"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->getMainVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v25, "cl"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->getChangeList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v25, "sku"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->getSKU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    const-string v25, "key"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v21, "gsm.version.baseband"

    .line 369
    .local v21, radioProp:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 370
    .local v20, radio:Ljava/lang/String;
    if-nez v20, :cond_a

    const-string v20, "N/A"

    .line 371
    :cond_a
    const-string v25, "radio"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string v25, "ro.bootloader"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, bootLoader:Ljava/lang/String;
    if-nez v4, :cond_b

    const-string v4, "N/A"

    .line 379
    :cond_b
    const-string v25, "ro.lb"

    const-string v26, "0"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 380
    .local v24, strLB:Ljava/lang/String;
    if-nez v24, :cond_c

    const-string v24, "0"

    .line 381
    :cond_c
    const-string v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 382
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "u"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 384
    :cond_d
    const-string v25, "bootLoader"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string v25, "ro.serialno"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 387
    .local v23, serialNo:Ljava/lang/String;
    if-nez v23, :cond_e

    const-string v23, "N/A"

    .line 388
    :cond_e
    const-string v25, "serialNo"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    const-string v25, "ro.hardware"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 392
    .local v19, product:Ljava/lang/String;
    if-nez v19, :cond_f

    const-string v19, "N/A"

    .line 393
    :cond_f
    const-string v25, "product"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v3           #apiLevel:Ljava/lang/String;
    .end local v4           #bootLoader:Ljava/lang/String;
    .end local v5           #cid:Ljava/lang/String;
    .end local v6           #connectMedia:Ljava/lang/String;
    .end local v8           #imei:Ljava/lang/String;
    .end local v9           #ip:Ljava/lang/String;
    .end local v10           #latestAPKTimestamp:Ljava/lang/String;
    .end local v11           #location:Ljava/lang/String;
    .end local v12           #mccMnc:Ljava/lang/String;
    .end local v13           #mid:Ljava/lang/String;
    .end local v14           #modelno:Ljava/lang/String;
    .end local v15           #objBuild:Lorg/json/JSONObject;
    .end local v16           #objCheckin:Lorg/json/JSONObject;
    .end local v18           #openSenseSdk:Ljava/lang/String;
    .end local v19           #product:Ljava/lang/String;
    .end local v20           #radio:Ljava/lang/String;
    .end local v21           #radioProp:Ljava/lang/String;
    .end local v22           #romVersion:Ljava/lang/String;
    .end local v23           #serialNo:Ljava/lang/String;
    .end local v24           #strLB:Ljava/lang/String;
    :goto_0
    return-object v17

    .line 395
    :catch_0
    move-exception v7

    .line 396
    .local v7, e:Ljava/lang/Exception;
    const-string v25, "FOTA.AppUpdate"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Err in composeAppCheckinJSON():"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    #calls: Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v25 .. v26}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private extractValidInstallList(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 21
    .parameter "objReplyJSon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v3, aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 568
    const-string v18, "FOTA.AppUpdate"

    const-string v19, "The reply json object is null!"

    invoke-static/range {v18 .. v19}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :goto_0
    return-object v3

    .line 571
    :cond_0
    const-string v18, "apk"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 572
    const-string v18, "FOTA.AppUpdate"

    const-string v19, "There is no apk json object in reply message."

    invoke-static/range {v18 .. v19}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_1
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 577
    .local v11, mapAPK:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Lcom/android/providers/htcCheckin/apkInfo;>;"
    const/4 v12, 0x0

    .line 578
    .local v12, objAPK:Lorg/json/JSONObject;
    const/4 v13, 0x0

    .line 580
    .local v13, objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    const/16 v16, 0x0

    .local v16, serverVersionCode:I
    const/4 v8, 0x0

    .line 581
    .local v8, clientVersionCode:I
    const/4 v7, 0x0

    .local v7, bInstallable:Z
    const/4 v6, 0x0

    .line 583
    .local v6, bHasInstalled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mPkgMgr:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 588
    .local v4, allPackageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    const-string v18, "apk"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 589
    .local v5, aryAPK:Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, i:I
    move-object v14, v13

    .end local v13           #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    .local v14, objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_6

    .line 590
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 591
    new-instance v13, Lcom/android/providers/htcCheckin/apkInfo;

    invoke-direct {v13, v12}, Lcom/android/providers/htcCheckin/apkInfo;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 593
    .end local v14           #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    .restart local v13       #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    :try_start_2
    const-string v18, "FOTA.AppUpdate"

    const-string v19, "======"

    invoke-static/range {v18 .. v19}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v18, "FOTA.AppUpdate"

    invoke-virtual {v13}, Lcom/android/providers/htcCheckin/apkInfo;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-virtual {v13}, Lcom/android/providers/htcCheckin/apkInfo;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 596
    .local v17, strClassName:Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 597
    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->isInstalled(Ljava/lang/String;)Z

    move-result v6

    .line 601
    const-string v18, "FOTA.AppUpdate"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] has installed:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    if-eqz v6, :cond_4

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mPkgMgr:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 605
    .local v15, pkgInfo:Landroid/content/pm/PackageInfo;
    iget v8, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 606
    iget v0, v13, Lcom/android/providers/htcCheckin/apkInfo;->nVersionCode:I

    move/from16 v16, v0

    .line 607
    move/from16 v0, v16

    if-le v0, v8, :cond_3

    const/4 v7, 0x1

    .line 608
    :goto_2
    const-string v18, "FOTA.AppUpdate"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "serverVersion:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", clientVersion:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", bInstallable:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .end local v15           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_3
    if-eqz v7, :cond_2

    .line 615
    if-eqz v6, :cond_5

    .line 616
    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "update"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_2
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object v14, v13

    .end local v13           #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    .restart local v14       #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    goto/16 :goto_1

    .line 607
    .end local v14           #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    .restart local v13       #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    .restart local v15       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 610
    .end local v15           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_4
    const/4 v7, 0x1

    goto :goto_3

    .line 618
    :cond_5
    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "new"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 621
    .end local v5           #aryAPK:Lorg/json/JSONArray;
    .end local v10           #i:I
    .end local v17           #strClassName:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 622
    .local v9, e:Ljava/lang/Exception;
    :goto_5
    const-string v18, "FOTA.AppUpdate"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Err in extrac apk from JSON Array. Err:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v9           #e:Ljava/lang/Exception;
    .end local v13           #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    .restart local v5       #aryAPK:Lorg/json/JSONArray;
    .restart local v10       #i:I
    .restart local v14       #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    :cond_6
    move-object v13, v14

    .line 623
    .end local v14           #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    .restart local v13       #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    goto/16 :goto_0

    .line 621
    .end local v13           #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    .restart local v14       #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    :catch_1
    move-exception v9

    move-object v13, v14

    .end local v14           #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    .restart local v13       #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    goto :goto_5
.end method

.method private getAppCheckinURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 261
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 263
    :cond_0
    iget-boolean v2, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->bIndividualApu:Z

    if-eqz v2, :cond_3

    .line 264
    const-string v0, "http://apu-chin.htccomm.com.cn/check-in/rws/and-app/update-i"

    .line 265
    .local v0, defaultURL:Ljava/lang/String;
    const-string v2, "ro.htc.iappupdate.url_CN"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, url:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v1, v0

    .line 280
    .end local v1           #url:Ljava/lang/String;
    :cond_2
    return-object v1

    .line 267
    .end local v0           #defaultURL:Ljava/lang/String;
    :cond_3
    const-string v0, "http://apu-chin.htccomm.com.cn/check-in/rws/and-app/update"

    .line 268
    .restart local v0       #defaultURL:Ljava/lang/String;
    const-string v2, "ro.htc.appupdate.url_CN"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #url:Ljava/lang/String;
    goto :goto_0

    .line 270
    .end local v0           #defaultURL:Ljava/lang/String;
    .end local v1           #url:Ljava/lang/String;
    :cond_4
    iget-boolean v2, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->bIndividualApu:Z

    if-eqz v2, :cond_5

    .line 271
    const-string v0, "http://apu-chin.htc.com/check-in/rws/and-app/update-i/"

    .line 272
    .restart local v0       #defaultURL:Ljava/lang/String;
    const-string v2, "ro.htc.iappupdate.url"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #url:Ljava/lang/String;
    goto :goto_0

    .line 274
    .end local v0           #defaultURL:Ljava/lang/String;
    .end local v1           #url:Ljava/lang/String;
    :cond_5
    const-string v0, "http://apu-chin.htc.com/check-in/rws/and-app/update"

    .line 275
    .restart local v0       #defaultURL:Ljava/lang/String;
    const-string v2, "ro.htc.appupdate.url"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #url:Ljava/lang/String;
    goto :goto_0
.end method

.method private getChangeList(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "rom"

    .prologue
    .line 836
    const-string v1, "-1"

    .local v1, changeList:Ljava/lang/String;
    const-string v4, "CL"

    .line 839
    .local v4, strCLPrefix:Ljava/lang/String;
    :try_start_0
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, aryVersion:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 841
    aget-object v5, v0, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 842
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 843
    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 852
    .end local v0           #aryVersion:[Ljava/lang/String;
    .end local v3           #i:I
    :cond_0
    :goto_1
    return-object v1

    .line 840
    .restart local v0       #aryVersion:[Ljava/lang/String;
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 847
    .end local v0           #aryVersion:[Ljava/lang/String;
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 848
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "FOTA.AppUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in getChangeList(), rom:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Err:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v1, "-1"

    goto :goto_1
.end method

.method private getConnectMedia()Ljava/lang/String;
    .locals 2

    .prologue
    .line 727
    const-string v0, "FOTA.AppUpdate"

    const-string v1, "IPT:18"

    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v0, "FOTA.AppUpdate"

    const-string v1, "WiFi:1"

    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v0, "FOTA.AppUpdate"

    const-string v1, "WiMax:6"

    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v0, "FOTA.AppUpdate"

    const-string v1, "3G:0"

    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->isConnectMediaOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    const-string v0, "I"

    .line 740
    :goto_0
    return-object v0

    .line 734
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->isConnectMediaOn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    const-string v0, "W"

    goto :goto_0

    .line 736
    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->isConnectMediaOn(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    const-string v0, "X"

    goto :goto_0

    .line 738
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->isConnectMediaOn(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 739
    const-string v0, "R"

    goto :goto_0

    .line 740
    :cond_3
    const-string v0, "U"

    goto :goto_0
.end method

.method private getIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strMedia"

    .prologue
    .line 762
    const-string v0, "N/A"

    .line 764
    .local v0, ipAddr:Ljava/lang/String;
    const-string v1, "I"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 765
    const-string v1, "net.usb0.ps.ip"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string v0, "N/A"

    .line 779
    :cond_1
    const-string v1, "FOTA.AppUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    return-object v0

    .line 766
    :cond_2
    const-string v1, "W"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 767
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->getWiFiIP()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 768
    :cond_3
    const-string v1, "X"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 769
    const-string v1, "dhcp.wimax0.ipaddress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 770
    :cond_4
    const-string v1, "R"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    const-string v1, "ril.default.address"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    const-string v1, "FOTA.AppUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ipAddr(ril.default.address):["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 775
    :cond_5
    const-string v1, "ro.ril.current.ip.address"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "rom"

    .prologue
    .line 879
    const-string v3, "U"

    .line 881
    .local v3, key:Ljava/lang/String;
    :try_start_0
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 882
    .local v2, idx:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 883
    .local v1, fullKey:Ljava/lang/String;
    const-string v4, "release-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 884
    const-string v3, "R"

    .line 892
    .end local v1           #fullKey:Ljava/lang/String;
    .end local v2           #idx:I
    :goto_0
    return-object v3

    .line 885
    .restart local v1       #fullKey:Ljava/lang/String;
    .restart local v2       #idx:I
    :cond_0
    const-string v4, "test-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 886
    const-string v3, "T"

    goto :goto_0

    .line 888
    :cond_1
    const-string v3, "U"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 889
    .end local v1           #fullKey:Ljava/lang/String;
    .end local v2           #idx:I
    :catch_0
    move-exception v0

    .line 890
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "U"

    goto :goto_0
.end method

.method private getLocation()Ljava/lang/String;
    .locals 21

    .prologue
    .line 431
    const-string v11, ""

    .local v11, location:Ljava/lang/String;
    const-string v19, ", "

    .line 432
    .local v19, strSep:Ljava/lang/String;
    const-string v18, "NA"

    .local v18, strLocality:Ljava/lang/String;
    const-string v16, "NA"

    .local v16, strAdminArea:Ljava/lang/String;
    const-string v17, "NA"

    .line 435
    .local v17, strCountryCode:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCtext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/LocationManager;

    .line 436
    .local v12, locationManager:Landroid/location/LocationManager;
    const-string v13, "gps"

    .line 437
    .local v13, locationProvider_G:Ljava/lang/String;
    const-string v14, "network"

    .line 438
    .local v14, locationProvider_N:Ljava/lang/String;
    const/4 v9, 0x0

    .line 440
    .local v9, lastKnownLocation:Landroid/location/Location;
    invoke-virtual {v12, v13}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 441
    if-nez v9, :cond_0

    .line 442
    const-string v2, "FOTA.AppUpdate"

    const-string v3, "Location from GPS is null"

    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v12, v14}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 446
    :cond_0
    if-nez v9, :cond_1

    .line 447
    const-string v2, "FOTA.AppUpdate"

    const-string v3, "Location from NETWORK is null as well"

    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v11, "NA, NA, NA"

    .line 451
    :cond_1
    if-eqz v9, :cond_5

    .line 452
    new-instance v1, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCtext:Landroid/content/Context;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 453
    .local v1, geoCoder:Landroid/location/Geocoder;
    const/4 v10, 0x0

    .line 454
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const/4 v7, 0x0

    .line 456
    .local v7, address:Landroid/location/Address;
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v10

    .line 457
    if-eqz v10, :cond_7

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 458
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #address:Landroid/location/Address;
    check-cast v7, Landroid/location/Address;

    .line 460
    .restart local v7       #address:Landroid/location/Address;
    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 461
    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v18

    .line 462
    :cond_2
    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 463
    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v16

    .line 464
    :cond_3
    invoke-virtual {v7}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 465
    invoke-virtual {v7}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v17

    .line 466
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

    .line 478
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

    .line 479
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v15

    .line 480
    .local v15, req:Lcom/htc/util/weather/WSPRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCtext:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;

    move-result-object v20

    .line 481
    .local v20, wsp:Lcom/htc/util/weather/WSPData;
    if-eqz v20, :cond_8

    .line 482
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

    .line 483
    const-string v2, "FOTA.AppUpdate"

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

    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 493
    .end local v15           #req:Lcom/htc/util/weather/WSPRequest;
    .end local v20           #wsp:Lcom/htc/util/weather/WSPData;
    :cond_6
    :goto_1
    return-object v11

    .line 468
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

    .line 471
    .end local v1           #geoCoder:Landroid/location/Geocoder;
    .end local v7           #address:Landroid/location/Address;
    .end local v9           #lastKnownLocation:Landroid/location/Location;
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v12           #locationManager:Landroid/location/LocationManager;
    .end local v13           #locationProvider_G:Ljava/lang/String;
    .end local v14           #locationProvider_N:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 472
    .local v8, e:Ljava/lang/Exception;
    const-string v2, "FOTA.AppUpdate"

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

    .line 473
    const-string v11, "NA, NA, NA"

    goto/16 :goto_0

    .line 486
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v15       #req:Lcom/htc/util/weather/WSPRequest;
    .restart local v20       #wsp:Lcom/htc/util/weather/WSPData;
    :cond_8
    :try_start_3
    const-string v2, "FOTA.AppUpdate"

    const-string v3, "WSPData is NULL"

    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 488
    .end local v15           #req:Lcom/htc/util/weather/WSPRequest;
    .end local v20           #wsp:Lcom/htc/util/weather/WSPData;
    :catch_1
    move-exception v8

    .line 489
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v2, "FOTA.AppUpdate"

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

    .line 490
    const-string v11, "NA, NA, NA"

    goto :goto_1
.end method

.method private getMID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 709
    const-string v1, ""

    .line 711
    .local v1, mid:Ljava/lang/String;
    :try_start_0
    const-string v2, "ro.mid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 716
    :goto_0
    return-object v1

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FOTA.AppUpdate"

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

    #calls: Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v1, ""

    goto :goto_0
.end method

.method private getMNC_MCC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 696
    const-string v0, ""

    .line 697
    .local v0, mnc_mcc:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 698
    if-nez v0, :cond_0

    const-string v0, ""

    .line 699
    :cond_0
    return-object v0
.end method

.method private getMainVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "rom"

    .prologue
    .line 808
    const-string v5, "N/A"

    .line 811
    .local v5, mainVersion:Ljava/lang/String;
    :try_start_0
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 812
    .local v4, idx:I
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, fullMainVersion:Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, aryVersion:[Ljava/lang/String;
    array-length v7, v0

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    move-object v6, v5

    .line 828
    .end local v0           #aryVersion:[Ljava/lang/String;
    .end local v2           #fullMainVersion:Ljava/lang/String;
    .end local v4           #idx:I
    .end local v5           #mainVersion:Ljava/lang/String;
    .local v6, mainVersion:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 816
    .end local v6           #mainVersion:Ljava/lang/String;
    .restart local v0       #aryVersion:[Ljava/lang/String;
    .restart local v2       #fullMainVersion:Ljava/lang/String;
    .restart local v4       #idx:I
    .restart local v5       #mainVersion:Ljava/lang/String;
    :cond_0
    const-string v5, ""

    .line 817
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_4

    .line 818
    if-eqz v3, :cond_1

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    .line 819
    :cond_1
    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 820
    :cond_2
    const/4 v7, 0x3

    if-ne v3, v7, :cond_3

    .line 821
    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 817
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 823
    .end local v0           #aryVersion:[Ljava/lang/String;
    .end local v2           #fullMainVersion:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #idx:I
    :catch_0
    move-exception v1

    .line 824
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "FOTA.AppUpdate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in getMainVersion(), rom:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Err:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v5, "N/A"

    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    move-object v6, v5

    .line 828
    .end local v5           #mainVersion:Ljava/lang/String;
    .restart local v6       #mainVersion:Ljava/lang/String;
    goto :goto_0
.end method

.method private static getPhoneIdentity()Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    const-string v1, ""

    .line 412
    .local v1, phoneID:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    const-string v2, "ro.gsm.imei"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    :goto_0
    return-object v1

    .line 416
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method private getSKU(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "rom"

    .prologue
    .line 860
    const-string v4, "-1"

    .line 863
    .local v4, sku:Ljava/lang/String;
    :try_start_0
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 864
    .local v3, idx:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    const-string v5, "-1"

    .line 875
    .end local v3           #idx:I
    :goto_0
    return-object v5

    .line 865
    .restart local v3       #idx:I
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 866
    .local v2, fullMainVersion:Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, aryVersion:[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    .line 868
    const-string v5, "-1"

    goto :goto_0

    .line 869
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

    .line 875
    goto :goto_0

    .line 870
    :catch_0
    move-exception v1

    .line 871
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "FOTA.AppUpdate"

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

    #calls: Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v4, "-1"

    goto :goto_1
.end method

.method private getSenseSDKVer(Ljava/lang/String;)I
    .locals 7
    .parameter "strVer"

    .prologue
    const/4 v3, -0x1

    .line 501
    const/4 v2, 0x0

    .line 502
    .local v2, nVer:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 519
    :cond_0
    :goto_0
    return v3

    .line 506
    :cond_1
    :try_start_0
    const-string v4, "FOTA.AppUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSenseSDKVer:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, arySense:[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 510
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const v5, 0xf4240

    mul-int v2, v4, v5

    .line 511
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    add-int/2addr v2, v4

    .line 512
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v2, v4

    .line 513
    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 514
    const-string v4, "FOTA.AppUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSenseSDK version :["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 519
    goto :goto_0

    .line 515
    .end local v0           #arySense:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 516
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Err:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getWiFiIP()Ljava/lang/String;
    .locals 7

    .prologue
    .line 789
    const-string v1, ""

    .line 791
    .local v1, ip:Ljava/lang/String;
    :try_start_0
    const-string v4, "wifi.interface"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 792
    .local v3, wifiInterface:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dhcp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ipaddress"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 793
    .local v2, ipProp:Ljava/lang/String;
    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 794
    const-string v4, "FOTA.AppUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IP property:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    .end local v2           #ipProp:Ljava/lang/String;
    .end local v3           #wifiInterface:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    .line 797
    const-string v4, "FOTA.AppUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Err in getWiFiIP(), Err:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isConnectMediaOn(I)Z
    .locals 6
    .parameter "mediaType"

    .prologue
    .line 744
    const/4 v0, 0x0

    .line 747
    .local v0, bConnectOn:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mConMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 748
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 749
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 754
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v0

    .line 750
    :catch_0
    move-exception v1

    .line 751
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 752
    const-string v3, "FOTA.AppUpdate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when gets media type. Media type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Err:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isInstalled(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 664
    const/4 v1, 0x0

    .line 666
    .local v1, installed:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    const/4 v1, 0x1

    .line 671
    :goto_0
    return v1

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private performAppCheckin(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 16
    .parameter "url"
    .parameter "appCheckinJSON"

    .prologue
    .line 527
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 529
    .local v7, objResult:Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 530
    .local v9, post:Lorg/apache/http/client/methods/HttpPost;
    const/4 v4, 0x0

    .line 533
    .local v4, httClient:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v9           #post:Lorg/apache/http/client/methods/HttpPost;
    .local v10, post:Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    const-string v13, "Content-type"

    const-string v14, "application/json"

    invoke-virtual {v10, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v13, Lorg/apache/http/entity/StringEntity;

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 537
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    .line 538
    .local v5, length:J
    const-string v13, "FOTA.AppUpdate"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sending AppUpdate checkin request ( length:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " bytes)..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v13, "AppUpdate-Checkin/3.5"

    invoke-static {v13}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    .line 542
    const/4 v13, 0x0

    check-cast v13, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v4, v10, v13}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 543
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 544
    .local v12, status:Lorg/apache/http/StatusLine;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 545
    .local v3, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, body:Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 550
    .end local v7           #objResult:Lorg/json/JSONObject;
    .local v8, objResult:Lorg/json/JSONObject;
    if-eqz v10, :cond_0

    .line 551
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 552
    :cond_0
    if-eqz v4, :cond_5

    .line 553
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v9, v10

    .end local v10           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v9       #post:Lorg/apache/http/client/methods/HttpPost;
    move-object v7, v8

    .line 555
    .end local v1           #body:Ljava/lang/String;
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #length:J
    .end local v8           #objResult:Lorg/json/JSONObject;
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #status:Lorg/apache/http/StatusLine;
    .restart local v7       #objResult:Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-object v7

    .line 547
    :catch_0
    move-exception v2

    .line 548
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v13, "FOTA.AppUpdate"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Err in performAppCheckin(), Err:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    if-eqz v9, :cond_2

    .line 551
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 552
    :cond_2
    if-eqz v4, :cond_1

    .line 553
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 550
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :goto_2
    if-eqz v9, :cond_3

    .line 551
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 552
    :cond_3
    if-eqz v4, :cond_4

    .line 553
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_4
    throw v13

    .line 550
    .end local v9           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v10       #post:Lorg/apache/http/client/methods/HttpPost;
    :catchall_1
    move-exception v13

    move-object v9, v10

    .end local v10           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v9       #post:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .line 547
    .end local v9           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v10       #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v2

    move-object v9, v10

    .end local v10           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v9       #post:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_1

    .end local v7           #objResult:Lorg/json/JSONObject;
    .end local v9           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v1       #body:Ljava/lang/String;
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #length:J
    .restart local v8       #objResult:Lorg/json/JSONObject;
    .restart local v10       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v11       #response:Lorg/apache/http/HttpResponse;
    .restart local v12       #status:Lorg/apache/http/StatusLine;
    :cond_5
    move-object v9, v10

    .end local v10           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v9       #post:Lorg/apache/http/client/methods/HttpPost;
    move-object v7, v8

    .end local v8           #objResult:Lorg/json/JSONObject;
    .restart local v7       #objResult:Lorg/json/JSONObject;
    goto :goto_0
.end method

.method private readLatestAPKTimestamp()Ljava/lang/String;
    .locals 6

    .prologue
    .line 684
    const-string v0, "-1"

    .local v0, defaultTime:Ljava/lang/String;
    move-object v2, v0

    .line 686
    .local v2, latestAPKTimestamp:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "appupdate_timestamp"

    invoke-static {v3, v4}, Landroid/provider/Settings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 691
    :goto_0
    const-string v3, "FOTA.AppUpdate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The app time stamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    return-object v2

    .line 688
    :catch_0
    move-exception v1

    .line 689
    .local v1, e:Ljava/lang/Exception;
    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method protected doAppCheckin()V
    .locals 14

    .prologue
    .line 154
    const-string v11, "FOTA.AppUpdate"

    const-string v12, "=== FOTA AppUpdate Client 3.5 ==="

    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v11, "FOTA.AppUpdate"

    const-string v12, "doAppCheckin() +"

    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->getAppCheckinURL()Ljava/lang/String;

    move-result-object v10

    .line 159
    .local v10, strURL:Ljava/lang/String;
    const-string v11, "FOTA.AppUpdate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AppUpdate Check-in URL:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->composeAppCheckinJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 164
    .local v1, appCheckinJSON:Lorg/json/JSONObject;
    const-string v11, "FOTA.AppUpdate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Appupdate Chekcin message:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, v10, v1}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->performAppCheckin(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    .line 168
    .local v8, objResultJSon:Lorg/json/JSONObject;
    const-string v11, "FOTA.AppUpdate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Appupdate reply message:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v8}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->extractValidInstallList(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 176
    .local v0, aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_b

    .line 181
    :cond_0
    const-string v11, "ro.config.htc.enableCOTA"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 182
    .local v2, bEnableCOTA:Z
    const-string v11, "FOTA.AppUpdate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "COTA is enabled:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-boolean v11, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->bIndividualApu:Z

    if-eqz v11, :cond_1

    .line 186
    const/4 v2, 0x0

    .line 188
    :cond_1
    if-eqz v2, :cond_7

    .line 189
    const/4 v9, 0x0

    .line 190
    .local v9, strTriggerType:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCheckType:Ljava/lang/String;

    const-string v12, "M"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 191
    const-string v9, "Manual"

    .line 199
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.server.HTCCOTA.CHECKIN"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v4, intentPerformCOTA:Landroid/content/Intent;
    const-string v11, "TriggerType"

    invoke-virtual {v4, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v11, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCtext:Landroid/content/Context;

    invoke-virtual {v11, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 202
    const-string v11, "FOTA.AppUpdate"

    const-string v12, "AppUpdate has nothihng to update and COTA is enabled. Sending intent to trigger COTA."

    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v4           #intentPerformCOTA:Landroid/content/Intent;
    .end local v9           #strTriggerType:Ljava/lang/String;
    :cond_2
    :goto_1
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 226
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.server.checkin.APP_CANCEL_OMADM"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v6, intent_app_cancel_omadm:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCtext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    const-string v11, "FOTA.AppUpdate"

    const-string v12, "Sending intent to notify omadm in ATT sku."

    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0           #aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #appCheckinJSON:Lorg/json/JSONObject;
    .end local v2           #bEnableCOTA:Z
    .end local v6           #intent_app_cancel_omadm:Landroid/content/Intent;
    .end local v8           #objResultJSon:Lorg/json/JSONObject;
    .end local v10           #strURL:Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v11, "FOTA.AppUpdate"

    const-string v12, "doAppCheckin() -"

    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void

    .line 192
    .restart local v0       #aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #appCheckinJSON:Lorg/json/JSONObject;
    .restart local v2       #bEnableCOTA:Z
    .restart local v8       #objResultJSon:Lorg/json/JSONObject;
    .restart local v9       #strTriggerType:Ljava/lang/String;
    .restart local v10       #strURL:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v11, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCheckType:Ljava/lang/String;

    const-string v12, "A"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 193
    const-string v9, "Schedule"

    goto :goto_0

    .line 194
    :cond_5
    iget-object v11, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCheckType:Ljava/lang/String;

    const-string v12, "P"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 195
    const-string v9, "PushMode"

    goto :goto_0

    .line 197
    :cond_6
    const-string v9, "Schedule"

    goto :goto_0

    .line 204
    .end local v9           #strTriggerType:Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCheckType:Ljava/lang/String;

    const-string v12, "M"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 205
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.server.checkin.APP_CANCEL"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v5, intent_app_cancel:Landroid/content/Intent;
    const-string v11, "TriggerType"

    const-string v12, "Manual"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-boolean v11, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->bIndividualApu:Z

    if-eqz v11, :cond_8

    .line 208
    const-string v11, "package_name"

    iget-object v12, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    :cond_8
    iget-object v11, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCtext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    const-string v11, "FOTA.AppUpdate"

    const-string v12, "Sending intent to cancel the app update."

    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v5           #intent_app_cancel:Landroid/content/Intent;
    :cond_9
    iget-object v11, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mTriggerType:Ljava/lang/String;

    const-string v12, "Manual"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 215
    const-string v11, "FOTA.AppUpdate"

    const-string v12, "the trigger intent has TriggerType. Send intent to updater."

    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.server.checkin.APP_CANCEL"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .restart local v5       #intent_app_cancel:Landroid/content/Intent;
    const-string v11, "TriggerType"

    const-string v12, "Manual"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-boolean v11, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->bIndividualApu:Z

    if-eqz v11, :cond_a

    .line 219
    const-string v11, "package_name"

    iget-object v12, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    :cond_a
    iget-object v11, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCtext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 221
    const-string v11, "FOTA.AppUpdate"

    const-string v12, "Sending intent to cancel the app update."

    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 243
    .end local v0           #aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #appCheckinJSON:Lorg/json/JSONObject;
    .end local v2           #bEnableCOTA:Z
    .end local v5           #intent_app_cancel:Landroid/content/Intent;
    .end local v8           #objResultJSon:Lorg/json/JSONObject;
    .end local v10           #strURL:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 244
    .local v3, e:Ljava/lang/Exception;
    const-string v11, "FOTA.AppUpdate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in doAppCheckin(). err:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 231
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #appCheckinJSON:Lorg/json/JSONObject;
    .restart local v8       #objResultJSon:Lorg/json/JSONObject;
    .restart local v10       #strURL:Ljava/lang/String;
    :cond_b
    :try_start_2
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.server.checkin.APP_UPDATE"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v7, intent_app_update:Landroid/content/Intent;
    const-string v11, "Detail"

    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v11, "ApStatus"

    invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 234
    const-string v11, "TriggerType"

    iget-object v12, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mTriggerType:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-boolean v11, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->bIndividualApu:Z

    if-eqz v11, :cond_c

    .line 236
    const-string v11, "package_name"

    iget-object v12, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    :cond_c
    iget-object v11, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCtext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    const-string v11, "FOTA.AppUpdate"

    const-string v12, "Sending intent to prompt install dialog."

    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method protected setCheckType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "pType"
    .parameter "triggerType"

    .prologue
    .line 126
    iput-object p2, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mTriggerType:Ljava/lang/String;

    .line 127
    const-string v0, "U"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCheckType:Ljava/lang/String;

    .line 128
    if-nez p1, :cond_1

    .line 129
    const-string v0, "M"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCheckType:Ljava/lang/String;

    .line 134
    :cond_0
    :goto_0
    const-string v0, "FOTA.AppUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCheckType(). pType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCheckType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCheckType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TriggerType:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 130
    :cond_1
    const-string v0, "schedule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const-string v0, "A"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCheckType:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_2
    const-string v0, "pushmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "P"

    iput-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mCheckType:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setTargetPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mTargetPackage:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mRunAppUpdateReceiver:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;

    invoke-virtual {v0, p1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->setTargetPackage(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected setUpdateType(Ljava/lang/String;)V
    .locals 2
    .parameter "updateType"

    .prologue
    .line 143
    const-string v0, "individual_appupdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->bIndividualApu:Z

    .line 145
    iget-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mRunAppUpdateReceiver:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;

    iget-boolean v1, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->bIndividualApu:Z

    invoke-virtual {v0, v1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->setIndividualUpdate(Z)V

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->bIndividualApu:Z

    .line 149
    iget-object v0, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->mRunAppUpdateReceiver:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;

    iget-boolean v1, p0, Lcom/android/providers/htcCheckin/appUpdateExecuter;->bIndividualApu:Z

    invoke-virtual {v0, v1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->setIndividualUpdate(Z)V

    goto :goto_0
.end method
