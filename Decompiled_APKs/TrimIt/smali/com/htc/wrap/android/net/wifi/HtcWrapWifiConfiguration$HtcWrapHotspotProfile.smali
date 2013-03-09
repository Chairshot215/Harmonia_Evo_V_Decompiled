.class public Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;
.super Ljava/lang/Object;
.source "HtcWrapWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcWrapHotspotProfile"
.end annotation


# instance fields
.field hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;)V
    .locals 2
    .parameter "hotspotProfile"

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    .line 194
    if-nez p1, :cond_0

    .line 195
    const-string v0, "HtcWrapHotspotProfile"

    const-string v1, "hotspotProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;-><init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;)V

    return-void
.end method


# virtual methods
.method public getBlocklist()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 299
    const/4 v0, -0x1

    .line 302
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    goto :goto_0
.end method

.method public getConnectionArray()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 286
    const/4 v0, -0x1

    .line 289
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    goto :goto_0
.end method

.method public getDhcpEnable()I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 312
    const/4 v0, -0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    goto :goto_0
.end method

.method public getDhcpSubnetMask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEnableMacFilter()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 242
    const/4 v0, -0x1

    .line 245
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    goto :goto_0
.end method

.method public getHiddenSSID()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x0

    .line 376
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    goto :goto_0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMaxConns()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 273
    const/4 v0, -0x1

    .line 276
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    goto :goto_0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecureType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSleepPolicy()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 360
    const/4 v0, -0x1

    .line 363
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    goto :goto_0
.end method

.method public getStartingIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWhitelist()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setChannel(I)V
    .locals 1
    .parameter "channel"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 307
    return-void
.end method

.method public setConnectionArray(I)V
    .locals 1
    .parameter "connectionArray"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 294
    return-void
.end method

.method public setDhcpEnable(I)V
    .locals 1
    .parameter "dhcpEnable"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 320
    return-void
.end method

.method public setDhcpSubnetMask(Ljava/lang/String;)V
    .locals 1
    .parameter "dhcpSubnetMask"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setEnableMacFilter(I)V
    .locals 1
    .parameter "enableMacFilter"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    .line 250
    return-void
.end method

.method public setHiddenSSID(Z)V
    .locals 1
    .parameter "hiddenSSID"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-boolean p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    .line 381
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "ipAddress"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setMaxConns(I)V
    .locals 1
    .parameter "maxConns"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 281
    return-void
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 1
    .parameter "SSID"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setSecureType(Ljava/lang/String;)V
    .locals 1
    .parameter "secureType"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setSleepPolicy(I)V
    .locals 1
    .parameter "sleepPolicy"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    .line 368
    return-void
.end method

.method public setStartingIP(Ljava/lang/String;)V
    .locals 1
    .parameter "startingIP"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 356
    return-void
.end method
