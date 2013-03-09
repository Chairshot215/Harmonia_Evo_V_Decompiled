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

    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    return-void
.end method

.method public static getEapolFlags(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    return v0
.end method

.method public static getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;
    .locals 3

    new-instance v0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;-><init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$1;)V

    return-object v0
.end method

.method public static getPhase1(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiAsCert(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiCert(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiPsk(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiPskHex(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiUserCert(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    return-object v0
.end method

.method public static getWapiUserKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    return-object v0
.end method

.method public static setEapolFlags(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    return-void
.end method

.method public static setPhase1(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    return-void
.end method

.method public static setWapiAsCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    return-void
.end method

.method public static setWapiCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    return-void
.end method

.method public static setWapiPsk(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    return-void
.end method

.method public static setWapiPskHex(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    return-void
.end method

.method public static setWapiUserCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    return-void
.end method

.method public static setWapiUserKey(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEapolFlags()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    return v0
.end method

.method public getHtcWrapWifiApProfile()Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;
    .locals 3

    new-instance v0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    invoke-super {p0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;-><init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$1;)V

    return-object v0
.end method

.method public getPhase1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiAsCert()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiCert()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiPsk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiPskHex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiUserCert()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiUserKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    return-object v0
.end method

.method public setEapolFlags(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    return-void
.end method

.method public setPhase1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    return-void
.end method

.method public setWapiAsCert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    return-void
.end method

.method public setWapiCert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    return-void
.end method

.method public setWapiPsk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    return-void
.end method

.method public setWapiPskHex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    return-void
.end method

.method public setWapiUserCert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    return-void
.end method

.method public setWapiUserKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    return-void
.end method
