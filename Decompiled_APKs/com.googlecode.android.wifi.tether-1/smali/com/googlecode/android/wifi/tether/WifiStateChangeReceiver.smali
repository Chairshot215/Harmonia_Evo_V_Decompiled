.class public Lcom/googlecode/android/wifi/tether/WifiStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateChangeReceiver.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WifiStateChangeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 26
    const-string v0, "WifiStateChangeReceiver"

    const-string v1, "Phone takes control back over the wifi-interface!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/googlecode/android/wifi/tether/TetherApplication;

    const-string v1, "What the hell!\nYour phone takes back control over the wifi-interface.\nImmediate tethering-shutdown NOW!"

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->stop()V

    .line 30
    :cond_0
    return-void
.end method
