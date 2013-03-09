.class public Lcom/android/phone/HtcCdmaBacklightUtils;
.super Ljava/lang/Object;
.source "HtcCdmaBacklightUtils.java"


# static fields
.field private static final DBG:Z = false

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static mOldBrightness:I


# instance fields
.field private mBatteryLevel:I

.field private mBatteryScale:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "HtcCdmaBacklightUtils"

    sput-object v0, Lcom/android/phone/HtcCdmaBacklightUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/android/phone/HtcCdmaBacklightUtils;->mBatteryLevel:I

    .line 20
    iput v0, p0, Lcom/android/phone/HtcCdmaBacklightUtils;->mBatteryScale:I

    .line 29
    iput-object p1, p0, Lcom/android/phone/HtcCdmaBacklightUtils;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public processBacklight()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, -0x1

    .line 38
    .local v0, percent:I
    iget v1, p0, Lcom/android/phone/HtcCdmaBacklightUtils;->mBatteryScale:I

    if-eqz v1, :cond_0

    .line 39
    iget v1, p0, Lcom/android/phone/HtcCdmaBacklightUtils;->mBatteryLevel:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/android/phone/HtcCdmaBacklightUtils;->mBatteryScale:I

    div-int v0, v1, v2

    .line 41
    :cond_0
    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 42
    const/16 v1, 0xff

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCdmaBacklightUtils;->setBrightness(I)V

    .line 45
    :cond_1
    return-void
.end method

.method public resetBacklight()V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/HtcCdmaBacklightUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, OldBrightness:I
    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaBacklightUtils;->setBrightness(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0           #OldBrightness:I
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setBatterInfo(II)V
    .locals 0
    .parameter "batteryLevel"
    .parameter "batterySacle"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/phone/HtcCdmaBacklightUtils;->mBatteryLevel:I

    .line 34
    iput p2, p0, Lcom/android/phone/HtcCdmaBacklightUtils;->mBatteryScale:I

    .line 35
    return-void
.end method

.method public setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 59
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 61
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v1

    goto :goto_0
.end method
