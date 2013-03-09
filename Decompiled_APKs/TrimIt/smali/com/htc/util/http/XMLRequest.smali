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

.field private static final LOG_FLAG:Z = true

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

    .prologue
    .line 760
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/http/XMLRequest;->Hexhars:[B

    .line 809
    const/16 v0, 0x25

    sput-byte v0, Lcom/htc/util/http/XMLRequest;->ESCAPE_CHAR:B

    .line 810
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/htc/util/http/XMLRequest;->WWW_FORM_URL:Ljava/util/BitSet;

    return-void

    .line 760
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
    .parameter "context"
    .parameter "htcAccount"

    .prologue
    const/16 v7, 0x1f40

    const/16 v8, 0x28

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    .line 156
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    .line 157
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    .line 158
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    .line 159
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mHCid:Ljava/lang/String;

    .line 160
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    .line 161
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    .line 162
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    .line 163
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    .line 164
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    .line 165
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    .line 166
    const-string v6, "2"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mPlatform:Ljava/lang/String;

    .line 167
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    .line 168
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    .line 169
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    .line 170
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    .line 173
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWDeviceFlag:Ljava/lang/String;

    .line 174
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWSku:Ljava/lang/String;

    .line 175
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWCid:Ljava/lang/String;

    .line 176
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWCert:Ljava/lang/String;

    .line 177
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWKeyType:Ljava/lang/String;

    .line 178
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    .line 179
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    .line 182
    iput v7, p0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    .line 183
    iput v7, p0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    .line 185
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 208
    iput-object p1, p0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    .line 210
    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 211
    .local v5, telMgr:Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_4

    .line 213
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

    .line 214
    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v7, "2.1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 216
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v8, :cond_5

    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v6, :cond_5

    .line 217
    const-string v6, "211"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    .line 229
    :cond_0
    :goto_0
    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v7, "3.5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_1

    .line 233
    const-string v6, "-42"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    .line 237
    :cond_1
    const-string v6, "ro.cid"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    .line 238
    const-string v6, "ro.build.version.incremental"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    .line 239
    const-string v6, "ro.build.version.sdk"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    .line 240
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

    .line 241
    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    .line 242
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    .line 243
    const-string v6, "ro.htc.common.version"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    .line 244
    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    const-string v7, "."

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    .line 247
    invoke-static {p1}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    .line 250
    const-string v6, "ro.product.version"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, productVersion:Ljava/lang/String;
    const-string v6, "0"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    .line 254
    if-eqz v4, :cond_2

    .line 256
    :try_start_0
    const-string v6, "//."

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, networkOperator:Ljava/lang/String;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_8

    .line 267
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    .line 268
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    .line 277
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

    .line 278
    .local v0, certFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 280
    const-string v6, "1"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    .line 284
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 286
    .local v1, configFile:Ljava/util/Properties;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/HTCWORACert"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 287
    const-string v6, "host"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    .line 288
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] mOWHost="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v6, "schema"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    .line 290
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] mOWSchema="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v6, "de"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mOWDeviceFlag:Ljava/lang/String;

    .line 292
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] mOWDeviceFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWDeviceFlag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v6, "sk"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mOWSku:Ljava/lang/String;

    .line 294
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] mOWSku="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWSku:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v6, "ci"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mOWCid:Ljava/lang/String;

    .line 296
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] mOWCid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWCid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v6, "ct"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mOWCert:Ljava/lang/String;

    .line 298
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] mOWCert="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWCert:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v6, "rk"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mOWKeyType:Ljava/lang/String;

    .line 300
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] mOWKeyType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWKeyType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 317
    .end local v1           #configFile:Ljava/util/Properties;
    :goto_3
    const-string v6, "2"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    .line 321
    if-eqz p2, :cond_3

    .line 322
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    .line 325
    :cond_3
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mDeviceFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mSku="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mCid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mRomVersion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mApiLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mLocale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mImei="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mUiSdk="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mMcc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mMnc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mCert="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mKeyType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mHtcAccoutn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mSkinVer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v0           #certFile:Ljava/io/File;
    .end local v3           #networkOperator:Ljava/lang/String;
    .end local v4           #productVersion:Ljava/lang/String;
    :cond_4
    return-void

    .line 218
    :cond_5
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v8, :cond_6

    .line 220
    const-string v6, "210"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    goto/16 :goto_0

    .line 221
    :cond_6
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x21

    if-ne v6, v7, :cond_7

    .line 223
    const-string v6, "213"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    goto/16 :goto_0

    .line 224
    :cond_7
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x22

    if-ne v6, v7, :cond_0

    .line 226
    const-string v6, "212"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    goto/16 :goto_0

    .line 259
    .restart local v4       #productVersion:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 261
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 272
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #networkOperator:Ljava/lang/String;
    :cond_8
    const-string v6, "000"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    .line 273
    const-string v6, "00"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    goto/16 :goto_2

    .line 301
    .restart local v0       #certFile:Ljava/io/File;
    .restart local v1       #configFile:Ljava/util/Properties;
    :catch_1
    move-exception v2

    .line 303
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v6, "XMLRequest"

    const-string v7, "[XMLRequest] FileNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 304
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 306
    .local v2, e:Ljava/io/IOException;
    const-string v6, "XMLRequest"

    const-string v7, "[XMLRequest] IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 312
    .end local v1           #configFile:Ljava/util/Properties;
    .end local v2           #e:Ljava/io/IOException;
    :cond_9
    const-string v6, "2"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public static IsNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 195
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 197
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 200
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 203
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method private addHeaders(Lorg/apache/http/HttpRequest;Ljava/util/Map;)V
    .locals 10
    .parameter "httpGet"
    .parameter
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

    .prologue
    .line 599
    .local p2, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 600
    .local v6, timestamp:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    .line 602
    .local v0, account:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    if-eqz v7, :cond_1

    if-eqz p2, :cond_0

    const-string v7, "de"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 603
    :cond_0
    const-string v7, "de"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_1
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    if-eqz v7, :cond_3

    if-eqz p2, :cond_2

    const-string v7, "sk"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    .line 605
    :cond_2
    const-string v7, "sk"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_3
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    if-eqz v7, :cond_5

    if-eqz p2, :cond_4

    const-string v7, "ci"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    .line 607
    :cond_4
    const-string v7, "ci"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_5
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mHCid:Ljava/lang/String;

    if-eqz v7, :cond_7

    if-eqz p2, :cond_6

    const-string v7, "hc"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_7

    .line 609
    :cond_6
    const-string v7, "hc"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mHCid:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_7
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    if-eqz v7, :cond_9

    if-eqz p2, :cond_8

    const-string v7, "rv"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_9

    .line 611
    :cond_8
    const-string v7, "rv"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_9
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    if-eqz v7, :cond_b

    if-eqz p2, :cond_a

    const-string v7, "al"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_b

    .line 613
    :cond_a
    const-string v7, "al"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_b
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    if-eqz v7, :cond_d

    if-eqz p2, :cond_c

    const-string v7, "le"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_d

    .line 615
    :cond_c
    const-string v7, "le"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_d
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    if-eqz v7, :cond_f

    if-eqz p2, :cond_e

    const-string v7, "ii"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_f

    .line 618
    :cond_e
    const-string v7, "ii"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_f
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    if-eqz v7, :cond_11

    if-eqz p2, :cond_10

    const-string v7, "mnc"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_11

    .line 620
    :cond_10
    const-string v7, "mnc"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_11
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    if-eqz v7, :cond_13

    if-eqz p2, :cond_12

    const-string v7, "mcc"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_13

    .line 622
    :cond_12
    const-string v7, "mcc"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_13
    const-string v7, "2"

    if-eqz v7, :cond_15

    if-eqz p2, :cond_14

    const-string v7, "pl"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_15

    .line 624
    :cond_14
    const-string v7, "pl"

    const-string v8, "2"

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_15
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    if-eqz v7, :cond_17

    if-eqz p2, :cond_16

    const-string v7, "ct"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_17

    .line 626
    :cond_16
    const-string v7, "ct"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_17
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    if-eqz v7, :cond_19

    if-eqz p2, :cond_18

    const-string v7, "rk"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_19

    .line 628
    :cond_18
    const-string v7, "rk"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_19
    if-eqz p2, :cond_1a

    const-string v7, "tv"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1b

    .line 630
    :cond_1a
    const-string v7, "tv"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_1b
    if-eqz p2, :cond_1c

    const-string v7, "ht"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_24

    .line 632
    :cond_1c
    const-string v7, "ht"

    invoke-interface {p1, v7, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :goto_0
    if-eqz p2, :cond_1d

    const-string v7, "mya"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1d

    .line 643
    const-string v7, "mya"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #account:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 650
    .restart local v0       #account:Ljava/lang/String;
    :cond_1d
    if-eqz v0, :cond_1f

    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    if-eqz v7, :cond_1f

    if-eqz p2, :cond_1e

    const-string v7, "digest"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1f

    .line 652
    :cond_1e
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9, v0}, Lcom/htc/util/http/XMLRequest;->getAuthDigest(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, digest:Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 655
    const-string v7, "XMLRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[XMLRequest] digest="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v7, "digest"

    invoke-interface {p1, v7, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    .end local v1           #digest:Ljava/lang/String;
    :cond_1f
    :goto_1
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    if-eqz v7, :cond_21

    if-eqz p2, :cond_20

    const-string v7, "uisdk"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_21

    .line 666
    :cond_20
    const-string v7, "uisdk"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_21
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    if-eqz v7, :cond_23

    if-eqz p2, :cond_22

    const-string v7, "skn"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_23

    .line 671
    :cond_22
    const-string v7, "skn"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_23
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v3

    .line 677
    .local v3, hdIterator:Lorg/apache/http/HeaderIterator;
    const/4 v2, 0x0

    .line 678
    .local v2, hd:Lorg/apache/http/Header;
    :goto_2
    if-eqz v3, :cond_26

    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 680
    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v2

    .line 681
    const-string v7, "XMLRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[XMLRequest] before UserEdit Header "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 634
    .end local v2           #hd:Lorg/apache/http/Header;
    .end local v3           #hdIterator:Lorg/apache/http/HeaderIterator;
    :cond_24
    const-string v7, "ht"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #timestamp:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6       #timestamp:Ljava/lang/String;
    goto/16 :goto_0

    .line 660
    .restart local v1       #digest:Ljava/lang/String;
    :cond_25
    const-string v7, "digest"

    const-string v8, ""

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 685
    .end local v1           #digest:Ljava/lang/String;
    .restart local v2       #hd:Lorg/apache/http/Header;
    .restart local v3       #hdIterator:Lorg/apache/http/HeaderIterator;
    :cond_26
    if-eqz p2, :cond_27

    .line 687
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 688
    .local v5, keys:[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    array-length v7, v5

    if-ge v4, v7, :cond_27

    .line 690
    const-string v8, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[XMLRequest] UserEdit addHeader "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v5, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v7, v5, v4

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    aget-object v7, v5, v4

    check-cast v7, Ljava/lang/String;

    aget-object v8, v5, v4

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 696
    .end local v4           #i:I
    .end local v5           #keys:[Ljava/lang/Object;
    :cond_27
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v3

    .line 697
    const/4 v2, 0x0

    .line 698
    :goto_4
    if-eqz v3, :cond_28

    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_28

    .line 700
    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v2

    .line 701
    const-string v7, "XMLRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[XMLRequest] after UserEdit Header "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 710
    :cond_28
    const-string v7, "mya"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 712
    const-string v7, "XMLRequest"

    const-string v8, "[XMLRequest] remove htcAccount"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v7, "mya"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 720
    :cond_29
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mOWDeviceFlag:Ljava/lang/String;

    if-eqz v7, :cond_2a

    .line 722
    const-string v7, "de"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 723
    const-string v7, "de"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWDeviceFlag:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_2a
    :goto_5
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mOWSku:Ljava/lang/String;

    if-eqz v7, :cond_2b

    .line 729
    const-string v7, "sk"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 730
    const-string v7, "sk"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWSku:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_2b
    :goto_6
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mOWCid:Ljava/lang/String;

    if-eqz v7, :cond_2c

    .line 736
    const-string v7, "ci"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 737
    const-string v7, "ci"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWCid:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_2c
    :goto_7
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mOWCert:Ljava/lang/String;

    if-eqz v7, :cond_2d

    .line 743
    const-string v7, "ct"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 744
    const-string v7, "ct"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWCert:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_2d
    :goto_8
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v3

    .line 750
    const/4 v2, 0x0

    .line 751
    :goto_9
    if-eqz v3, :cond_32

    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 753
    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v2

    .line 754
    const-string v7, "XMLRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[XMLRequest] after TestOW Header "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 725
    :cond_2e
    const-string v7, "de"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWDeviceFlag:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 732
    :cond_2f
    const-string v7, "sk"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWSku:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 739
    :cond_30
    const-string v7, "ci"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWCid:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 746
    :cond_31
    const-string v7, "ct"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWCert:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 758
    :cond_32
    return-void
.end method

.method private static final encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "value"

    .prologue
    const/16 v11, 0x10

    .line 826
    :try_start_0
    invoke-static {p0}, Lcom/htc/util/http/XMLRequest;->newBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 830
    .local v2, bytes:[B
    if-nez v2, :cond_0

    .line 831
    const/4 v7, 0x0

    .line 861
    .end local v2           #bytes:[B
    :goto_0
    return-object v7

    .line 827
    :catch_0
    move-exception v3

    .line 828
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v7, ""

    goto :goto_0

    .line 833
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #bytes:[B
    :cond_0
    const/4 v9, 0x0

    aget-byte v10, v2, v9

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 835
    sget-object v8, Lcom/htc/util/http/XMLRequest;->WWW_FORM_URL:Ljava/util/BitSet;

    .line 836
    .local v8, urlsafe:Ljava/util/BitSet;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 837
    .local v1, buffer:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v9, v2

    if-ge v6, v9, :cond_4

    .line 838
    aget-byte v0, v2, v6

    .line 839
    .local v0, b:I
    if-gez v0, :cond_1

    .line 840
    add-int/lit16 v0, v0, 0x100

    .line 842
    :cond_1
    invoke-virtual {v8, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 843
    const/16 v9, 0x20

    if-ne v0, v9, :cond_2

    .line 844
    const/16 v0, 0x2b

    .line 846
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 837
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 848
    :cond_3
    sget-byte v9, Lcom/htc/util/http/XMLRequest;->ESCAPE_CHAR:B

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 849
    shr-int/lit8 v9, v0, 0x4

    and-int/lit8 v9, v9, 0xf

    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 850
    .local v4, hex1:C
    and-int/lit8 v9, v0, 0xf

    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 851
    .local v5, hex2:C
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 852
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 857
    .end local v0           #b:I
    .end local v4           #hex1:C
    .end local v5           #hex2:C
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lcom/htc/util/http/XMLRequest;->newString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .local v7, result:Ljava/lang/String;
    goto :goto_0

    .line 858
    .end local v7           #result:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 859
    .restart local v3       #ex:Ljava/io/UnsupportedEncodingException;
    const-string v7, ""

    goto :goto_0
.end method

.method public static getAuthDigest(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "currentTimeStamp"
    .parameter "imei"
    .parameter "myhtcAccount"

    .prologue
    .line 818
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 819
    .local v0, conbine:Ljava/lang/StringBuffer;
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

    .line 820
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/http/XMLRequest;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDigest(Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .parameter "myhtcAccount"
    .parameter "handsetTime"

    .prologue
    .line 773
    const/4 v1, 0x0

    .line 777
    .local v1, digest:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 778
    .local v4, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 780
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 781
    .local v2, digestA:Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 782
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 784
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/htc/util/http/XMLRequest;->toHexStr([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 791
    .end local v0           #bytes:[B
    .end local v2           #digestA:Ljava/security/MessageDigest;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :goto_0
    return-object v1

    .line 786
    :catch_0
    move-exception v3

    .line 789
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static newBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 864
    if-nez p0, :cond_0

    .line 865
    const/4 v0, 0x0

    .line 867
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
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 871
    if-nez p0, :cond_0

    .line 872
    const/4 v0, 0x0

    .line 874
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
    .parameter "b"

    .prologue
    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 797
    .local v1, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 799
    aget-byte v3, p0, v0

    and-int/lit16 v2, v3, 0xff

    .line 800
    .local v2, v:I
    sget-object v3, Lcom/htc/util/http/XMLRequest;->Hexhars:[B

    shr-int/lit8 v4, v2, 0x4

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 801
    sget-object v3, Lcom/htc/util/http/XMLRequest;->Hexhars:[B

    and-int/lit8 v4, v2, 0xf

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 797
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    .end local v2           #v:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public PrintMember()V
    .locals 3

    .prologue
    .line 880
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

    .line 881
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

    .line 882
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

    .line 883
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

    .line 884
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

    .line 885
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

    .line 886
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

    .line 887
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

    .line 888
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

    .line 889
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

    .line 890
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

    .line 891
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

    .line 893
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

    .line 895
    return-void
.end method

.method public getXMLTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I
    .locals 20
    .parameter "schema"
    .parameter "host"
    .parameter "service"
    .parameter
    .parameter
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

    .prologue
    .line 375
    .local p4, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, request:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 376
    :cond_0
    const/16 v15, 0x190

    .line 474
    :cond_1
    :goto_0
    return v15

    .line 378
    :cond_2
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 379
    .local v7, httpParameters:Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 381
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 383
    .local v5, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    const/16 v16, 0x0

    .line 384
    .local v16, uriBuilder:Ljava/lang/StringBuilder;
    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] schema="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " host"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " service="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 391
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    :goto_1
    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] uriBuilder="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-eqz p5, :cond_7

    .line 406
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v9

    .line 407
    .local v9, keys:[Ljava/lang/Object;
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 408
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_7

    .line 410
    if-nez v8, :cond_6

    .line 411
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

    .line 408
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 393
    .end local v8           #i:I
    .end local v9           #keys:[Ljava/lang/Object;
    :cond_3
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 395
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 396
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 398
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
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

    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 413
    .restart local v8       #i:I
    .restart local v9       #keys:[Ljava/lang/Object;
    :cond_6
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

    goto/16 :goto_3

    .line 417
    .end local v8           #i:I
    .end local v9           #keys:[Ljava/lang/Object;
    :cond_7
    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] getXMLTable URL:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 422
    .local v6, httpGet:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v6, v1}, Lcom/htc/util/http/XMLRequest;->addHeaders(Lorg/apache/http/HttpRequest;Ljava/util/Map;)V

    .line 424
    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 426
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 428
    .local v15, status:I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v15, v0, :cond_9

    .line 430
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 431
    .local v4, entity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_8

    .line 433
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 434
    .local v11, ostream:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v4, v11}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 435
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 441
    .end local v11           #ostream:Ljava/io/ByteArrayOutputStream;
    :goto_4
    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] HTTP CLIENT "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 461
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_0
    move-exception v3

    .line 462
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 463
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 464
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 439
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_8
    :try_start_1
    const-string v17, "Empty entity"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    .line 465
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_1
    move-exception v3

    .line 466
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 467
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 468
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 445
    .end local v3           #e:Ljava/io/IOException;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_9
    :try_start_2
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 446
    .local v2, content:Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 448
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .local v14, sb:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 451
    .local v12, reader:Ljava/io/BufferedReader;
    :goto_5
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, line:Ljava/lang/String;
    if-eqz v10, :cond_a

    .line 453
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 470
    .end local v2           #content:Ljava/io/InputStream;
    .end local v10           #line:Ljava/lang/String;
    .end local v12           #reader:Ljava/io/BufferedReader;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .end local v15           #status:I
    :catch_2
    move-exception v3

    .line 472
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 473
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 474
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 455
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #content:Ljava/io/InputStream;
    .restart local v10       #line:Ljava/lang/String;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #sb:Ljava/lang/StringBuilder;
    .restart local v15       #status:I
    :cond_a
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 456
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method

.method public getXmlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    return-object v0
.end method

.method public postXMLTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)I
    .locals 20
    .parameter "schema"
    .parameter "host"
    .parameter "service"
    .parameter
    .parameter
    .parameter "post"
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

    .prologue
    .line 499
    .local p4, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, request:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p6, :cond_2

    .line 500
    :cond_0
    const/16 v15, 0x190

    .line 593
    :cond_1
    :goto_0
    return v15

    .line 502
    :cond_2
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 503
    .local v6, httpParameters:Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 504
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 505
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 507
    .local v5, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    const/16 v16, 0x0

    .line 508
    .local v16, uriBuilder:Ljava/lang/StringBuilder;
    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] schema="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " host"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " service="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 515
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    :goto_1
    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] uriBuilder="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    if-eqz p5, :cond_7

    .line 532
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v9

    .line 533
    .local v9, keys:[Ljava/lang/Object;
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 534
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_7

    .line 536
    if-nez v8, :cond_6

    .line 537
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

    .line 534
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 517
    .end local v8           #i:I
    .end local v9           #keys:[Ljava/lang/Object;
    :cond_3
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 519
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 520
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 522
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
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

    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 539
    .restart local v8       #i:I
    .restart local v9       #keys:[Ljava/lang/Object;
    :cond_6
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

    goto/16 :goto_3

    .line 542
    .end local v8           #i:I
    .end local v9           #keys:[Ljava/lang/Object;
    :cond_7
    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] postXMLTable URL:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 546
    .local v7, httpPost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v17, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 547
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v7, v1}, Lcom/htc/util/http/XMLRequest;->addHeaders(Lorg/apache/http/HttpRequest;Ljava/util/Map;)V

    .line 549
    invoke-virtual {v5, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 551
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 553
    .local v15, status:I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v15, v0, :cond_9

    .line 555
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 556
    .local v4, entity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_8

    .line 558
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 559
    .local v11, ostream:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v4, v11}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 560
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 566
    .end local v11           #ostream:Ljava/io/ByteArrayOutputStream;
    :goto_4
    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] HTTP CLIENT "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 586
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_0
    move-exception v3

    .line 587
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 588
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 589
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 564
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_8
    :try_start_1
    const-string v17, "Empty entity"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 590
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_1
    move-exception v3

    .line 591
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 592
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 593
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 570
    .end local v3           #e:Ljava/io/IOException;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_9
    :try_start_2
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 571
    .local v2, content:Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 573
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .local v14, sb:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 576
    .local v12, reader:Ljava/io/BufferedReader;
    :goto_5
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, line:Ljava/lang/String;
    if-eqz v10, :cond_a

    .line 578
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 580
    :cond_a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 581
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 351
    iput p1, p0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    .line 352
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 361
    iput p1, p0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    .line 362
    return-void
.end method
