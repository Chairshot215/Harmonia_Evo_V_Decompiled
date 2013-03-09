.class public Lcom/htc/dlnamediaserver/FrameworkService;
.super Ljava/lang/Object;
.source "FrameworkService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setWifiPowerSavingMode(Landroid/content/Context;I)V
    .locals 1
    .parameter "Cxt"
    .parameter "enable"

    .prologue
    .line 9
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiPowerSavingMode(I)Z

    .line 10
    return-void
.end method
