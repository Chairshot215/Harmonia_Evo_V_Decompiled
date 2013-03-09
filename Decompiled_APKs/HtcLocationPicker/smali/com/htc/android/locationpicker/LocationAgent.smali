.class public Lcom/htc/android/locationpicker/LocationAgent;
.super Ljava/lang/Object;
.source "LocationAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;,
        Lcom/htc/android/locationpicker/LocationAgent$AgentListener;
    }
.end annotation


# static fields
.field private static final FALLBACK_PROVIDER_THRESHOLD_MILLIS:J = 0x2710L

.field private static final GPS:Ljava/lang/String; = "gps"

.field private static final HANDLER_NOTIFY_CLIENT:I = 0x68

.field private static final HANDLER_TRACKING_TIMEOUT:I = 0x64

.field private static final HANDLER_UPDATE_STATUS:I = 0x67

.field private static final ICON_LEVEL_GPS_OFF:I = 0x6

.field private static final ICON_LEVEL_GPS_ON:I = 0x5

.field private static final ICON_LEVEL_SIGNAL0:I = 0x0

.field private static final ICON_LEVEL_SIGNAL1:I = 0x1

.field private static final ICON_LEVEL_SIGNAL2:I = 0x2

.field private static final ICON_LEVEL_SIGNAL3:I = 0x3

.field private static final ICON_LEVEL_SIGNAL4:I = 0x4

.field private static final LOCATION_MIS_DISTANCE:F = 0.0f

.field private static final LOCATION_UPDATE_MILLIS:J = 0x0L

.field private static final LOW_SIGNAL:I = 0x5

.field public static final MODE_FIX_GPS:I = 0xd

.field public static final MODE_FIX_NETWORK:I = 0xe

.field public static final MODE_STOP:I = 0xa

.field public static final MODE_TIMEOUT:I = 0xc

.field public static final MODE_TRACKING:I = 0xb

.field private static final NETWORK:Ljava/lang/String; = "network"

.field private static PROVIDER_NAMES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LocationAgent"

.field private static final TIMEOUT:J = 0x2710L

.field private static mInstance:Lcom/htc/android/locationpicker/LocationAgent;


# instance fields
.field private gpsListener:Landroid/location/GpsStatus$Listener;

.field private mClientListener:Lcom/htc/android/locationpicker/LocationAgent$AgentListener;

.field private mContext:Landroid/content/Context;

.field private mCurIcon:I

.field private mCurMode:I

.field private final mEnabledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsSignal:F

.field private mHandler:Landroid/os/Handler;

.field private mLocation:Landroid/location/Location;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationNetwork:Landroid/location/Location;

.field private mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gps"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "network"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/locationpicker/LocationAgent;->PROVIDER_NAMES:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/locationpicker/LocationAgent;->mInstance:Lcom/htc/android/locationpicker/LocationAgent;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/htc/android/locationpicker/LocationAgent;->mContext:Landroid/content/Context;

    .line 56
    iput-object v2, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationManager:Landroid/location/LocationManager;

    .line 58
    iput-object v2, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;

    .line 60
    iput-object v2, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationNetwork:Landroid/location/Location;

    .line 64
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I

    .line 66
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurIcon:I

    .line 68
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mTimeout:J

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mGpsSignal:F

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mEnabledProviders:Ljava/util/ArrayList;

    .line 74
    iput-object v2, p0, Lcom/htc/android/locationpicker/LocationAgent;->mClientListener:Lcom/htc/android/locationpicker/LocationAgent$AgentListener;

    .line 332
    new-instance v0, Lcom/htc/android/locationpicker/LocationAgent$1;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/LocationAgent$1;-><init>(Lcom/htc/android/locationpicker/LocationAgent;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationListener:Landroid/location/LocationListener;

    .line 397
    new-instance v0, Lcom/htc/android/locationpicker/LocationAgent$2;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/LocationAgent$2;-><init>(Lcom/htc/android/locationpicker/LocationAgent;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->gpsListener:Landroid/location/GpsStatus$Listener;

    .line 429
    new-instance v0, Lcom/htc/android/locationpicker/LocationAgent$3;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/LocationAgent$3;-><init>(Lcom/htc/android/locationpicker/LocationAgent;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mContext:Landroid/content/Context;

    .line 90
    const-string v0, "LocationAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationAgent;->init()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/locationpicker/LocationAgent;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mEnabledProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/locationpicker/LocationAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/htc/android/locationpicker/LocationAgent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/android/locationpicker/LocationAgent;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/locationpicker/LocationAgent;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/android/locationpicker/LocationAgent;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/locationpicker/LocationAgent;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationNetwork:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/android/locationpicker/LocationAgent;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationNetwork:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/android/locationpicker/LocationAgent;)Lcom/htc/android/locationpicker/LocationAgent$AgentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mClientListener:Lcom/htc/android/locationpicker/LocationAgent$AgentListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/locationpicker/LocationAgent;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/android/locationpicker/LocationAgent;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mGpsSignal:F

    return p1
.end method

.method static synthetic access$800(Lcom/htc/android/locationpicker/LocationAgent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationAgent;->notifyClient()V

    return-void
.end method

.method private getGpsSignalLevel()I
    .locals 3

    .prologue
    .line 266
    iget v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mGpsSignal:F

    const/high16 v2, 0x40a0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 282
    .local v0, level:I
    :goto_0
    return v0

    .line 269
    .end local v0           #level:I
    :cond_0
    iget v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mGpsSignal:F

    const/high16 v2, 0x4120

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 270
    const/4 v0, 0x1

    .restart local v0       #level:I
    goto :goto_0

    .line 272
    .end local v0           #level:I
    :cond_1
    iget v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mGpsSignal:F

    const/high16 v2, 0x41a0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 273
    const/4 v0, 0x2

    .restart local v0       #level:I
    goto :goto_0

    .line 275
    .end local v0           #level:I
    :cond_2
    iget v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mGpsSignal:F

    const/high16 v2, 0x41f0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 276
    const/4 v0, 0x3

    .restart local v0       #level:I
    goto :goto_0

    .line 279
    .end local v0           #level:I
    :cond_3
    const/4 v0, 0x4

    .restart local v0       #level:I
    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 97
    const-string v0, "LocationAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationManager:Landroid/location/LocationManager;

    .line 104
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationAgent;->resetStatus()V

    .line 108
    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/htc/android/locationpicker/LocationAgent;
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    sget-object v0, Lcom/htc/android/locationpicker/LocationAgent;->mInstance:Lcom/htc/android/locationpicker/LocationAgent;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/htc/android/locationpicker/LocationAgent;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/LocationAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/locationpicker/LocationAgent;->mInstance:Lcom/htc/android/locationpicker/LocationAgent;

    .line 84
    :cond_0
    sget-object v0, Lcom/htc/android/locationpicker/LocationAgent;->mInstance:Lcom/htc/android/locationpicker/LocationAgent;

    return-object v0
.end method

.method private isProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "provider"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private notifyClient()V
    .locals 9

    .prologue
    const-wide/16 v3, 0x0

    .line 286
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mClientListener:Lcom/htc/android/locationpicker/LocationAgent$AgentListener;

    if-eqz v0, :cond_0

    .line 287
    iget v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I

    packed-switch v0, :pswitch_data_0

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 289
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mClientListener:Lcom/htc/android/locationpicker/LocationAgent$AgentListener;

    iget v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I

    iget v2, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurIcon:I

    move-wide v5, v3

    invoke-interface/range {v0 .. v6}, Lcom/htc/android/locationpicker/LocationAgent$AgentListener;->onUpdateStatus(IIDD)V

    .line 291
    const-string v0, "LocationAgent"

    const-string v1, "notify client : MODE_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationAgent;->getGpsSignalLevel()I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurIcon:I

    .line 297
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mClientListener:Lcom/htc/android/locationpicker/LocationAgent$AgentListener;

    iget v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I

    iget v2, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurIcon:I

    move-wide v5, v3

    invoke-interface/range {v0 .. v6}, Lcom/htc/android/locationpicker/LocationAgent$AgentListener;->onUpdateStatus(IIDD)V

    .line 298
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    const-wide/16 v7, 0x3e8

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 300
    const-string v0, "LocationAgent"

    const-string v1, "notify client : MODE_TRACKING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationAgent;->getGpsSignalLevel()I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurIcon:I

    .line 306
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mClientListener:Lcom/htc/android/locationpicker/LocationAgent$AgentListener;

    iget v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I

    iget v2, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurIcon:I

    move-wide v5, v3

    invoke-interface/range {v0 .. v6}, Lcom/htc/android/locationpicker/LocationAgent$AgentListener;->onUpdateStatus(IIDD)V

    .line 308
    const-string v0, "LocationAgent"

    const-string v1, "notify client : MODE_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    :pswitch_3
    const-wide/16 v3, 0x0

    .line 314
    .local v3, lat:D
    const-wide/16 v5, 0x0

    .line 315
    .local v5, lon:D
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 317
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 319
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurIcon:I

    .line 320
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mClientListener:Lcom/htc/android/locationpicker/LocationAgent$AgentListener;

    iget v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I

    iget v2, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurIcon:I

    invoke-interface/range {v0 .. v6}, Lcom/htc/android/locationpicker/LocationAgent$AgentListener;->onUpdateStatus(IIDD)V

    .line 322
    const-string v0, "LocationAgent"

    const-string v1, "notify client : MODE_FIX_GPS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removeSystemListener()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->gpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 123
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 125
    return-void
.end method

.method private requestGPS()V
    .locals 6

    .prologue
    .line 217
    const-string v0, "LocationAgent"

    const-string v1, "requestGPS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 220
    return-void
.end method

.method private requestNetwork()V
    .locals 6

    .prologue
    .line 224
    const-string v0, "LocationAgent"

    const-string v1, "requestNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 227
    return-void
.end method

.method private resetStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;

    .line 112
    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationNetwork:Landroid/location/Location;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mGpsSignal:F

    .line 114
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mEnabledProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 118
    return-void
.end method


# virtual methods
.method public continueTracking()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 150
    const/16 v0, 0xb

    iput v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I

    .line 151
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mTimeout:J

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 153
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationAgent;->notifyClient()V

    .line 154
    return-void
.end method

.method public enableMyLocation()V
    .locals 9

    .prologue
    .line 158
    const-string v5, "LocationAgent"

    const-string v6, "enableMyLocation"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/16 v5, 0xb

    iput v5, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I

    .line 164
    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationManager:Landroid/location/LocationManager;

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationAgent;->gpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 166
    sget-object v0, Lcom/htc/android/locationpicker/LocationAgent;->PROVIDER_NAMES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 168
    .local v4, name:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v4}, Lcom/htc/android/locationpicker/LocationAgent;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationAgent;->mEnabledProviders:Ljava/util/ArrayList;

    new-instance v6, Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;

    invoke-direct {v6, v4}, Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v5, "gps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationAgent;->requestGPS()V

    .line 177
    :cond_1
    const-string v5, "network"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationAgent;->requestNetwork()V

    .line 186
    :cond_2
    const-string v5, "LocationAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request updates from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 189
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Ljava/lang/SecurityException;
    const-string v5, "LocationAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t get provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 194
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 196
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "LocationAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t get provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 201
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .end local v4           #name:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationAgent;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    iget-wide v7, p0, Lcom/htc/android/locationpicker/LocationAgent;->mTimeout:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 202
    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationAgent;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x68

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 203
    return-void
.end method

.method public getFixGpsCeoPoint()Lcom/google/android/maps/GeoPoint;
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, gp:Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 250
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    .end local v0           #gp:Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 252
    .restart local v0       #gp:Lcom/google/android/maps/GeoPoint;
    :cond_0
    return-object v0
.end method

.method public getFixGpsLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getFixNetworkGeoPoint()Lcom/google/android/maps/GeoPoint;
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, gp:Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationNetwork:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 258
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    .end local v0           #gp:Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationNetwork:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationNetwork:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 260
    .restart local v0       #gp:Lcom/google/android/maps/GeoPoint;
    :cond_0
    return-object v0
.end method

.method public getFixNetworkLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mLocationNetwork:Landroid/location/Location;

    return-object v0
.end method

.method public isTrackingGps()Z
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAgentListener(Lcom/htc/android/locationpicker/LocationAgent$AgentListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mClientListener:Lcom/htc/android/locationpicker/LocationAgent$AgentListener;

    .line 237
    return-void
.end method

.method public setTimeout(Ljava/lang/Long;)V
    .locals 4
    .parameter "timer"

    .prologue
    const/16 v3, 0x64

    .line 230
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mTimeout:J

    .line 231
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/htc/android/locationpicker/LocationAgent;->mTimeout:J

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 233
    return-void
.end method

.method public shutdownAgent()V
    .locals 2

    .prologue
    .line 132
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I

    .line 133
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationAgent;->resetStatus()V

    .line 136
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mTimeout:J

    .line 137
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationAgent;->removeSystemListener()V

    .line 138
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationAgent;->notifyClient()V

    .line 139
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .prologue
    .line 142
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I

    .line 143
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationAgent;->resetStatus()V

    .line 145
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationAgent;->removeSystemListener()V

    .line 146
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationAgent;->notifyClient()V

    .line 147
    return-void
.end method
