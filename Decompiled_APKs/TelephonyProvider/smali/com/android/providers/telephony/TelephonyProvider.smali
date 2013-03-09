.class public Lcom/android/providers/telephony/TelephonyProvider;
.super Landroid/content/ContentProvider;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/TelephonyProvider$CrossProcessCursorWrapper;,
        Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;,
        Lcom/android/providers/telephony/TelephonyProvider$MSGFORAWRD;
    }
.end annotation


# static fields
.field private static final APN_CUSTOMIZE_FILENAME:Ljava/lang/String; = "apns.xml"

.field private static final APN_CUSTOMIZE_PATH:Ljava/lang/String; = "/system/etc/customer"

.field private static CARDTYPE_POSTPAY:I = 0x0

.field private static CARDTYPE_PREPAY:I = 0x0

.field private static CARDTYPE_UNKNOWN:I = 0x0

.field private static final CARRIERS_CACHE_TABLE:Ljava/lang/String; = "carriers_cache"

.field private static final CARRIERS_TABLE:Ljava/lang/String; = "carriers"

.field private static final COLUMN_APN_ID:Ljava/lang/String; = "apn_id"

.field private static final COLUMN_DUN_ID:Ljava/lang/String; = "dun_id"

.field private static final COLUMN_INSERT_BY_EXTERNEL:Ljava/lang/String; = "external"

.field private static final COLUMN_INSERT_BY_INTERNEL:Ljava/lang/String; = "internal"

.field private static final DATABASE_NAME:Ljava/lang/String; = "telephony.db"

.field private static final DATABASE_VERSION:I = 0xf0000

.field private static DBG:Z = false

.field private static final EVENT_CREATE_CARRIERS_CACHE:I = 0x0

.field private static final PARTNER_APNS_PATH:Ljava/lang/String; = "etc/apns-conf.xml"

.field private static final PREF_FILE:Ljava/lang/String; = "preferred-apn"

.field private static final PREF_FILE_DUN:Ljava/lang/String; = "preferred-dun"

.field private static final TAG:Ljava/lang/String; = "TelephonyProvider"

.field private static final URL_CURRENT:I = 0x2

.field private static final URL_ID:I = 0x3

.field private static final URL_IDENTICAL:I = 0x8

.field private static final URL_MSGFORWARD:I = 0x6

.field private static final URL_PREFERAPN:I = 0x5

.field private static final URL_PREFERDUN:I = 0x7

.field private static final URL_RESTOREAPN:I = 0x4

.field private static final URL_TELEPHONY:I = 0x1

.field private static final mApnDispatchMode:Z

.field private static mCurrentPhoneType:I

.field private static mCustomizeApns:Z

.field private static mHasGetSIMInformation:Z

.field private static mHasRegistered:Z

.field private static mIsCarriersCacheReady:Z

.field private static mSIMGID1:Ljava/lang/String;

.field private static mSIMType:I

.field private static final s_currentNullMap:Landroid/content/ContentValues;

.field private static final s_currentSetMap:Landroid/content/ContentValues;

.field private static final s_urlMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    sput-boolean v2, Lcom/android/providers/telephony/TelephonyProvider;->DBG:Z

    .line 126
    new-instance v1, Landroid/content/UriMatcher;

    invoke-direct {v1, v5}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    .line 130
    sput-boolean v2, Lcom/android/providers/telephony/TelephonyProvider;->mCustomizeApns:Z

    .line 133
    sput v2, Lcom/android/providers/telephony/TelephonyProvider;->mCurrentPhoneType:I

    .line 134
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x70

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xe4

    if-ne v1, v4, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/android/providers/telephony/TelephonyProvider;->mApnDispatchMode:Z

    .line 142
    sput v2, Lcom/android/providers/telephony/TelephonyProvider;->CARDTYPE_UNKNOWN:I

    .line 143
    sput v3, Lcom/android/providers/telephony/TelephonyProvider;->CARDTYPE_PREPAY:I

    .line 144
    sput v6, Lcom/android/providers/telephony/TelephonyProvider;->CARDTYPE_POSTPAY:I

    .line 150
    sput-boolean v2, Lcom/android/providers/telephony/TelephonyProvider;->mHasGetSIMInformation:Z

    .line 151
    sput-boolean v2, Lcom/android/providers/telephony/TelephonyProvider;->mHasRegistered:Z

    .line 152
    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->mSIMGID1:Ljava/lang/String;

    .line 153
    sput v5, Lcom/android/providers/telephony/TelephonyProvider;->mSIMType:I

    .line 154
    sput-boolean v2, Lcom/android/providers/telephony/TelephonyProvider;->mIsCarriersCacheReady:Z

    .line 207
    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v2, "telephony"

    const-string v4, "carriers"

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v2, "telephony"

    const-string v4, "carriers/current"

    invoke-virtual {v1, v2, v4, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v2, "telephony"

    const-string v4, "carriers/#"

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v2, "telephony"

    const-string v4, "carriers/restore"

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v2, "telephony"

    const-string v4, "carriers/preferapn"

    const/4 v5, 0x5

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v2, "telephony"

    const-string v4, "msgforward"

    const/4 v5, 0x6

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v2, "telephony"

    const-string v4, "carriers/preferdun"

    const/4 v5, 0x7

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v2, "telephony"

    const-string v4, "carriers/identical"

    const/16 v5, 0x8

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v1, Lcom/android/providers/telephony/TelephonyProvider;->s_currentNullMap:Landroid/content/ContentValues;

    .line 221
    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->s_currentNullMap:Landroid/content/ContentValues;

    const-string v2, "current"

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_currentSetMap:Landroid/content/ContentValues;

    .line 224
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_currentSetMap:Landroid/content/ContentValues;

    const-string v1, "current"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void

    :cond_1
    move v1, v2

    .line 134
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 157
    new-instance v0, Lcom/android/providers/telephony/TelephonyProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/TelephonyProvider$1;-><init>(Lcom/android/providers/telephony/TelephonyProvider;)V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mHandler:Landroid/os/Handler;

    .line 171
    new-instance v0, Lcom/android/providers/telephony/TelephonyProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/TelephonyProvider$2;-><init>(Lcom/android/providers/telephony/TelephonyProvider;)V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1645
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1820
    sget-boolean v0, Lcom/android/providers/telephony/TelephonyProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 1821
    const-string v0, "TelephonyProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/providers/telephony/TelephonyProvider;->mApnDispatchMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/providers/telephony/TelephonyProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->createCarriersCache()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    sput-boolean p0, Lcom/android/providers/telephony/TelephonyProvider;->mHasGetSIMInformation:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    sput-boolean p0, Lcom/android/providers/telephony/TelephonyProvider;->mIsCarriersCacheReady:Z

    return p0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/telephony/TelephonyProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->sendCreateCarriersCacheEvent()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/providers/telephony/TelephonyProvider;->mCustomizeApns:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    sput-boolean p0, Lcom/android/providers/telephony/TelephonyProvider;->mCustomizeApns:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/providers/telephony/TelephonyProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/providers/telephony/TelephonyProvider;)Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    return-object v0
.end method

.method private apnAreaCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    .line 1701
    if-nez p1, :cond_0

    .line 1702
    const/4 v0, 0x0

    .line 1712
    :goto_0
    return-object v0

    .line 1704
    :cond_0
    const-string v0, ""

    .line 1705
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1707
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND (area is null OR area = \'roaming\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1710
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND (area is null OR area = \'domestic\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private checkPermission()V
    .locals 3

    .prologue
    .line 1482
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_APN_SETTINGS"

    const-string v2, "No permission to write APN settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    return-void
.end method

.method private createCarriersCache()V
    .locals 2

    .prologue
    .line 1899
    sget-boolean v0, Lcom/android/providers/telephony/TelephonyProvider;->mIsCarriersCacheReady:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1933
    :goto_0
    return-void

    .line 1902
    :cond_0
    new-instance v0, Lcom/android/providers/telephony/TelephonyProvider$3;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/TelephonyProvider$3;-><init>(Lcom/android/providers/telephony/TelephonyProvider;)V

    invoke-virtual {v0}, Lcom/android/providers/telephony/TelephonyProvider$3;->start()V

    goto :goto_0
.end method

.method private deleteDispatch(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1630
    const/4 v0, 0x0

    .line 1631
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider;->uriTransform(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1634
    return v0
.end method

.method private getIMSI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1721
    const/4 v0, 0x0

    .line 1722
    .local v0, imsi:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1724
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 1725
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1727
    :cond_0
    return-object v0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1957
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    .line 1958
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1962
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.apn.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferredApnId()J
    .locals 4

    .prologue
    .line 910
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "preferred-apn"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 911
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "apn_id"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private getPreferredDunId()J
    .locals 4

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "preferred-dun"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 907
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "dun_id"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private getSIMInformation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1876
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/providers/telephony/TelephonyProvider;->mHasGetSIMInformation:Z

    .line 1877
    sput-object v8, Lcom/android/providers/telephony/TelephonyProvider;->mSIMGID1:Ljava/lang/String;

    .line 1878
    const/4 v7, -0x1

    sput v7, Lcom/android/providers/telephony/TelephonyProvider;->mSIMType:I

    .line 1880
    :try_start_0
    const-string v7, "com.htc.service.HtcService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1881
    .local v0, classHtcService:Ljava/lang/Class;
    const-string v7, "HTCTELEPHONY_SERVICE"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1882
    .local v3, fieldHtcTelephonyService:Ljava/lang/String;
    const-string v7, "com.htc.service.HtcTelephonyManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1883
    .local v1, classHtcTelephonyManager:Ljava/lang/Class;
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1884
    .local v6, objectHtcTelephonyManager:Ljava/lang/Object;
    const-string v7, "requestGetGID1"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1885
    .local v4, mthGetGID1:Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 1886
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sput-object v7, Lcom/android/providers/telephony/TelephonyProvider;->mSIMGID1:Ljava/lang/String;

    .line 1888
    :cond_0
    const-string v7, "requestGetSIMType"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1889
    .local v5, mthGetSIMType:Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    .line 1890
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sput v7, Lcom/android/providers/telephony/TelephonyProvider;->mSIMType:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1895
    .end local v0           #classHtcService:Ljava/lang/Class;
    .end local v1           #classHtcTelephonyManager:Ljava/lang/Class;
    .end local v3           #fieldHtcTelephonyService:Ljava/lang/String;
    .end local v4           #mthGetGID1:Ljava/lang/reflect/Method;
    .end local v5           #mthGetSIMType:Ljava/lang/reflect/Method;
    .end local v6           #objectHtcTelephonyManager:Ljava/lang/Object;
    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSIMInformation: GID1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/providers/telephony/TelephonyProvider;->mSIMGID1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/providers/telephony/TelephonyProvider;->mSIMType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1896
    return-void

    .line 1892
    :catch_0
    move-exception v2

    .line 1893
    .local v2, e:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleAustraliaIdenticalNumeric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "imsi"
    .parameter "numeric"

    .prologue
    .line 1782
    const-string v3, "50502"

    .line 1783
    .local v3, AUSTRALIA_NUMERIC:Ljava/lang/String;
    const/4 v6, 0x6

    .line 1785
    .local v6, IDENTIFIER_LENGTH:I
    const-string v14, "50502"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1786
    const-string v1, "505"

    .line 1787
    .local v1, AUSTRALIA_MCC:Ljava/lang/String;
    const-string v2, "02"

    .line 1788
    .local v2, AUSTRALIA_MNC:Ljava/lang/String;
    const-string v4, "*"

    .line 1789
    .local v4, AUSTRALIA_SYMBOL:Ljava/lang/String;
    const-string v5, "505029"

    .line 1791
    .local v5, AUSTRALIA_VM:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v14}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1793
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v12, "numeric = \'50502\' AND insert_by is not null AND operator is null"

    .line 1794
    .local v12, starWhere:Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1795
    .local v11, starValues:Landroid/content/ContentValues;
    const-string v14, "numeric"

    const-string v15, "*50502"

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    const-string v14, "mcc"

    const-string v15, "*505"

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    const-string v14, "mnc"

    const-string v15, "*02"

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    const-string v14, "carriers"

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v11, v12, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1799
    .local v7, count:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleAustraliaIdenticalNumeric, star symbol update = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1801
    const/4 v14, 0x0

    const/4 v15, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1802
    .local v9, identifier:Ljava/lang/String;
    const-string v10, ""

    .line 1803
    .local v10, identifierWhere:Ljava/lang/String;
    const-string v14, "505029"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1804
    const-string v10, "numeric = \'*50502\' AND identifier = \'505029\'"

    .line 1808
    :goto_0
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1809
    .local v13, values:Landroid/content/ContentValues;
    const-string v14, "numeric"

    const-string v15, "50502"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const-string v14, "mcc"

    const-string v15, "505"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    const-string v14, "mnc"

    const-string v15, "02"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    const-string v14, "carriers"

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v13, v10, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1813
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleAustraliaIdenticalNumeric, identifier update = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1815
    .end local v1           #AUSTRALIA_MCC:Ljava/lang/String;
    .end local v2           #AUSTRALIA_MNC:Ljava/lang/String;
    .end local v4           #AUSTRALIA_SYMBOL:Ljava/lang/String;
    .end local v5           #AUSTRALIA_VM:Ljava/lang/String;
    .end local v7           #count:I
    .end local v8           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #identifier:Ljava/lang/String;
    .end local v10           #identifierWhere:Ljava/lang/String;
    .end local v11           #starValues:Landroid/content/ContentValues;
    .end local v12           #starWhere:Ljava/lang/String;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 1806
    .restart local v1       #AUSTRALIA_MCC:Ljava/lang/String;
    .restart local v2       #AUSTRALIA_MNC:Ljava/lang/String;
    .restart local v4       #AUSTRALIA_SYMBOL:Ljava/lang/String;
    .restart local v5       #AUSTRALIA_VM:Ljava/lang/String;
    .restart local v7       #count:I
    .restart local v8       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #identifier:Ljava/lang/String;
    .restart local v10       #identifierWhere:Ljava/lang/String;
    .restart local v11       #starValues:Landroid/content/ContentValues;
    .restart local v12       #starWhere:Ljava/lang/String;
    :cond_1
    const-string v10, "numeric = \'*50502\' AND identifier is null"

    goto :goto_0
.end method

.method private handleIdenticalNumeric()V
    .locals 4

    .prologue
    .line 1731
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, imsi:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIdenticalNumeric, imsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1733
    if-nez v0, :cond_0

    .line 1740
    :goto_0
    return-void

    .line 1736
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1738
    .local v1, numeric:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->handleThailandIdenticalNumeric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    invoke-direct {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->handleAustraliaIdenticalNumeric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleThailandIdenticalNumeric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .parameter "imsi"
    .parameter "numeric"

    .prologue
    .line 1743
    const-string v7, "52000"

    .line 1744
    .local v7, THAILAND_NUMERIC:Ljava/lang/String;
    const/4 v3, 0x7

    .line 1746
    .local v3, IDENTIFIER_LENGTH:I
    const-string v17, "52000"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1747
    const-string v5, "520"

    .line 1748
    .local v5, THAILAND_MCC:Ljava/lang/String;
    const-string v6, "00"

    .line 1749
    .local v6, THAILAND_MNC:Ljava/lang/String;
    const-string v8, "*"

    .line 1750
    .local v8, THAILAND_SYMBOL:Ljava/lang/String;
    const-string v4, "5200019"

    .line 1751
    .local v4, THAILAND_CAT_3G:Ljava/lang/String;
    const-string v9, "5200020"

    .line 1753
    .local v9, THAILAND_TRUE_MOVE_H:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 1755
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v15, "numeric = \'52000\' AND insert_by is not null AND operator is null"

    .line 1756
    .local v15, starWhere:Ljava/lang/String;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1757
    .local v14, starValues:Landroid/content/ContentValues;
    const-string v17, "numeric"

    const-string v18, "*52000"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    const-string v17, "mcc"

    const-string v18, "*520"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    const-string v17, "mnc"

    const-string v18, "*00"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    const-string v17, "carriers"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v14, v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1761
    .local v10, count:I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleThailandIdenticalNumeric, star symbol update = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1763
    const/16 v17, 0x0

    const/16 v18, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1764
    .local v12, identifier:Ljava/lang/String;
    const-string v13, ""

    .line 1765
    .local v13, identifierWhere:Ljava/lang/String;
    const-string v17, "5200019"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1766
    const-string v13, "numeric = \'*52000\' AND identifier = \'5200019\'"

    .line 1772
    :goto_0
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1773
    .local v16, values:Landroid/content/ContentValues;
    const-string v17, "numeric"

    const-string v18, "52000"

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    const-string v17, "mcc"

    const-string v18, "520"

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    const-string v17, "mnc"

    const-string v18, "00"

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    const-string v17, "carriers"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v11, v0, v1, v13, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1777
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleThailandIdenticalNumeric, identifier update = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1779
    .end local v4           #THAILAND_CAT_3G:Ljava/lang/String;
    .end local v5           #THAILAND_MCC:Ljava/lang/String;
    .end local v6           #THAILAND_MNC:Ljava/lang/String;
    .end local v8           #THAILAND_SYMBOL:Ljava/lang/String;
    .end local v9           #THAILAND_TRUE_MOVE_H:Ljava/lang/String;
    .end local v10           #count:I
    .end local v11           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v12           #identifier:Ljava/lang/String;
    .end local v13           #identifierWhere:Ljava/lang/String;
    .end local v14           #starValues:Landroid/content/ContentValues;
    .end local v15           #starWhere:Ljava/lang/String;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 1767
    .restart local v4       #THAILAND_CAT_3G:Ljava/lang/String;
    .restart local v5       #THAILAND_MCC:Ljava/lang/String;
    .restart local v6       #THAILAND_MNC:Ljava/lang/String;
    .restart local v8       #THAILAND_SYMBOL:Ljava/lang/String;
    .restart local v9       #THAILAND_TRUE_MOVE_H:Ljava/lang/String;
    .restart local v10       #count:I
    .restart local v11       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12       #identifier:Ljava/lang/String;
    .restart local v13       #identifierWhere:Ljava/lang/String;
    .restart local v14       #starValues:Landroid/content/ContentValues;
    .restart local v15       #starWhere:Ljava/lang/String;
    :cond_1
    const-string v17, "5200020"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1768
    const-string v13, "numeric = \'*52000\' AND identifier = \'5200020\'"

    goto :goto_0

    .line 1770
    :cond_2
    const-string v13, "numeric = \'*52000\' AND identifier is null"

    goto :goto_0
.end method

.method private insertDispatch(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 1622
    const/4 v0, 0x0

    .line 1623
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider;->uriTransform(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1626
    return-object v0
.end method

.method private isExistingDefaultApn(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1487
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v0, "insert_by=? OR insert_by=?"

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v7, newWhere:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 1490
    .local v4, newArgs:[Ljava/lang/String;
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1491
    const-string v0, " AND ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1492
    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1493
    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1494
    array-length v0, p3

    add-int/lit8 v0, v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 1495
    array-length v0, p3

    invoke-static {p3, v1, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1500
    :goto_0
    const-string v0, "internal"

    aput-object v0, v4, v1

    .line 1501
    const-string v0, "external"

    aput-object v0, v4, v2

    .line 1503
    const/4 v8, 0x0

    .line 1504
    .local v8, result:Z
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "insert_by"

    aput-object v0, v2, v1

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "name ASC"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/telephony/TelephonyProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1505
    .local v6, mCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1506
    const/4 v8, 0x1

    .line 1507
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1510
    :cond_0
    return v8

    .line 1497
    .end local v6           #mCursor:Landroid/database/Cursor;
    .end local v8           #result:Z
    :cond_1
    new-array v4, v3, [Ljava/lang/String;

    goto :goto_0
.end method

.method private isPreferredApnIdChanged(Ljava/lang/Long;)Z
    .locals 6
    .parameter "id"

    .prologue
    .line 916
    const/4 v1, 0x1

    .line 917
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "preferred-apn"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 918
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "apn_id"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 919
    .local v0, previousId:Ljava/lang/Long;
    if-ne p1, v0, :cond_0

    .line 920
    const/4 v1, 0x0

    .line 922
    :cond_0
    return v1
.end method

.method private isPreferredDunIdChanged(Ljava/lang/Long;)Z
    .locals 6
    .parameter "id"

    .prologue
    .line 926
    const/4 v1, 0x1

    .line 927
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "preferred-dun"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 928
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "dun_id"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 929
    .local v0, previousId:Ljava/lang/Long;
    if-ne p1, v0, :cond_0

    .line 930
    const/4 v1, 0x0

    .line 932
    :cond_0
    return v1
.end method

.method private isSystemOrPhoneUid(I)Z
    .locals 3
    .parameter "uid"

    .prologue
    .line 1969
    const/4 v0, 0x0

    .line 1970
    .local v0, result:Z
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_1

    .line 1971
    :cond_0
    const/4 v0, 0x1

    .line 1973
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemOrPhoneUid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1974
    return v0
.end method

.method private precondictionCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 1834
    if-nez p1, :cond_0

    .line 1835
    const/4 v0, 0x0

    .line 1844
    :goto_0
    return-object v0

    .line 1837
    :cond_0
    sget-boolean v1, Lcom/android/providers/telephony/TelephonyProvider;->mHasGetSIMInformation:Z

    if-nez v1, :cond_1

    .line 1838
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getSIMInformation()V

    .line 1840
    :cond_1
    const-string v0, ""

    .line 1841
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider;->apnAreaCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1842
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/TelephonyProvider;->simTypeCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1843
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/TelephonyProvider;->simGID1Check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1844
    goto :goto_0
.end method

.method private queryDispatch(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 1603
    const/4 v6, 0x0

    .line 1604
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider;->uriTransform(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1613
    if-nez v6, :cond_0

    .line 1614
    const/4 v0, 0x0

    .line 1616
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/providers/telephony/TelephonyProvider$CrossProcessCursorWrapper;

    invoke-direct {v0, p0, v6}, Lcom/android/providers/telephony/TelephonyProvider$CrossProcessCursorWrapper;-><init>(Lcom/android/providers/telephony/TelephonyProvider;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private readOnlyProtect(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "where"

    .prologue
    .line 1936
    const/4 v0, 0x0

    .line 1937
    .local v0, result:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1938
    const-string v0, "state <> \'readonly\' OR state is null"

    .line 1942
    :goto_0
    return-object v0

    .line 1940
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND (state <> \'readonly\' OR state is null)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    sget-boolean v1, Lcom/android/providers/telephony/TelephonyProvider;->mHasRegistered:Z

    if-nez v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/providers/telephony/TelephonyProvider;->mHasRegistered:Z

    .line 196
    :cond_0
    return-void
.end method

.method private restoreDefaultAPN()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1516
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1518
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "carriers"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1519
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 1520
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    #calls: Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->access$700(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1523
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->handleIdenticalNumeric()V

    .line 1525
    return-void
.end method

.method private sendCreateCarriersCacheEvent()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1946
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1947
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1948
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1949
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1950
    return-void
.end method

.method private setPreferredApnId(Ljava/lang/Long;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preferred-apn"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 890
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 891
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "apn_id"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 892
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 893
    return-void

    .line 891
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private setPreferredDunId(Ljava/lang/Long;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preferred-dun"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 899
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 900
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "dun_id"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 901
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 902
    return-void

    .line 900
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private simGID1Check(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 1863
    if-nez p1, :cond_0

    .line 1864
    const/4 v0, 0x0

    .line 1872
    :goto_0
    return-object v0

    .line 1866
    :cond_0
    const-string v0, ""

    .line 1867
    .local v0, result:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->mSIMGID1:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND (gid1 is null OR gid1 = \'\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1870
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND (gid1 is null OR gid1 = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/TelephonyProvider;->mSIMGID1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private simTypeCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 1848
    if-nez p1, :cond_0

    .line 1849
    const/4 v0, 0x0

    .line 1859
    :goto_0
    return-object v0

    .line 1851
    :cond_0
    const-string v0, ""

    .line 1852
    .local v0, result:Ljava/lang/String;
    sget v1, Lcom/android/providers/telephony/TelephonyProvider;->mSIMType:I

    sget v2, Lcom/android/providers/telephony/TelephonyProvider;->CARDTYPE_PREPAY:I

    if-ne v1, v2, :cond_1

    .line 1853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND (sim_type is null OR sim_type = \'prepay\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1854
    :cond_1
    sget v1, Lcom/android/providers/telephony/TelephonyProvider;->mSIMType:I

    sget v2, Lcom/android/providers/telephony/TelephonyProvider;->CARDTYPE_POSTPAY:I

    if-ne v1, v2, :cond_2

    .line 1855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND (sim_type is null OR sim_type = \'postpay\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1857
    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 199
    sget-boolean v0, Lcom/android/providers/telephony/TelephonyProvider;->mHasRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/providers/telephony/TelephonyProvider;->mHasRegistered:Z

    .line 203
    :cond_0
    return-void
.end method

.method private updateDispatch(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1638
    const/4 v0, 0x0

    .line 1639
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider;->uriTransform(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1642
    return v0
.end method

.method private uriTransform(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 14
    .parameter "url"

    .prologue
    .line 1529
    if-nez p1, :cond_0

    .line 1530
    const-string v11, "TelephonyProvider"

    const-string v12, "uriTransform: uri is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const/4 v7, 0x0

    .line 1596
    :goto_0
    return-object v7

    .line 1533
    :cond_0
    const/4 v7, 0x0

    .line 1534
    .local v7, uri:Landroid/net/Uri;
    const-string v2, "telephony"

    .line 1535
    .local v2, authorityOri:Ljava/lang/String;
    const-string v1, "gsmapn"

    .line 1536
    .local v1, authorityGsm:Ljava/lang/String;
    const-string v0, "cdmaapn"

    .line 1537
    .local v0, authorityCdma:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1538
    .local v10, uriOri:Ljava/lang/String;
    invoke-virtual {v10, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1539
    .local v9, uriGsm:Ljava/lang/String;
    invoke-virtual {v10, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1541
    .local v8, uriCdma:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uriOri="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", uriGsm="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", uriCdma="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 1560
    .local v3, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    .line 1561
    .local v4, dataPhoneType:I
    const/4 v6, 0x0

    .line 1563
    .local v6, mth:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getMobileDataPhoneType"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1564
    if-eqz v6, :cond_1

    .line 1565
    const/4 v11, 0x0

    invoke-virtual {v6, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v4

    .line 1579
    :cond_1
    :goto_1
    if-eqz v6, :cond_3

    .line 1580
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MobileDataPhoneType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1581
    const/4 v11, 0x2

    if-ne v4, v11, :cond_2

    .line 1582
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto/16 :goto_0

    .line 1567
    :catch_0
    move-exception v5

    .line 1568
    .local v5, e:Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 1569
    .end local v5           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v5

    .line 1570
    .local v5, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 1571
    .end local v5           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v5

    .line 1572
    .local v5, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 1573
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v5

    .line 1574
    .local v5, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 1575
    .end local v5           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v5

    .line 1576
    .local v5, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 1584
    .end local v5           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto/16 :goto_0

    .line 1588
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v11

    sput v11, Lcom/android/providers/telephony/TelephonyProvider;->mCurrentPhoneType:I

    .line 1589
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CurrentPhoneType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/providers/telephony/TelephonyProvider;->mCurrentPhoneType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1591
    sget v11, Lcom/android/providers/telephony/TelephonyProvider;->mCurrentPhoneType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 1592
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto/16 :goto_0

    .line 1594
    :cond_4
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto/16 :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/providers/telephony/TelephonyProvider;->isSystemOrPhoneUid(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1243
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/TelephonyProvider;->readOnlyProtect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1245
    :cond_0
    sput-boolean v6, Lcom/android/providers/telephony/TelephonyProvider;->mIsCarriersCacheReady:Z

    .line 1246
    sget-boolean v7, Lcom/android/providers/telephony/TelephonyProvider;->mApnDispatchMode:Z

    if-eqz v7, :cond_1

    .line 1247
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/TelephonyProvider;->deleteDispatch(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1327
    :goto_0
    :pswitch_0
    return v6

    .line 1249
    :cond_1
    const/4 v1, 0x0

    .line 1250
    .local v1, count:I
    const/4 v0, 0x1

    .line 1252
    .local v0, actionAllowed:Z
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->checkPermission()V

    .line 1254
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x90

    if-ne v7, v8, :cond_2

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xa9

    if-ne v7, v8, :cond_2

    .line 1256
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/TelephonyProvider;->isExistingDefaultApn(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    move v0, v5

    .line 1259
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1260
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v7, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 1262
    .local v3, match:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1264
    .local v4, pid:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", delete match="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " actionAllowed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", where=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1266
    packed-switch v3, :pswitch_data_0

    .line 1316
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot delete that URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #match:I
    .end local v4           #pid:I
    :cond_3
    move v0, v6

    .line 1256
    goto :goto_1

    .line 1270
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #match:I
    .restart local v4       #pid:I
    :pswitch_1
    if-eqz v0, :cond_4

    .line 1271
    const-string v5, "carriers"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1320
    :cond_4
    :goto_2
    if-lez v1, :cond_5

    .line 1321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", telephony delete count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :goto_3
    move v6, v1

    .line 1327
    goto/16 :goto_0

    .line 1278
    :pswitch_2
    if-eqz v0, :cond_4

    .line 1279
    const-string v5, "carriers"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1286
    :pswitch_3
    if-eqz v0, :cond_4

    .line 1287
    const-string v7, "carriers"

    const-string v8, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-virtual {v2, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1294
    :pswitch_4
    const/4 v1, 0x1

    .line 1295
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->restoreDefaultAPN()V

    goto :goto_2

    .line 1301
    :pswitch_5
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 1302
    const/4 v1, 0x1

    .line 1303
    goto :goto_2

    .line 1308
    :pswitch_6
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredDunId(Ljava/lang/Long;)V

    .line 1309
    const/4 v1, 0x1

    .line 1310
    goto :goto_2

    .line 1324
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", telephony delete fail count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    goto :goto_3

    .line 1266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 1043
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1057
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/telephony-carrier"

    .line 1054
    :goto_0
    return-object v0

    .line 1048
    :pswitch_2
    const-string v0, "vnd.android.cursor.item/telephony-carrier"

    goto :goto_0

    .line 1051
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/telephony-carrier"

    goto :goto_0

    .line 1054
    :pswitch_4
    const-string v0, "vnd.android.cursor.item/telephony-carrier"

    goto :goto_0

    .line 1043
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 17
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 1066
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/providers/telephony/TelephonyProvider;->mIsCarriersCacheReady:Z

    .line 1067
    sget-boolean v13, Lcom/android/providers/telephony/TelephonyProvider;->mApnDispatchMode:Z

    if-eqz v13, :cond_1

    .line 1068
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/telephony/TelephonyProvider;->insertDispatch(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 1232
    :cond_0
    :goto_0
    return-object v8

    .line 1070
    :cond_1
    const/4 v8, 0x0

    .line 1072
    .local v8, result:Landroid/net/Uri;
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->checkPermission()V

    .line 1074
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v13}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1075
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v13, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 1076
    .local v4, match:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1078
    .local v7, pid:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", insert match="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", values=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1080
    const/4 v5, 0x0

    .line 1081
    .local v5, notify:Z
    packed-switch v4, :pswitch_data_0

    .line 1227
    :cond_2
    :goto_1
    :pswitch_0
    if-eqz v5, :cond_0

    .line 1228
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1229
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", telephony insert end result="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1086
    :pswitch_1
    if-eqz p2, :cond_16

    .line 1087
    new-instance v12, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1094
    .local v12, values:Landroid/content/ContentValues;
    :goto_2
    const-string v13, "name"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1095
    const-string v13, "name"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :cond_3
    const-string v13, "apn"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1098
    const-string v13, "apn"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :cond_4
    const-string v13, "port"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1101
    const-string v13, "port"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    :cond_5
    const-string v13, "proxy"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1104
    const-string v13, "proxy"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :cond_6
    const-string v13, "mmsprotocol"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 1107
    const-string v13, "mmsprotocol"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :cond_7
    const-string v13, "user"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 1110
    const-string v13, "user"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_8
    const-string v13, "server"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 1113
    const-string v13, "server"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    :cond_9
    const-string v13, "password"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 1116
    const-string v13, "password"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    :cond_a
    const-string v13, "mmsport"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 1119
    const-string v13, "mmsport"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :cond_b
    const-string v13, "mmsproxy"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 1122
    const-string v13, "mmsproxy"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    :cond_c
    const-string v13, "authtype"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 1125
    const-string v13, "authtype"

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1130
    :cond_d
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0xd8

    if-eq v13, v14, :cond_f

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v14, 0x9d

    if-ne v13, v14, :cond_e

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v14, 0x1

    if-eq v13, v14, :cond_f

    :cond_e
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v14, 0x7

    if-ne v13, v14, :cond_11

    .line 1135
    :cond_f
    const-string v13, "databearer"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 1136
    const-string v13, "databearer"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_10
    const-string v13, "pppnumber"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 1139
    const-string v13, "pppnumber"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :cond_11
    const-string v13, "protocol"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 1143
    const-string v13, "protocol"

    const-string v14, "IP"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :cond_12
    const-string v13, "roaming_protocol"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_13

    .line 1146
    const-string v13, "roaming_protocol"

    const-string v14, "IP"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    :cond_13
    const-string v13, "carrier_enabled"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 1151
    const-string v13, "carrier_enabled"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1153
    :cond_14
    const-string v13, "bearer"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_15

    .line 1154
    const-string v13, "bearer"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1158
    :cond_15
    const-string v13, "carriers"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    .line 1159
    .local v9, rowID:J
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-lez v13, :cond_17

    .line 1161
    sget-object v13, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1162
    const/4 v5, 0x1

    .line 1167
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "inserted "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " rowID = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1089
    .end local v9           #rowID:J
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_16
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .restart local v12       #values:Landroid/content/ContentValues;
    goto/16 :goto_2

    .line 1164
    .restart local v9       #rowID:J
    :cond_17
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insert failed pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", match="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", values="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    goto :goto_3

    .line 1174
    .end local v9           #rowID:J
    .end local v12           #values:Landroid/content/ContentValues;
    :pswitch_2
    const-string v13, "carriers"

    sget-object v14, Lcom/android/providers/telephony/TelephonyProvider;->s_currentNullMap:Landroid/content/ContentValues;

    const-string v15, "current IS NOT NULL"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1176
    const-string v13, "numeric"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1177
    .local v6, numeric:Ljava/lang/String;
    const-string v13, "carriers"

    sget-object v14, Lcom/android/providers/telephony/TelephonyProvider;->s_currentSetMap:Landroid/content/ContentValues;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "numeric = \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 1180
    .local v11, updated:I
    if-lez v11, :cond_18

    .line 1182
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Setting numeric \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' to be the current operator"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1196
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->sendCreateCarriersCacheEvent()V

    goto/16 :goto_1

    .line 1192
    :cond_18
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed setting numeric \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' to the current operator"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    goto :goto_4

    .line 1203
    .end local v6           #numeric:Ljava/lang/String;
    .end local v11           #updated:I
    :pswitch_3
    if-eqz p2, :cond_2

    .line 1204
    const-string v13, "apn_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1205
    const-string v13, "apn_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 1213
    :pswitch_4
    if-eqz p2, :cond_2

    .line 1214
    const-string v13, "dun_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1215
    const-string v13, "dun_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredDunId(Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 1222
    :pswitch_5
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13, v14}, Lcom/android/providers/telephony/TelephonyProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1223
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", telephony insert result="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1081
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 879
    new-instance v0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    .line 882
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->registerReceiver()V

    .line 885
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 941
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->precondictionCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 945
    sget-boolean v4, Lcom/android/providers/telephony/TelephonyProvider;->mApnDispatchMode:Z

    if-eqz v4, :cond_0

    .line 946
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/telephony/TelephonyProvider;->queryDispatch(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1037
    :goto_0
    return-object v13

    .line 949
    :cond_0
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 955
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-boolean v4, Lcom/android/providers/telephony/TelephonyProvider;->mIsCarriersCacheReady:Z

    if-eqz v4, :cond_1

    .line 956
    const-string v4, "carriers_cache"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 962
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 964
    .local v15, pid:I
    sget-object v4, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 966
    .local v14, match:I
    packed-switch v14, :pswitch_data_0

    .line 1023
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", query match="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", selection=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1025
    const/4 v13, 0x0

    goto :goto_0

    .line 958
    .end local v14           #match:I
    .end local v15           #pid:I
    :cond_1
    const-string v4, "carriers"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 973
    .restart local v14       #match:I
    .restart local v15       #pid:I
    :pswitch_1
    const-string v4, "current IS NOT NULL"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 974
    const/16 p3, 0x0

    .line 1029
    :goto_2
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1030
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1031
    .local v17, ret:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v4, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1033
    const/4 v12, -0x1

    .line 1034
    .local v12, count:I
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1035
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", query match="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", selection=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    move-object/from16 v13, v17

    .line 1037
    goto/16 :goto_0

    .line 978
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v12           #count:I
    .end local v17           #ret:Landroid/database/Cursor;
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 982
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getPreferredApnId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 988
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getPreferredDunId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 993
    :pswitch_6
    const/4 v4, 0x4

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "forward_phone_number"

    aput-object v5, v10, v4

    const/4 v4, 0x1

    const-string v5, "forward_phone_time_stamp"

    aput-object v5, v10, v4

    const/4 v4, 0x2

    const-string v5, "forward_emial_address"

    aput-object v5, v10, v4

    const/4 v4, 0x3

    const-string v5, "forward_email_time_stamp"

    aput-object v5, v10, v4

    .line 998
    .local v10, COLUMN_NAME:[Ljava/lang/String;
    new-instance v13, Landroid/database/MatrixCursor;

    invoke-direct {v13, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1000
    .local v13, csrMatrix:Landroid/database/MatrixCursor;
    array-length v4, v10

    new-array v11, v4, [Ljava/lang/Object;

    .line 1001
    .local v11, aobjRow:[Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "MSG_FORWARD_INFO"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1003
    .local v16, prefForward:Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    const-string v5, "forward_phone_number"

    const-string v6, ""

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v4

    .line 1004
    const/4 v4, 0x1

    const-string v5, "forward_phone_time_stamp"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v11, v4

    .line 1005
    const/4 v4, 0x2

    const-string v5, "forward_emial_address"

    const-string v6, ""

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v4

    .line 1006
    const/4 v4, 0x3

    const-string v5, "forward_email_time_stamp"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v11, v4

    .line 1008
    invoke-virtual {v13, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1010
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", query match="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", selection=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1017
    .end local v10           #COLUMN_NAME:[Ljava/lang/String;
    .end local v11           #aobjRow:[Ljava/lang/Object;
    .end local v13           #csrMatrix:Landroid/database/MatrixCursor;
    .end local v16           #prefForward:Landroid/content/SharedPreferences;
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->handleIdenticalNumeric()V

    .line 1018
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 966
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1338
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/providers/telephony/TelephonyProvider;->mIsCarriersCacheReady:Z

    .line 1339
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->precondictionCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1340
    sget-object v12, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_0

    .line 1341
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/telephony/TelephonyProvider;->isSystemOrPhoneUid(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1342
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->readOnlyProtect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1348
    :cond_0
    sget-boolean v12, Lcom/android/providers/telephony/TelephonyProvider;->mApnDispatchMode:Z

    if-eqz v12, :cond_2

    .line 1349
    invoke-direct/range {p0 .. p4}, Lcom/android/providers/telephony/TelephonyProvider;->updateDispatch(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1477
    :cond_1
    :goto_0
    return v6

    .line 1352
    :cond_2
    const/4 v6, 0x0

    .line 1353
    .local v6, count:I
    const/4 v4, 0x1

    .line 1355
    .local v4, actionAllowed:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->checkPermission()V

    .line 1356
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v13, 0x90

    if-ne v12, v13, :cond_3

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa9

    if-ne v12, v13, :cond_3

    .line 1358
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/telephony/TelephonyProvider;->isExistingDefaultApn(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v4, 0x1

    .line 1361
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v12}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 1362
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v12, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 1363
    .local v10, match:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1365
    .local v11, pid:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", update match="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", values=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\", where=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1367
    packed-switch v10, :pswitch_data_0

    .line 1468
    :pswitch_0
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot update that URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1358
    .end local v7           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #match:I
    .end local v11           #pid:I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1371
    .restart local v7       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #match:I
    .restart local v11       #pid:I
    :pswitch_1
    if-eqz v4, :cond_5

    .line 1372
    const-string v12, "carriers"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v7, v12, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1472
    :cond_5
    :goto_2
    if-lez v6, :cond_1

    .line 1473
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", update match="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , count="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1474
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 1379
    :pswitch_2
    if-eqz v4, :cond_5

    .line 1380
    const-string v12, "carriers"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v7, v12, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    .line 1387
    :pswitch_3
    if-eqz v4, :cond_5

    .line 1388
    if-nez p3, :cond_6

    if-eqz p4, :cond_7

    .line 1389
    :cond_6
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot update URL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with a where clause"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1400
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/telephony/TelephonyProvider;->isSystemOrPhoneUid(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1401
    const-string v12, "carriers"

    const-string v13, "_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v7, v12, v0, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_2

    .line 1404
    :cond_8
    const-string v12, "carriers"

    const-string v13, "_id=? AND (state <> \'readonly\' OR state is null)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v7, v12, v0, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_2

    .line 1414
    :pswitch_4
    if-eqz p2, :cond_5

    .line 1415
    const-string v12, "apn_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1423
    const-string v12, "apn_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 1424
    .local v5, apnId:Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/telephony/TelephonyProvider;->isPreferredApnIdChanged(Ljava/lang/Long;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1425
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 1426
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 1436
    .end local v5           #apnId:Ljava/lang/Long;
    :pswitch_5
    if-eqz p2, :cond_5

    .line 1437
    const-string v12, "dun_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1445
    const-string v12, "dun_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 1446
    .local v8, dunId:Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/providers/telephony/TelephonyProvider;->isPreferredDunIdChanged(Ljava/lang/Long;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1447
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredDunId(Ljava/lang/Long;)V

    .line 1448
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 1457
    .end local v8           #dunId:Ljava/lang/Long;
    :pswitch_6
    if-eqz p2, :cond_9

    .line 1458
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "MSG_FORWARD_INFO"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1459
    .local v9, editor:Landroid/content/SharedPreferences$Editor;
    const-string v12, "forward_phone_number"

    const-string v13, "forward_phone_number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1460
    const-string v12, "forward_phone_time_stamp"

    const-string v13, "forward_phone_time_stamp"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-interface {v9, v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1461
    const-string v12, "forward_emial_address"

    const-string v13, "forward_emial_address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1462
    const-string v12, "forward_email_time_stamp"

    const-string v13, "forward_email_time_stamp"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-interface {v9, v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1463
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1465
    .end local v9           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", update match="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " 1 end"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V

    .line 1466
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
