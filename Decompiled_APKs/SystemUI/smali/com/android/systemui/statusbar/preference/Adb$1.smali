.class Lcom/android/systemui/statusbar/preference/Adb$1;
.super Landroid/content/BroadcastReceiver;
.source "Adb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Adb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Adb;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Adb;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Adb$1;->this$0:Lcom/android/systemui/statusbar/preference/Adb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Adb$1;->this$0:Lcom/android/systemui/statusbar/preference/Adb;

    #getter for: Lcom/android/systemui/statusbar/preference/Adb;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/Adb;->access$000(Lcom/android/systemui/statusbar/preference/Adb;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Adb$1;->this$0:Lcom/android/systemui/statusbar/preference/Adb;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/preference/Adb;->handleWifiStateChanged(I)V

    return-void
.end method
