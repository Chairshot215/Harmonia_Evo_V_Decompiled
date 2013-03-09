.class public Lcom/htc/wrap/android/webkit/HtcWrapWebSettings;
.super Ljava/lang/Object;
.source "HtcWrapWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearMobileProxySettings(Landroid/webkit/WebSettings;)V
    .locals 0

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->clearMobileProxySettings()V

    return-void
.end method

.method public static convertTextSize(Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;)Landroid/webkit/WebSettings$TextSize;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->value:I

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    :sswitch_2
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    :sswitch_3
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    :sswitch_4
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x50 -> :sswitch_0
        0x64 -> :sswitch_1
        0x78 -> :sswitch_2
        0x8c -> :sswitch_3
        0xa0 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getBlockIFrameProgressUpdates(Landroid/webkit/WebSettings;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isEnableQuickSelection(Landroid/webkit/WebSettings;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->isEnableQuickSelection()Z

    move-result v0

    return v0
.end method

.method public static setBlockIFrameProgressUpdates(Landroid/webkit/WebSettings;Z)V
    .locals 0

    return-void
.end method

.method public static setEnableQuickSelection(Landroid/webkit/WebSettings;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setEnableQuickSelection(Z)V

    return-void
.end method

.method public static setIsEnableGifAnimation(Landroid/webkit/WebSettings;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setIsEnableGifAnimation(Z)V

    return-void
.end method

.method public static setMobileProxySettings(Landroid/webkit/WebSettings;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebSettings;->setMobileProxySettings(Ljava/lang/String;I)V

    return-void
.end method

.method public static setPostponePlugin(Landroid/webkit/WebSettings;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setPostponePlugin(Z)V

    return-void
.end method

.method public static setProxyEnabled(Landroid/webkit/WebSettings;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setProxyEnabled(Z)V

    return-void
.end method

.method public static setUAProfile(Landroid/webkit/WebSettings;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setUAProfile(Ljava/lang/String;)V

    return-void
.end method

.method public static setUAStringID(Landroid/webkit/WebSettings;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setUAStringID(Ljava/lang/String;)V

    return-void
.end method

.method public static setUAStringModel(Landroid/webkit/WebSettings;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setUAStringModel(Ljava/lang/String;)V

    return-void
.end method

.method public static setWifiProxyEnabled(Landroid/webkit/WebSettings;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setWifiProxyEnabled(Z)V

    return-void
.end method

.method public static setWifiProxySettings(Landroid/webkit/WebSettings;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebSettings;->setWifiProxySettings(Ljava/lang/String;I)V

    return-void
.end method
