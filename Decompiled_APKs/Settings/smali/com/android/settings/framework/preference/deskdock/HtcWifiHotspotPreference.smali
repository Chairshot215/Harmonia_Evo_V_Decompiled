.class public final Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;
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
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->initialize(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->initialize(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->initialize(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    const-string v0, "WIFI_HOTSPOT"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->setKey(Ljava/lang/String;)V

    .line 75
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 76
    const v0, 0x7f0c00e0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->setTitle(I)V

    .line 77
    const v0, 0x7f0c00e1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->setSummary(I)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->setPersistent(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getDockWifiApAutoEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->mState:Z

    .line 83
    const-string v0, "HtcWifiHotspotPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hotspot dockMode state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->mState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->mState:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->setChecked(Z)V

    .line 93
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->mState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->mState:Z

    .line 99
    iget-object v0, p0, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v1, p0, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->mState:Z

    invoke-static {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setDockWifiApAutoEnabled(Landroid/net/wifi/WifiManager;Z)Z

    .line 100
    const-string v0, "HtcWifiHotspotPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hotspot dockMode state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;->mState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
