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

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static clearMobileProxySettings(Landroid/webkit/WebSettings;)V
    .locals 0
    .parameter "ws"

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->clearMobileProxySettings()V

    .line 88
    return-void
.end method

.method public static convertTextSize(Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;)Landroid/webkit/WebSettings$TextSize;
    .locals 1
    .parameter "tz"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->value:I

    sparse-switch v0, :sswitch_data_0

    .line 46
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    :goto_0
    return-object v0

    .line 36
    :sswitch_0
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    .line 38
    :sswitch_1
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    .line 40
    :sswitch_2
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    .line 42
    :sswitch_3
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    .line 44
    :sswitch_4
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    .line 34
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
    .parameter "ws"

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnableQuickSelection(Landroid/webkit/WebSettings;)Z
    .locals 1
    .parameter "ws"

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->isEnableQuickSelection()Z

    move-result v0

    return v0
.end method

.method public static setBlockIFrameProgressUpdates(Landroid/webkit/WebSettings;Z)V
    .locals 0
    .parameter "ws"
    .parameter "flag"

    .prologue
    .line 97
    return-void
.end method

.method public static setEnableQuickSelection(Landroid/webkit/WebSettings;Z)V
    .locals 0
    .parameter "ws"
    .parameter "flag"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setEnableQuickSelection(Z)V

    .line 56
    return-void
.end method

.method public static setIsEnableGifAnimation(Landroid/webkit/WebSettings;Z)V
    .locals 0
    .parameter "ws"
    .parameter "flag"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setIsEnableGifAnimation(Z)V

    .line 68
    return-void
.end method

.method public static setMobileProxySettings(Landroid/webkit/WebSettings;Ljava/lang/String;I)V
    .locals 0
    .parameter "ws"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebSettings;->setMobileProxySettings(Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method public static setPostponePlugin(Landroid/webkit/WebSettings;Z)V
    .locals 0
    .parameter "ws"
    .parameter "postponePlugin"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setPostponePlugin(Z)V

    .line 106
    return-void
.end method

.method public static setProxyEnabled(Landroid/webkit/WebSettings;Z)V
    .locals 0
    .parameter "ws"
    .parameter "flag"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setProxyEnabled(Z)V

    .line 72
    return-void
.end method

.method public static setUAProfile(Landroid/webkit/WebSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "ws"
    .parameter "uaProfile"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setUAProfile(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static setUAStringID(Landroid/webkit/WebSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "ws"
    .parameter "uaStringID"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setUAStringID(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static setUAStringModel(Landroid/webkit/WebSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "ws"
    .parameter "model"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setUAStringModel(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static setWifiProxyEnabled(Landroid/webkit/WebSettings;Z)V
    .locals 0
    .parameter "ws"
    .parameter "flag"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setWifiProxyEnabled(Z)V

    .line 76
    return-void
.end method

.method public static setWifiProxySettings(Landroid/webkit/WebSettings;Ljava/lang/String;I)V
    .locals 0
    .parameter "ws"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebSettings;->setWifiProxySettings(Ljava/lang/String;I)V

    .line 80
    return-void
.end method
