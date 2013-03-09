.class public Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;
.super Ljava/lang/Object;
.source "DeviceInfoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DFPI.DeviceInfoHelper"

.field private static mLocationManager:Landroid/location/LocationManager;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDeviceInfoSP:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 25
    sput-object v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 27
    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    .line 31
    const-string v0, "DFPI.DeviceInfoHelper"

    const-string v1, "DeviceInfoHelper.DeviceInfoHelper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v0, "DEVICEINFOPREFERENCE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    .line 33
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 34
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mLocationManager:Landroid/location/LocationManager;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 36
    iput-object p1, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private enableNetworkLocationSource()V
    .locals 3

    .prologue
    .line 234
    const-string v0, "DFPI.DeviceInfoHelper"

    const-string v1, "DeviceInfoHelper.enableNetworkLocationSource()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "network"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 236
    return-void
.end method

.method private getAddress()Landroid/location/Address;
    .locals 10

    .prologue
    .line 144
    const-string v2, "DFPI.DeviceInfoHelper"

    const-string v3, "DeviceInfoHelper.getAddress()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v8, 0x0

    .line 146
    .local v8, myAddress:Landroid/location/Address;
    sget-object v2, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 147
    .local v9, myLocation:Landroid/location/Location;
    if-nez v9, :cond_0

    .line 148
    const-string v2, "DFPI.DeviceInfoHelper"

    const-string v3, "getLocation from GPS failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v2, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 151
    :cond_0
    if-eqz v9, :cond_1

    .line 152
    const-string v2, "DFPI.DeviceInfoHelper"

    const-string v3, "getLocation success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v2, "DFPI.DeviceInfoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Longitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v2, "DFPI.DeviceInfoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mContext:Landroid/content/Context;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 157
    .local v1, myGeocoder:Landroid/location/Geocoder;
    :try_start_0
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 159
    .local v7, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const-string v2, "DFPI.DeviceInfoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addresses size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 161
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/location/Address;

    move-object v8, v0

    .line 162
    const-string v3, "DFPI.DeviceInfoHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Street = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v3, "DFPI.DeviceInfoHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "City = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v3, "DFPI.DeviceInfoHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "country code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v3, "DFPI.DeviceInfoHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "country name = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1           #myGeocoder:Landroid/location/Geocoder;
    .end local v7           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_1
    :goto_0
    return-object v8

    .line 167
    .restart local v1       #myGeocoder:Landroid/location/Geocoder;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getLatitude()Ljava/lang/String;
    .locals 4

    .prologue
    .line 198
    const-string v2, "DFPI.DeviceInfoHelper"

    const-string v3, "DeviceInfoHelper.getLatitude()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, strLat:Ljava/lang/String;
    sget-object v2, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 201
    .local v0, myLocation:Landroid/location/Location;
    if-nez v0, :cond_0

    .line 202
    sget-object v2, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 204
    :cond_0
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 208
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getLongitude()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    const-string v2, "DFPI.DeviceInfoHelper"

    const-string v3, "DeviceInfoHelper.getLongitude()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, strLong:Ljava/lang/String;
    sget-object v2, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 218
    .local v0, myLocation:Landroid/location/Location;
    if-nez v0, :cond_0

    .line 219
    sget-object v2, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 221
    :cond_0
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 225
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getMCCMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNetworkOK()Z
    .locals 5

    .prologue
    .line 174
    const-string v3, "DFPI.DeviceInfoHelper"

    const-string v4, "DeviceInfoHelper.isNetworkOK()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, connected:Z
    iget-object v3, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 178
    .local v1, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 180
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 184
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_0
    return v0
.end method


# virtual methods
.method public collectDeviceInfo()V
    .locals 20

    .prologue
    .line 41
    const-string v17, "DFPI.DeviceInfoHelper"

    const-string v18, "DeviceInfoHelper.collectDeviceInfo()"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 44
    .local v1, mSPEditor:Landroid/content/SharedPreferences$Editor;
    const-string v17, "DFPI.DeviceInfoHelper"

    const-string v18, "get previous data"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "DeviceMID"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 46
    .local v10, strMID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "DeviceCID"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, strCID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "DeviceID"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, strDeviceID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "DeviceMCCMNC"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 49
    .local v9, strMCCMNC:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "DeviceLog"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 50
    .local v8, strLog:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "DeviceLat"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, strLat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "DeviceCityName"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, strCityName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "DeviceCountryCode"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, strCountryCode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "DeviceSKU"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 54
    .local v12, strSKU:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "DeviceRomVer"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, strRomVer:Ljava/lang/String;
    const/4 v15, 0x0

    .line 56
    .local v15, tmpstrLat:Ljava/lang/String;
    const/16 v16, 0x0

    .line 57
    .local v16, tmpstrLong:Ljava/lang/String;
    const/4 v13, 0x0

    .line 58
    .local v13, tmpstrCityName:Ljava/lang/String;
    const/4 v14, 0x0

    .line 60
    .local v14, tmpstrCountryCode:Ljava/lang/String;
    const-string v17, "DFPI.DeviceInfoHelper"

    const-string v18, "compare and set the new data"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-nez v11, :cond_0

    .line 63
    const-string v17, "ro.build.description"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 64
    const-string v17, "DeviceRomVer"

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    :cond_0
    if-nez v12, :cond_1

    .line 69
    const-string v17, "ro.aa.mainsku"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 70
    const-string v17, "DeviceSKU"

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    :cond_1
    if-nez v6, :cond_2

    .line 74
    const-string v17, "ro.serialno"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    const-string v17, "DeviceID"

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    :cond_2
    if-nez v10, :cond_3

    .line 81
    const-string v17, "ro.aa.modelid"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 83
    const-string v17, "DeviceMID"

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    :cond_3
    if-nez v3, :cond_4

    .line 88
    const-string v17, "ro.aa.maincid"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    const-string v17, "DeviceCID"

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    :cond_4
    if-nez v9, :cond_5

    .line 93
    invoke-direct/range {p0 .. p0}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getMCCMNC()Ljava/lang/String;

    move-result-object v9

    .line 94
    const-string v17, "DeviceMCCMNC"

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    :cond_5
    const-string v17, "DFPI.DeviceInfoHelper"

    const-string v18, "enable the location source from network"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->enableNetworkLocationSource()V

    .line 100
    invoke-direct/range {p0 .. p0}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getLatitude()Ljava/lang/String;

    move-result-object v15

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getLongitude()Ljava/lang/String;

    move-result-object v16

    .line 102
    if-eqz v15, :cond_6

    .line 104
    move-object v7, v15

    .line 105
    const-string v17, "DeviceLat"

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    :cond_6
    if-eqz v16, :cond_7

    .line 109
    move-object/from16 v8, v16

    .line 110
    const-string v17, "DeviceLog"

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    :cond_7
    const-string v17, "DFPI.DeviceInfoHelper"

    const-string v18, "check network status"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->isNetworkOK()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 117
    const-string v17, "DFPI.DeviceInfoHelper"

    const-string v18, "Network is ready, get Location inforation"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct/range {p0 .. p0}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getAddress()Landroid/location/Address;

    move-result-object v2

    .line 119
    .local v2, myAddress:Landroid/location/Address;
    if-eqz v2, :cond_9

    .line 121
    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v13

    .line 122
    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v14

    .line 123
    if-eqz v13, :cond_8

    .line 125
    move-object v4, v13

    .line 126
    const-string v17, "DeviceCityName"

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    :cond_8
    if-eqz v14, :cond_9

    .line 130
    move-object v5, v14

    .line 131
    const-string v17, "DeviceCountryCode"

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    .end local v2           #myAddress:Landroid/location/Address;
    :cond_9
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    return-void
.end method

.method public getCID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    const-string v1, "DeviceCID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    const-string v1, "DeviceCityName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    const-string v1, "DeviceCountryCode"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    const-string v1, "DeviceID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    const-string v1, "DeviceLat"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLog()Ljava/lang/String;
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    const-string v1, "DeviceLog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    const-string v1, "DeviceMID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMNC_MCC()Ljava/lang/String;
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    const-string v1, "DeviceMCCMNC"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRomVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    const-string v1, "DeviceRomVer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSKU()Ljava/lang/String;
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->mDeviceInfoSP:Landroid/content/SharedPreferences;

    const-string v1, "DeviceSKU"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
