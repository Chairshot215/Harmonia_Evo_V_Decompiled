.class public Lcom/htc/util/http/XMLRequest;
.super Ljava/lang/Object;
.source "XMLRequest.java"


# static fields
.field protected static ESCAPE_CHAR:B = 0x0t

.field public static final HTTP:Ljava/lang/String; = "http://"

.field public static final HTTPS:Ljava/lang/String; = "https://"

.field protected static final Hexhars:[B = null

.field public static final Host:Ljava/lang/String; = "andota.htcsense.com"

.field public static final HostTest:Ljava/lang/String; = "andota.htctouch.com"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "XMLRequest"

.field private static final PREFIX:Ljava/lang/String; = "[XMLRequest] "

.field static final RADIX:I = 0x10

.field public static final SEPARATOR:Ljava/lang/String; = "#"

.field protected static final WWW_FORM_URL:Ljava/util/BitSet; = null

.field public static final apiLevelTag:Ljava/lang/String; = "al"

.field public static final appendLog:Ljava/lang/String; = "/common-log/rws/log/basic"

.field public static final assetIdTag:Ljava/lang/String; = "aId"

.field public static final certTag:Ljava/lang/String; = "ct"

.field public static final cidTag:Ljava/lang/String; = "ci"

.field public static final deviceTag:Ljava/lang/String; = "de"

.field public static final digestTag:Ljava/lang/String; = "digest"

.field public static final getAlarmList:Ljava/lang/String; = "/and-sound/rws/alarm/list"

.field public static final getAppsList:Ljava/lang/String; = "/and-apps/rws/app/list"

.field public static final getAssetScene:Ljava/lang/String; = "/and-scene/rws/asset/detail/"

.field public static final getCategoryApps:Ljava/lang/String; = "/common/rws/category/apps"

.field public static final getCategoryHTC:Ljava/lang/String; = "/common/rws/category/asset"

.field public static final getCategoryMarket:Ljava/lang/String; = "/common/rws/category/direct"

.field public static final getCategorySDM:Ljava/lang/String; = "/common/rws/category/"

.field public static final getCategoryScene:Ljava/lang/String; = "/common/rws/category/scene"

.field public static final getCategorySoundSet:Ljava/lang/String; = "/common/rws/category/sound"

.field public static final getChart:Ljava/lang/String; = "/common-stock/rws/history"

.field public static final getLogSetting:Ljava/lang/String; = "/common-log/rws/log/setting"

.field public static final getNotificationList:Ljava/lang/String; = "/and-sound/rws/notification/list"

.field public static final getPackageDetail:Ljava/lang/String; = "/and-apps/rws/package/detail/"

.field public static final getPackageDetail2:Ljava/lang/String; = "/and-apps/rws/package/detail2/"

.field public static final getPlugInList:Ljava/lang/String; = "/and-apps/rws/plug/list"

.field public static final getQuotes:Ljava/lang/String; = "/common-stock/rws/quote"

.field public static final getRateing:Ljava/lang/String; = "/and-apps/rws/rating"

.field public static final getRingtoneLsit:Ljava/lang/String; = "/and-sound/rws/ringtone/list"

.field public static final getSceneByCat:Ljava/lang/String; = "/and-scene/rws/scene/list-by-category/"

.field public static final getSceneCatList:Ljava/lang/String; = "/and-scene/rws/scene/listcategory"

.field public static final getSceneList:Ljava/lang/String; = "/and-scene/rws/scene/list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final getSkinByCat:Ljava/lang/String; = "/and-scene/rws/skin/list-by-category/"

.field public static final getSkinCatList:Ljava/lang/String; = "/and-scene/rws/skin/listcategory"

.field public static final getSkinList:Ljava/lang/String; = "/and-scene/rws/skin/list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final getSoundDetail:Ljava/lang/String; = "/and-sound/rws/asset/detail/"

.field public static final getSoundSetDetail:Ljava/lang/String; = "/and-sound/rws/soundset/detail/"

.field public static final getSoundSetList:Ljava/lang/String; = "/and-sound/rws/soundset/list"

.field public static final getSymbol:Ljava/lang/String; = "/common-stock/rws/symbol"

.field public static final getWallpapaerCatList:Ljava/lang/String; = "/and-scene/rws/wallpaper/listcategory"

.field public static final getWallpaperByCat:Ljava/lang/String; = "/and-scene/rws/wallpaper/list-by-category/"

.field public static final getWallpaperList:Ljava/lang/String; = "/and-scene/rws/wallpaper/list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final getWidgetList:Ljava/lang/String; = "/and-apps/rws/widget/list"

.field public static final handsetTime:Ljava/lang/String; = "ht"

.field public static final htcAccount:Ljava/lang/String; = "mya"

.field public static final htcSdkVer:Ljava/lang/String; = "uisdk"

.field public static final hwcidTag:Ljava/lang/String; = "hc"

.field public static final imeiTag:Ljava/lang/String; = "ii"

.field public static final localeTag:Ljava/lang/String; = "le"

.field public static final mccTag:Ljava/lang/String; = "mcc"

.field public static final mncTag:Ljava/lang/String; = "mnc"

.field public static final pagingCtrl:Ljava/lang/String; = "next"

.field public static final platformTag:Ljava/lang/String; = "pl"

.field public static final ratingScoreTag:Ljava/lang/String; = "score"

.field public static final relesaseKey:Ljava/lang/String; = "rk"

.field public static final romVersionTag:Ljava/lang/String; = "rv"

.field public static final searchCondition:Ljava/lang/String; = "filter"

.field public static final senseVer:Ljava/lang/String; = "sv"

.field public static final skinVer:Ljava/lang/String; = "skn"

.field public static final skuTag:Ljava/lang/String; = "sk"

.field public static final sortingTag:Ljava/lang/String; = "sort"

.field public static final targetVersionTag:Ljava/lang/String; = "tv"

.field public static final weatherCity:Ljava/lang/String; = "/common-weather/rws/city"

.field public static final weatherCityCode:Ljava/lang/String; = "/common-weather/rws/citycodes"

.field public static final weatherLatitude:Ljava/lang/String; = "/common-weather/rws/point"


# instance fields
.field private mApiLevel:Ljava/lang/String;

.field private mCert:Ljava/lang/String;

.field private mCid:Ljava/lang/String;

.field private mConnectTimeout:I

.field private final mContext:Landroid/content/Context;

.field private mDeviceFlag:Ljava/lang/String;

.field private mHCid:Ljava/lang/String;

.field private mHtcAccoutn:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mKeyType:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mOWCert:Ljava/lang/String;

.field private mOWCid:Ljava/lang/String;

.field private mOWDeviceFlag:Ljava/lang/String;

.field private mOWHost:Ljava/lang/String;

.field private mOWKeyType:Ljava/lang/String;

.field private mOWSchema:Ljava/lang/String;

.field private mOWSku:Ljava/lang/String;

.field private final mPlatform:Ljava/lang/String;

.field private mRomVersion:Ljava/lang/String;

.field private mSkinVer:Ljava/lang/String;

.field private mSku:Ljava/lang/String;

.field private mSocketTimeout:I

.field private mUiSdk:Ljava/lang/String;

.field private mXmlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/http/XMLRequest;->Hexhars:[B

    const/16 v0, 0x25

    sput-byte v0, Lcom/htc/util/http/XMLRequest;->ESCAPE_CHAR:B

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/htc/util/http/XMLRequest;->WWW_FORM_URL:Ljava/util/BitSet;

    return-void

    nop

    :array_0
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    const/16 v7, 0x1f40

    const/16 v8, 0x28

    const/4 v10, 0x3

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mHCid:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    const-string v6, "2"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mPlatform:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWDeviceFlag:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWSku:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWCid:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWCert:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWKeyType:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    iput v7, p0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    iput v7, p0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v7, "2.1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v8, :cond_4

    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v6, :cond_4

    const-string v6, "211"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v7, "3.5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_1

    const-string v6, "-42"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    :cond_1
    const-string v6, "ro.cid"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    const-string v6, "ro.build.version.incremental"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    const-string v6, "ro.build.version.sdk"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    const-string v6, "ro.htc.common.version"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    const-string v7, "."

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    invoke-static {p1}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    const-string v6, "ro.product.version"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "0"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    if-eqz v4, :cond_2

    :try_start_0
    const-string v6, "//."

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_7

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    :goto_2
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/HTCWORACert"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "1"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    :goto_3
    const-string v6, "1"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    :cond_3
    return-void

    :cond_4
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v8, :cond_5

    const-string v6, "210"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x21

    if-ne v6, v7, :cond_6

    const/16 v2, 0xd5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x22

    if-ne v6, v7, :cond_0

    const-string v6, "212"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_7
    const-string v6, "000"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    const-string v6, "00"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string v6, "2"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    goto :goto_3
.end method

.method public static IsNetworkAvailable(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private addHeaders(Lorg/apache/http/HttpRequest;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    if-eqz v5, :cond_1

    if-eqz p2, :cond_0

    const-string v5, "de"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "de"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    const-string v5, "sk"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "sk"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    if-eqz v5, :cond_5

    if-eqz p2, :cond_4

    const-string v5, "ci"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    const-string v5, "ci"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mHCid:Ljava/lang/String;

    if-eqz v5, :cond_7

    if-eqz p2, :cond_6

    const-string v5, "hc"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    :cond_6
    const-string v5, "hc"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mHCid:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    if-eqz v5, :cond_9

    if-eqz p2, :cond_8

    const-string v5, "rv"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_9

    :cond_8
    const-string v5, "rv"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    if-eqz v5, :cond_b

    if-eqz p2, :cond_a

    const-string v5, "al"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_b

    :cond_a
    const-string v5, "al"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    if-eqz v5, :cond_d

    if-eqz p2, :cond_c

    const-string v5, "le"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_d

    :cond_c
    const-string v5, "le"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    if-eqz v5, :cond_e

    if-eqz p2, :cond_e

    const-string v5, "ii"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_e

    :cond_e
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    if-eqz v5, :cond_10

    if-eqz p2, :cond_f

    const-string v5, "mnc"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_10

    :cond_f
    const-string v5, "mnc"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    if-eqz v5, :cond_12

    if-eqz p2, :cond_11

    const-string v5, "mcc"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_12

    :cond_11
    const-string v5, "mcc"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const-string v5, "2"

    if-eqz v5, :cond_14

    if-eqz p2, :cond_13

    const-string v5, "pl"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_14

    :cond_13
    const-string v5, "pl"

    const-string v6, "2"

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    if-eqz v5, :cond_16

    if-eqz p2, :cond_15

    const-string v5, "ct"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_16

    :cond_15
    const-string v5, "ct"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    if-eqz v5, :cond_18

    if-eqz p2, :cond_17

    const-string v5, "rk"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_18

    :cond_17
    const-string v5, "rk"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    if-eqz p2, :cond_19

    const-string v5, "tv"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1a

    :cond_19
    const-string v5, "tv"

    const-string v6, "0"

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    if-eqz p2, :cond_1b

    const-string v5, "ht"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_23

    :cond_1b
    const-string v5, "ht"

    invoke-interface {p1, v5, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1c

    const-string v5, "mya"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1c

    const-string v5, "mya"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1c
    if-eqz v0, :cond_1e

    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    if-eqz v5, :cond_1e

    if-eqz p2, :cond_1d

    const-string v5, "digest"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1e

    :cond_1d
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v0}, Lcom/htc/util/http/XMLRequest;->getAuthDigest(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    const-string v5, "digest"

    invoke-interface {p1, v5, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_1
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    if-eqz v5, :cond_20

    if-eqz p2, :cond_1f

    const-string v5, "uisdk"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_20

    :cond_1f
    const-string v5, "uisdk"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    iget-object v5, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    if-eqz v5, :cond_22

    if-eqz p2, :cond_21

    const-string v5, "skn"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_22

    :cond_21
    const-string v5, "skn"

    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    if-eqz p2, :cond_25

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x0

    :goto_2
    array-length v5, v3

    if-ge v2, v5, :cond_25

    aget-object v5, v3, v2

    check-cast v5, Ljava/lang/String;

    aget-object v6, v3, v2

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_23
    const-string v5, "ht"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto/16 :goto_0

    :cond_24
    const-string v5, "digest"

    const-string v6, ""

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_25
    const-string v5, "ii"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    const-string v5, "ii"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    :cond_26
    const-string v5, "mya"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    const-string v5, "mya"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method private static final encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x10

    :try_start_0
    invoke-static {p0}, Lcom/htc/util/http/XMLRequest;->newBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :catch_0
    move-exception v3

    const-string v7, ""

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    aget-byte v10, v2, v9

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    sget-object v8, Lcom/htc/util/http/XMLRequest;->WWW_FORM_URL:Ljava/util/BitSet;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v6, 0x0

    :goto_1
    array-length v9, v2

    if-ge v6, v9, :cond_4

    aget-byte v0, v2, v6

    if-gez v0, :cond_1

    add-int/lit16 v0, v0, 0x100

    :cond_1
    invoke-virtual {v8, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x20

    if-ne v0, v9, :cond_2

    const/16 v0, 0x2b

    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    sget-byte v9, Lcom/htc/util/http/XMLRequest;->ESCAPE_CHAR:B

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v9, v0, 0x4

    and-int/lit8 v9, v9, 0xf

    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    and-int/lit8 v9, v0, 0xf

    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lcom/htc/util/http/XMLRequest;->newString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v7, ""

    goto :goto_0
.end method

.method public static getAuthDigest(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/http/XMLRequest;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDigest(Ljava/lang/String;J)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/http/XMLRequest;->toHexStr([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static newBytes(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static newString([B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static toHexStr([B)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    and-int/lit16 v2, v3, 0xff

    sget-object v3, Lcom/htc/util/http/XMLRequest;->Hexhars:[B

    shr-int/lit8 v4, v2, 0x4

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/htc/util/http/XMLRequest;->Hexhars:[B

    and-int/lit8 v4, v2, 0xf

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public PrintMember()V
    .locals 3

    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mDeviceFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mSku="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mCid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mRomVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mApiLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mLocale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mImei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mUiSdk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mMcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mCert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mKeyType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mHtcAccoutn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mSkinVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getXMLTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const/16 v15, 0x190

    :cond_1
    :goto_0
    return v15

    :cond_2
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    const/16 v16, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v8, 0x0

    :goto_1
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_4

    if-nez v8, :cond_3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v17, v9, v8

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v17, v9, v8

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v6, v1}, Lcom/htc/util/http/XMLRequest;->addHeaders(Lorg/apache/http/HttpRequest;Ljava/util/Map;)V

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v15, v0, :cond_6

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {v4, v11}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    const/16 v15, 0x1a1

    goto/16 :goto_0

    :cond_5
    :try_start_1
    const-string v17, "Empty entity"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    const/16 v15, 0x1a1

    goto/16 :goto_0

    :cond_6
    :try_start_2
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_3
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    const/16 v15, 0x1a1

    goto/16 :goto_0

    :cond_7
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method

.method public getXmlString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    return-object v0
.end method

.method public postXMLTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p6, :cond_2

    :cond_0
    const/16 v15, 0x190

    :cond_1
    :goto_0
    return v15

    :cond_2
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    const/16 v16, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v8, 0x0

    :goto_1
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_4

    if-nez v8, :cond_3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v17, v9, v8

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v17, v9, v8

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v17, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v7, v1}, Lcom/htc/util/http/XMLRequest;->addHeaders(Lorg/apache/http/HttpRequest;Ljava/util/Map;)V

    invoke-virtual {v5, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v15, v0, :cond_6

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {v4, v11}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    const/16 v15, 0x1a1

    goto/16 :goto_0

    :cond_5
    :try_start_1
    const-string v17, "Empty entity"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    const/16 v15, 0x1a1

    goto/16 :goto_0

    :cond_6
    :try_start_2
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_3
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    return-void
.end method
