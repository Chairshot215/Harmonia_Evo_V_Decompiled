.class public final Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcWifiHotspotPreference.java"


# static fields
.field private static final DEFAULT_VALUE:Z = false

.field public static final KEY:Ljava/lang/String; = "WIFI_HOTSPOT"

.field public static final TAG:Ljava/lang/String; = "HtcWifiHotspotPreference"


# instance fields
.field private mState:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->initialize(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->initialize(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->initialize(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v1, 0xad

    .line 68
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    const-string v0, "WIFI_HOTSPOT"

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->setKey(Ljava/lang/String;)V

    .line 71
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 73
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_1

    .line 74
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->setTitle(I)V

    .line 75
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->setSummary(I)V

    .line 82
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->setPersistent(Z)V

    .line 84
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDockWifiAutoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mState:Z

    .line 86
    const-string v0, "HtcWifiHotspotPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi dockMode state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_1
    iget-boolean v0, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mState:Z

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->setChecked(Z)V

    .line 98
    return-void

    .line 77
    :cond_1
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->setTitle(I)V

    .line 78
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->setSummary(I)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDockWifiApAutoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mState:Z

    .line 89
    const-string v0, "HtcWifiHotspotPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hotspot dockMode state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 103
    iget-boolean v0, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mState:Z

    .line 104
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v1, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mState:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setDockWifiAutoEnabled(Z)Z

    .line 106
    const-string v0, "HtcWifiHotspotPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi dockMode state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_1
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v1, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mState:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setDockWifiApAutoEnabled(Z)Z

    .line 109
    const-string v0, "HtcWifiHotspotPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hotspot dockMode state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;->mState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
