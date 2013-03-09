.class public Lcom/htc/htcCOTAClient/COTAReceiver;
.super Landroid/content/BroadcastReceiver;
.source "COTAReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;
    }
.end annotation


# static fields
.field public static CLIENT_VERSION:Ljava/lang/String; = null

.field private static final COTA_DFT_CHECKIN_URL:Ljava/lang/String; = "http://cota-chin.htc.com/cota-check-in/rws/and-app/update/"

.field private static final COTA_DFT_CHECKIN_URL_CN:Ljava/lang/String; = "http://cota-chin.htc.com/cota-check-in/rws/and-app/update/"

.field private static final COTA_ENABLE_PROPERTY:Ljava/lang/String; = "ro.config.htc.enableCOTA"

.field private static final COTA_PROP_CHECKIN_URL:Ljava/lang/String; = "ro.htc.cota.url"

.field private static final COTA_PROP_CHECKIN_URL_CN:Ljava/lang/String; = "ro.htc.cota.url_CN"

.field private static final FOLDER_CW_OUTPUT:Ljava/lang/String; = "/data/data/cwtemp/"

.field public static LOCAL_LOGV:Z

.field public static TAG:Ljava/lang/String;

.field private static final lockThread:Ljava/lang/Object;

.field private static mJobRunning:Z


# instance fields
.field private final COTA_AGENT:Ljava/lang/String;

.field private final COTA_CANCEL:Ljava/lang/String;

.field private final COTA_UPDATE:Ljava/lang/String;

.field private final INTENT_COTA_CANCEL:Ljava/lang/String;

.field private final INTENT_COTA_UPDATE:Ljava/lang/String;

.field private final PTAH_CWCRC:Ljava/lang/String;

.field private final PTAH_CWPACKAGE:Ljava/lang/String;

.field private final PTAH_CWPROP:Ljava/lang/String;

.field private final STRING_NA:Ljava/lang/String;

.field private final STRING_NA_NUM:Ljava/lang/String;

.field private final STRING_UNKNOWN:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mZipFileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    sput-boolean v1, Lcom/htc/htcCOTAClient/COTAReceiver;->LOCAL_LOGV:Z

    .line 37
    const-string v0, "htcCOTAClient"

    sput-object v0, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "A1.0(GB)"

    sput-object v0, Lcom/htc/htcCOTAClient/COTAReceiver;->CLIENT_VERSION:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/htcCOTAClient/COTAReceiver;->lockThread:Ljava/lang/Object;

    .line 42
    sput-boolean v1, Lcom/htc/htcCOTAClient/COTAReceiver;->mJobRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    const-string v0, "U"

    iput-object v0, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->STRING_UNKNOWN:Ljava/lang/String;

    .line 50
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->STRING_NA:Ljava/lang/String;

    .line 51
    const-string v0, "-1"

    iput-object v0, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->STRING_NA_NUM:Ljava/lang/String;

    .line 58
    const-string v0, "COTA-Checkin/1.0"

    iput-object v0, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->COTA_AGENT:Ljava/lang/String;

    .line 62
    const-string v0, "/data/data/cwtemp/cw.prop"

    iput-object v0, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->PTAH_CWPROP:Ljava/lang/String;

    .line 63
    const-string v0, "/data/data/cwtemp/cw.crc"

    iput-object v0, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->PTAH_CWCRC:Ljava/lang/String;

    .line 64
    const-string v0, "/data/data/cwtemp/cwpkg.zip"

    iput-object v0, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->PTAH_CWPACKAGE:Ljava/lang/String;

    .line 65
    const-string v0, "COTA_UPDATE"

    iput-object v0, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->COTA_UPDATE:Ljava/lang/String;

    .line 66
    const-string v0, "COTA_CANCEL"

    iput-object v0, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->COTA_CANCEL:Ljava/lang/String;

    .line 68
    const-string v0, "android.server.HTCCOTA.COTA_UPDATE"

    iput-object v0, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->INTENT_COTA_UPDATE:Ljava/lang/String;

    .line 69
    const-string v0, "android.server.HTCCOTA.COTA_CANCEL"

    iput-object v0, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->INTENT_COTA_CANCEL:Ljava/lang/String;

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->mZipFileSize:J

    .line 78
    sget-object v0, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    const-string v1, "The constructor of COTAReceiver."

    invoke-static {v0, v1}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private composeCheckinMsg()Lorg/json/JSONObject;
    .locals 21

    .prologue
    .line 183
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 185
    .local v12, objJSon:Lorg/json/JSONObject;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 186
    .local v11, objCheckin:Lorg/json/JSONObject;
    const-string v18, "checkin"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 189
    .local v10, objBuild:Lorg/json/JSONObject;
    const-string v18, "build"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    invoke-static {}, Lcom/htc/htcCOTAClient/COTAReceiver;->getPhoneIdentity()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, imei:Ljava/lang/String;
    if-nez v6, :cond_0

    const-string v6, "-1"

    .line 193
    :cond_0
    const-string v18, "imei"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v18, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v18, "ro.product.model"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, modelno:Ljava/lang/String;
    if-nez v9, :cond_1

    const-string v9, "N/A"

    .line 198
    :cond_1
    const-string v18, "modelNum"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v18, "ro.build.version.sdk"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, apiLevel:Ljava/lang/String;
    if-nez v2, :cond_2

    const-string v2, "-1"

    .line 202
    :cond_2
    const-string v18, "apiLevel"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v18, "ro.htc.common.version"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 205
    .local v13, openSenseSdk:Ljava/lang/String;
    if-nez v13, :cond_3

    const-string v13, "-1"

    .line 206
    :cond_3
    const-string v18, "openSenseSdk"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/htcCOTAClient/COTAReceiver;->getSenseSDKVer(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 208
    const-string v18, "forceGet"

    invoke-direct/range {p0 .. p0}, Lcom/htc/htcCOTAClient/COTAReceiver;->isForceGet()Z

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 210
    const-string v18, "ro.mid"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, mid:Ljava/lang/String;
    if-nez v8, :cond_4

    const-string v8, "N/A"

    .line 212
    :cond_4
    const-string v18, "mid"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v18, "ro.cid"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, cid:Ljava/lang/String;
    if-nez v4, :cond_5

    const-string v4, "N/A"

    .line 216
    :cond_5
    const-string v18, "cid"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/htc/htcCOTAClient/COTAReceiver;->getMNC_MCC()Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, mccMnc:Ljava/lang/String;
    if-nez v7, :cond_6

    const-string v7, "N/A"

    .line 220
    :cond_6
    const-string v18, "mccMnc"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v18, "ro.hardware"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 223
    .local v14, product:Ljava/lang/String;
    if-nez v14, :cond_7

    const-string v14, "N/A"

    .line 224
    :cond_7
    const-string v18, "product"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v18, "ro.serialno"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 227
    .local v16, serialNo:Ljava/lang/String;
    if-nez v16, :cond_8

    const-string v16, "N/A"

    .line 228
    :cond_8
    const-string v18, "serialNo"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v18, "ro.bootloader"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, bootLoader:Ljava/lang/String;
    if-nez v3, :cond_9

    const-string v3, "N/A"

    .line 232
    :cond_9
    const-string v18, "ro.lb"

    const-string v19, "0"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 233
    .local v17, strLB:Ljava/lang/String;
    if-nez v17, :cond_a

    const-string v17, "0"

    .line 234
    :cond_a
    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 235
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "u"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    :cond_b
    const-string v18, "bootLoader"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v18, "ro.build.description"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 239
    .local v15, romVersion:Ljava/lang/String;
    if-nez v15, :cond_c

    const-string v15, "N/A"

    .line 240
    :cond_c
    const-string v18, "romVersion"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v18, "mainVersion"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/htcCOTAClient/COTAReceiver;->getMainVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v18, "cl"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/htcCOTAClient/COTAReceiver;->getChangeList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v18, "sku"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/htcCOTAClient/COTAReceiver;->getSKU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v18, "key"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/htcCOTAClient/COTAReceiver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v2           #apiLevel:Ljava/lang/String;
    .end local v3           #bootLoader:Ljava/lang/String;
    .end local v4           #cid:Ljava/lang/String;
    .end local v6           #imei:Ljava/lang/String;
    .end local v7           #mccMnc:Ljava/lang/String;
    .end local v8           #mid:Ljava/lang/String;
    .end local v9           #modelno:Ljava/lang/String;
    .end local v10           #objBuild:Lorg/json/JSONObject;
    .end local v11           #objCheckin:Lorg/json/JSONObject;
    .end local v13           #openSenseSdk:Ljava/lang/String;
    .end local v14           #product:Ljava/lang/String;
    .end local v15           #romVersion:Ljava/lang/String;
    .end local v16           #serialNo:Ljava/lang/String;
    .end local v17           #strLB:Ljava/lang/String;
    :goto_0
    return-object v12

    .line 246
    :catch_0
    move-exception v5

    .line 247
    .local v5, e:Ljava/lang/Exception;
    sget-object v18, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Err in composeCheckinMsg():"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private composeUpdateIntent(Lorg/json/JSONObject;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5
    .parameter "objJSon"
    .parameter "itnCOTAUpdate"
    .parameter "strTriggerType"

    .prologue
    .line 596
    :try_start_0
    const-string v1, "source"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    const-string v1, "source"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 598
    sget-object v1, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "source:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "source"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_0
    const-string v1, "TriggerType"

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    sget-object v1, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strTriggerType:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v1, "fileSize"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    const-string v1, "unZipFileSize"

    const-string v2, "fileSize"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 607
    sget-object v1, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unZipFileSize:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fileSize"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :cond_1
    const-string v1, "zipFileSize"

    iget-wide v2, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->mZipFileSize:J

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 612
    sget-object v1, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zipFileSize:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->mZipFileSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v1, "description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    sget-object v1, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "description:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "description"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :cond_2
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Err in composeUpdateIntent(), Err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doCOTACheckin()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 137
    iget-object v7, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->mIntent:Landroid/content/Intent;

    const-string v8, "TriggerType"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, strTriggerType:Ljava/lang/String;
    if-nez v6, :cond_0

    const-string v6, "NULL"

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/htc/htcCOTAClient/COTAReceiver;->composeCheckinMsg()Lorg/json/JSONObject;

    move-result-object v3

    .line 142
    .local v3, cotaCheckinJSON:Lorg/json/JSONObject;
    sget-object v7, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "COTA Checkin:\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/htc/htcCOTAClient/COTAReceiver;->getCOTACheckinURL()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, checkinURL:Ljava/lang/String;
    sget-object v7, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "COTA check-in URL:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, v2, v3}, Lcom/htc/htcCOTAClient/COTAReceiver;->performCOTACheckin(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 148
    .local v5, objResultJSon:Lorg/json/JSONObject;
    sget-object v7, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "COTA check-in reply message:\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    .local v0, bCotaUpdate:Z
    const/4 v1, 0x0

    .line 152
    .local v1, bFileAccessable:Z
    const-string v7, "action"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "action"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "COTA_UPDATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 153
    const/4 v0, 0x1

    .line 154
    :cond_1
    const-string v7, "action"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 155
    sget-object v7, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "action"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_2
    if-eqz v0, :cond_3

    .line 158
    invoke-direct {p0, v5}, Lcom/htc/htcCOTAClient/COTAReceiver;->isFileAccessable(Lorg/json/JSONObject;)Z

    move-result v1

    .line 159
    :cond_3
    sget-object v7, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "COTA_UPDATE:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v7, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "COTA package is accessable:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 165
    sget-object v7, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    const-string v8, "Compose cota update intent."

    invoke-static {v7, v8}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.server.HTCCOTA.COTA_UPDATE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v4, itnNotifyUpdater:Landroid/content/Intent;
    invoke-direct {p0, v5, v4, v6}, Lcom/htc/htcCOTAClient/COTAReceiver;->composeUpdateIntent(Lorg/json/JSONObject;Landroid/content/Intent;Ljava/lang/String;)V

    .line 174
    :goto_0
    iget-object v7, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 175
    return-void

    .line 169
    .end local v4           #itnNotifyUpdater:Landroid/content/Intent;
    :cond_4
    sget-object v7, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Compose cota cancel intent. TriggerType1:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.server.HTCCOTA.COTA_CANCEL"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .restart local v4       #itnNotifyUpdater:Landroid/content/Intent;
    const-string v7, "TriggerType"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getCOTACheckinURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, url:Ljava/lang/String;
    const-string v0, "http://cota-chin.htc.com/cota-check-in/rws/and-app/update/"

    .line 311
    .local v0, defaultURL:Ljava/lang/String;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 313
    :cond_0
    const-string v2, "ro.htc.cota.url_CN"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    const-string v0, "http://cota-chin.htc.com/cota-check-in/rws/and-app/update/"

    .line 319
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v1, v0

    .line 321
    .end local v1           #url:Ljava/lang/String;
    :cond_2
    return-object v1

    .line 316
    .restart local v1       #url:Ljava/lang/String;
    :cond_3
    const-string v2, "ro.htc.cota.url"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getChangeList(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "rom"

    .prologue
    .line 474
    const-string v1, "-1"

    .local v1, changeList:Ljava/lang/String;
    const-string v4, "CL"

    .line 477
    .local v4, strCLPrefix:Ljava/lang/String;
    :try_start_0
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, aryVersion:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 479
    aget-object v5, v0, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 480
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 481
    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 490
    .end local v0           #aryVersion:[Ljava/lang/String;
    .end local v3           #i:I
    :cond_0
    :goto_1
    return-object v1

    .line 478
    .restart local v0       #aryVersion:[Ljava/lang/String;
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 485
    .end local v0           #aryVersion:[Ljava/lang/String;
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 486
    .local v2, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

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

    invoke-static {v5, v6}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v1, "-1"

    goto :goto_1
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "rom"

    .prologue
    .line 521
    const-string v3, "U"

    .line 523
    .local v3, key:Ljava/lang/String;
    :try_start_0
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 524
    .local v2, idx:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, fullKey:Ljava/lang/String;
    const-string v4, "release-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 526
    const-string v3, "R"

    .line 534
    .end local v1           #fullKey:Ljava/lang/String;
    .end local v2           #idx:I
    :goto_0
    return-object v3

    .line 527
    .restart local v1       #fullKey:Ljava/lang/String;
    .restart local v2       #idx:I
    :cond_0
    const-string v4, "test-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 528
    const-string v3, "T"

    goto :goto_0

    .line 530
    :cond_1
    const-string v3, "U"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    .end local v1           #fullKey:Ljava/lang/String;
    .end local v2           #idx:I
    :catch_0
    move-exception v0

    .line 532
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "U"

    goto :goto_0
.end method

.method private getMNC_MCC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, mnc_mcc:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "N/A"

    .line 438
    :cond_0
    return-object v0
.end method

.method private getMainVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "rom"

    .prologue
    .line 446
    const-string v5, "N/A"

    .line 449
    .local v5, mainVersion:Ljava/lang/String;
    :try_start_0
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 450
    .local v4, idx:I
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, fullMainVersion:Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, aryVersion:[Ljava/lang/String;
    array-length v7, v0

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    move-object v6, v5

    .line 466
    .end local v0           #aryVersion:[Ljava/lang/String;
    .end local v2           #fullMainVersion:Ljava/lang/String;
    .end local v4           #idx:I
    .end local v5           #mainVersion:Ljava/lang/String;
    .local v6, mainVersion:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 454
    .end local v6           #mainVersion:Ljava/lang/String;
    .restart local v0       #aryVersion:[Ljava/lang/String;
    .restart local v2       #fullMainVersion:Ljava/lang/String;
    .restart local v4       #idx:I
    .restart local v5       #mainVersion:Ljava/lang/String;
    :cond_0
    const-string v5, ""

    .line 455
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_4

    .line 456
    if-eqz v3, :cond_1

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    .line 457
    :cond_1
    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 458
    :cond_2
    const/4 v7, 0x3

    if-ne v3, v7, :cond_3

    .line 459
    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 455
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 461
    .end local v0           #aryVersion:[Ljava/lang/String;
    .end local v2           #fullMainVersion:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #idx:I
    :catch_0
    move-exception v1

    .line 462
    .local v1, e:Ljava/lang/Exception;
    sget-object v7, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

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

    invoke-static {v7, v8}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v5, "N/A"

    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    move-object v6, v5

    .line 466
    .end local v5           #mainVersion:Ljava/lang/String;
    .restart local v6       #mainVersion:Ljava/lang/String;
    goto :goto_0
.end method

.method private static getPhoneIdentity()Ljava/lang/String;
    .locals 5

    .prologue
    .line 332
    const-string v1, ""

    .line 342
    .local v1, phoneID:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 348
    :goto_0
    return-object v1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    .line 346
    sget-object v2, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Err in getPhoneIdentity(). Err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSKU(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "rom"

    .prologue
    .line 498
    const-string v4, "-1"

    .line 501
    .local v4, sku:Ljava/lang/String;
    :try_start_0
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 502
    .local v3, idx:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    const-string v5, "-1"

    .line 513
    .end local v3           #idx:I
    :goto_0
    return-object v5

    .line 503
    .restart local v3       #idx:I
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, fullMainVersion:Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, aryVersion:[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    .line 506
    const-string v5, "-1"

    goto :goto_0

    .line 507
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

    .line 513
    goto :goto_0

    .line 508
    :catch_0
    move-exception v1

    .line 509
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

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

    invoke-static {v5, v6}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v4, "-1"

    goto :goto_1
.end method

.method private getSenseSDKVer(Ljava/lang/String;)I
    .locals 7
    .parameter "strVer"

    .prologue
    const/4 v3, -0x1

    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, nVer:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v3

    .line 386
    :cond_1
    :try_start_0
    sget-object v4, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

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

    invoke-static {v4, v5}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, arySense:[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 390
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const v5, 0xf4240

    mul-int v2, v4, v5

    .line 391
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    add-int/2addr v2, v4

    .line 392
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v2, v4

    .line 393
    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 394
    sget-object v4, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

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

    invoke-static {v4, v5}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 399
    goto :goto_0

    .line 395
    .end local v0           #arySense:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

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

    invoke-static {v4, v5}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getSerialNO()Ljava/lang/String;
    .locals 9

    .prologue
    .line 357
    const-string v6, "ro.serialno"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, SerialNO:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 359
    const-string v0, "00000000000000"

    .line 373
    .local v1, desireLen:I
    :cond_0
    :goto_0
    return-object v0

    .line 360
    .end local v1           #desireLen:I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 362
    const/16 v1, 0xe

    .line 363
    .restart local v1       #desireLen:I
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v2, v1, v6

    .line 364
    .local v2, diff:I
    const-string v5, ""

    .line 365
    .local v5, temp:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 365
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 367
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 368
    .end local v2           #diff:I
    .end local v4           #i:I
    .end local v5           #temp:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 369
    .local v3, e:Ljava/lang/Exception;
    const-string v0, "00000000000000"

    .line 370
    sget-boolean v6, Lcom/htc/htcCOTAClient/COTAReceiver;->LOCAL_LOGV:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Err in getSerialNO:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isFileAccessable(Lorg/json/JSONObject;)Z
    .locals 16
    .parameter "objJSonResult"

    .prologue
    .line 542
    const/4 v1, 0x0

    .line 544
    .local v1, bAccessable:Z
    const/4 v7, 0x0

    .line 545
    .local v7, objHttpGet:Lorg/apache/http/client/methods/HttpGet;
    const/4 v9, 0x0

    .line 546
    .local v9, response:Lorg/apache/http/HttpResponse;
    const/4 v4, 0x0

    .line 547
    .local v4, httClient:Landroid/net/http/AndroidHttpClient;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 551
    .local v5, nStartTime:J
    :try_start_0
    const-string v12, "source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "http://"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 552
    :cond_0
    sget-object v12, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    const-string v13, "Do not have source or source format is wrong."

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 553
    const/4 v12, 0x0

    .line 576
    if-eqz v4, :cond_1

    .line 577
    throw v4

    .line 578
    :cond_1
    const/4 v4, 0x0

    .line 579
    if-eqz v7, :cond_2

    .line 580
    throw v7

    .line 581
    :cond_2
    const/4 v7, 0x0

    .line 582
    const/4 v9, 0x0

    .line 586
    :goto_0
    return v12

    .line 555
    :cond_3
    :try_start_1
    const-string v12, "source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 556
    .local v10, source:Ljava/lang/String;
    sget-object v12, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Try to access:["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 559
    .end local v7           #objHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .local v8, objHttpGet:Lorg/apache/http/client/methods/HttpGet;
    :try_start_2
    const-string v12, "COTA-Checkin/1.0"

    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    .line 560
    invoke-virtual {v4, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 562
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    .line 563
    .local v11, status:Lorg/apache/http/StatusLine;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 564
    .local v3, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_6

    .line 565
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/htc/htcCOTAClient/COTAReceiver;->mZipFileSize:J

    .line 566
    sget-object v12, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package(zip) size:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/htcCOTAClient/COTAReceiver;->mZipFileSize:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 567
    const/4 v1, 0x1

    .line 576
    :goto_1
    if-eqz v4, :cond_4

    .line 577
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 578
    :cond_4
    const/4 v4, 0x0

    .line 579
    if-eqz v8, :cond_5

    .line 580
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 581
    :cond_5
    const/4 v7, 0x0

    .line 582
    .end local v8           #objHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v7       #objHttpGet:Lorg/apache/http/client/methods/HttpGet;
    const/4 v9, 0x0

    .line 585
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v10           #source:Ljava/lang/String;
    .end local v11           #status:Lorg/apache/http/StatusLine;
    :goto_2
    sget-object v12, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "access file costs: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v5

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " msecs"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v1

    .line 586
    goto/16 :goto_0

    .line 569
    .end local v7           #objHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    .restart local v8       #objHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v10       #source:Ljava/lang/String;
    .restart local v11       #status:Lorg/apache/http/StatusLine;
    :cond_6
    :try_start_3
    sget-object v12, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Try to access package failed:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 572
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #status:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v2

    move-object v7, v8

    .line 573
    .end local v8           #objHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v10           #source:Ljava/lang/String;
    .local v2, e:Ljava/lang/Exception;
    .restart local v7       #objHttpGet:Lorg/apache/http/client/methods/HttpGet;
    :goto_3
    const/4 v1, 0x0

    .line 574
    :try_start_4
    sget-object v12, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Err in isFileAccessable: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 576
    if-eqz v4, :cond_7

    .line 577
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 578
    :cond_7
    const/4 v4, 0x0

    .line 579
    if-eqz v7, :cond_8

    .line 580
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 581
    :cond_8
    const/4 v7, 0x0

    .line 582
    const/4 v9, 0x0

    .line 583
    goto :goto_2

    .line 576
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_4
    if-eqz v4, :cond_9

    .line 577
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 578
    :cond_9
    const/4 v4, 0x0

    .line 579
    if-eqz v7, :cond_a

    .line 580
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 581
    :cond_a
    const/4 v7, 0x0

    .line 582
    const/4 v9, 0x0

    throw v12

    .line 576
    .end local v7           #objHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #objHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v10       #source:Ljava/lang/String;
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8           #objHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v7       #objHttpGet:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_4

    .line 572
    .end local v10           #source:Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method private isForceGet()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 408
    const/4 v0, 0x0

    .line 410
    .local v0, bForce:Z
    const/4 v2, 0x0

    .line 412
    .local v2, file:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/data/cwtemp/cw.prop"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 413
    sget-object v4, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    const-string v5, "/data/data/cwtemp/cw.prop doesn\'t EXIST!"

    invoke-static {v4, v5}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :goto_0
    return v3

    .line 416
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/data/cwtemp/cw.crc"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 417
    sget-object v4, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    const-string v5, "/data/data/cwtemp/cw.crc doesn\'t EXIST!"

    invoke-static {v4, v5}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in isForceGet(). Err:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/4 v0, 0x0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v0

    .line 428
    goto :goto_0

    .line 420
    :cond_2
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/data/cwtemp/cwpkg.zip"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 421
    sget-object v4, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    const-string v5, "/data/data/cwtemp/cwpkg.zip doesn\'t EXIST!"

    invoke-static {v4, v5}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private performCOTACheckin(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 19
    .parameter "url"
    .parameter "cotaCheckinJSON"

    .prologue
    .line 259
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 260
    .local v9, objResult:Lorg/json/JSONObject;
    const/4 v11, 0x0

    .line 261
    .local v11, post:Lorg/apache/http/client/methods/HttpPost;
    const/4 v4, 0x0

    .line 262
    .local v4, httClient:Landroid/net/http/AndroidHttpClient;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 265
    .local v7, nStartTime:J
    :try_start_0
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v11           #post:Lorg/apache/http/client/methods/HttpPost;
    .local v12, post:Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    const-string v15, "Content-type"

    const-string v16, "application/json"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v15, Lorg/apache/http/entity/StringEntity;

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "UTF-8"

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 268
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    .line 269
    .local v5, length:J
    sget-object v15, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Sending COTA checkin request ( length:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " bytes)..."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v15, "COTA-Checkin/1.0"

    invoke-static {v15}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    .line 273
    const/4 v15, 0x0

    check-cast v15, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v4, v12, v15}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 274
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    .line 276
    .local v14, status:Lorg/apache/http/StatusLine;
    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 277
    sget-object v15, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Checkin failed: Status code:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 288
    if-eqz v12, :cond_0

    .line 289
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 290
    :cond_0
    const/4 v11, 0x0

    .line 291
    .end local v12           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v11       #post:Lorg/apache/http/client/methods/HttpPost;
    if-eqz v4, :cond_1

    .line 292
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 293
    :cond_1
    const/4 v4, 0x0

    move-object v10, v9

    .line 297
    .end local v5           #length:J
    .end local v9           #objResult:Lorg/json/JSONObject;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #status:Lorg/apache/http/StatusLine;
    .local v10, objResult:Ljava/lang/Object;
    :goto_0
    return-object v10

    .line 280
    .end local v10           #objResult:Ljava/lang/Object;
    .end local v11           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #length:J
    .restart local v9       #objResult:Lorg/json/JSONObject;
    .restart local v12       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #status:Lorg/apache/http/StatusLine;
    :cond_2
    :try_start_2
    sget-object v15, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Status code:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 282
    .local v3, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, body:Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 288
    .end local v9           #objResult:Lorg/json/JSONObject;
    .local v10, objResult:Lorg/json/JSONObject;
    if-eqz v12, :cond_3

    .line 289
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 290
    :cond_3
    const/4 v11, 0x0

    .line 291
    .end local v12           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v11       #post:Lorg/apache/http/client/methods/HttpPost;
    if-eqz v4, :cond_4

    .line 292
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 293
    :cond_4
    const/4 v4, 0x0

    move-object v9, v10

    .line 296
    .end local v1           #body:Ljava/lang/String;
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #length:J
    .end local v10           #objResult:Lorg/json/JSONObject;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #status:Lorg/apache/http/StatusLine;
    .restart local v9       #objResult:Lorg/json/JSONObject;
    :goto_1
    sget-object v15, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "check in costs: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v7

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " msecs"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    .line 297
    .local v10, objResult:Ljava/lang/Object;
    goto :goto_0

    .line 284
    .end local v10           #objResult:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 285
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    .end local v9           #objResult:Lorg/json/JSONObject;
    .local v10, objResult:Lorg/json/JSONObject;
    :try_start_4
    sget-object v15, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Err in performCOTACheckin(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 288
    if-eqz v11, :cond_5

    .line 289
    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 290
    :cond_5
    const/4 v11, 0x0

    .line 291
    if-eqz v4, :cond_6

    .line 292
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 293
    :cond_6
    const/4 v4, 0x0

    move-object v9, v10

    .line 294
    .end local v10           #objResult:Lorg/json/JSONObject;
    .restart local v9       #objResult:Lorg/json/JSONObject;
    goto :goto_1

    .line 288
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    :goto_3
    if-eqz v11, :cond_7

    .line 289
    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 290
    :cond_7
    const/4 v11, 0x0

    .line 291
    if-eqz v4, :cond_8

    .line 292
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 293
    :cond_8
    const/4 v4, 0x0

    throw v15

    .line 288
    .end local v11           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v12       #post:Lorg/apache/http/client/methods/HttpPost;
    :catchall_1
    move-exception v15

    move-object v11, v12

    .end local v12           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v11       #post:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_3

    .end local v9           #objResult:Lorg/json/JSONObject;
    .restart local v2       #e:Ljava/lang/Exception;
    .restart local v10       #objResult:Lorg/json/JSONObject;
    :catchall_2
    move-exception v15

    move-object v9, v10

    .end local v10           #objResult:Lorg/json/JSONObject;
    .restart local v9       #objResult:Lorg/json/JSONObject;
    goto :goto_3

    .line 284
    .end local v2           #e:Ljava/lang/Exception;
    .end local v11           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v12       #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v2

    move-object v11, v12

    .end local v12           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v11       #post:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 87
    const-string v2, "ro.config.htc.enableCOTA"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    sget-object v2, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    const-string v3, "COTA doesn\'t be turned ON."

    invoke-static {v2, v3}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    .local v0, nStart:J
    iput-object p1, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/htc/htcCOTAClient/COTAReceiver;->mIntent:Landroid/content/Intent;

    .line 95
    sget-object v2, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start thread to execute COTA:"

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

    invoke-static {v2, v3}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v2, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 99
    sget-object v2, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time in COTAReceiver main thread:"

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

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 107
    sget-object v2, Lcom/htc/htcCOTAClient/COTAReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v2

    .line 108
    :try_start_0
    sget-boolean v1, Lcom/htc/htcCOTAClient/COTAReceiver;->mJobRunning:Z

    if-eqz v1, :cond_0

    .line 109
    sget-object v1, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Another thread is running for COTAReceiver."

    invoke-static {v1, v3}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    monitor-exit v2

    .line 129
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/htcCOTAClient/COTAReceiver;->mJobRunning:Z

    .line 115
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 117
    sget-object v1, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start COTA Client === "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/htcCOTAClient/COTAReceiver;->CLIENT_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :try_start_1
    invoke-direct {p0}, Lcom/htc/htcCOTAClient/COTAReceiver;->doCOTACheckin()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    sget-object v2, Lcom/htc/htcCOTAClient/COTAReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v2

    .line 125
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lcom/htc/htcCOTAClient/COTAReceiver;->mJobRunning:Z

    .line 126
    sget-object v1, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    const-string v3, "== COTAReceiver finished =="

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 115
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute COTA error. Err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 124
    sget-object v2, Lcom/htc/htcCOTAClient/COTAReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v2

    .line 125
    const/4 v1, 0x0

    :try_start_5
    sput-boolean v1, Lcom/htc/htcCOTAClient/COTAReceiver;->mJobRunning:Z

    .line 126
    sget-object v1, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    const-string v3, "== COTAReceiver finished =="

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 124
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    sget-object v2, Lcom/htc/htcCOTAClient/COTAReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v2

    .line 125
    const/4 v3, 0x0

    :try_start_6
    sput-boolean v3, Lcom/htc/htcCOTAClient/COTAReceiver;->mJobRunning:Z

    .line 126
    sget-object v3, Lcom/htc/htcCOTAClient/COTAReceiver;->TAG:Ljava/lang/String;

    const-string v4, "== COTAReceiver finished =="

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v1

    :catchall_4
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1
.end method
