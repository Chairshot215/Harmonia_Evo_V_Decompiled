.class public Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;
.super Landroid/net/wifi/WifiConfiguration;
.source "HtcWrapWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$1;,
        Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$EapType;,
        Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$KeyMgmt;,
        Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 10
    return-void
.end method

.method public static getEapolFlags(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 106
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    return v0
.end method

.method public static getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;
    .locals 3
    .parameter "wifiConfig"

    .prologue
    .line 102
    new-instance v0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;-><init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$1;)V

    return-object v0
.end method

.method public static getPhase1(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiAsCert(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 128
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiCert(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiPsk(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 150
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiPskHex(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 161
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiUserCert(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 172
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiUserKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 183
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    return-object v0
.end method

.method public static setEapolFlags(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "eapol_flags"

    .prologue
    .line 110
    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    .line 111
    return-void
.end method

.method public static setPhase1(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "phase1"

    .prologue
    .line 121
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public static setWapiAsCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "wapi_as_cert"

    .prologue
    .line 132
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public static setWapiCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "wapi_cert"

    .prologue
    .line 143
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public static setWapiPsk(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "wapi_psk"

    .prologue
    .line 154
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public static setWapiPskHex(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "wapi_psk_hex"

    .prologue
    .line 165
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public static setWapiUserCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "wapi_user_cert"

    .prologue
    .line 176
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public static setWapiUserKey(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "wifiConfig"
    .parameter "wapi_user_key"

    .prologue
    .line 187
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    .line 188
    return-void
.end method


# virtual methods
.method public getEapolFlags()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    return v0
.end method

.method public getHtcWrapWifiApProfile()Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    invoke-super {p0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;-><init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$1;)V

    return-object v0
.end method

.method public getPhase1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiAsCert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiCert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiPsk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiPskHex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiUserCert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiUserKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    return-object v0
.end method

.method public setEapolFlags(I)V
    .locals 0
    .parameter "eapol_flags"

    .prologue
    .line 21
    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    .line 22
    return-void
.end method

.method public setPhase1(Ljava/lang/String;)V
    .locals 0
    .parameter "phase1"

    .prologue
    .line 32
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setWapiAsCert(Ljava/lang/String;)V
    .locals 0
    .parameter "wapi_as_cert"

    .prologue
    .line 43
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setWapiCert(Ljava/lang/String;)V
    .locals 0
    .parameter "wapi_cert"

    .prologue
    .line 54
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setWapiPsk(Ljava/lang/String;)V
    .locals 0
    .parameter "wapi_psk"

    .prologue
    .line 65
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setWapiPskHex(Ljava/lang/String;)V
    .locals 0
    .parameter "wapi_psk_hex"

    .prologue
    .line 76
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setWapiUserCert(Ljava/lang/String;)V
    .locals 0
    .parameter "wapi_user_cert"

    .prologue
    .line 87
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setWapiUserKey(Ljava/lang/String;)V
    .locals 0
    .parameter "wapi_user_key"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    .line 99
    return-void
.end method
