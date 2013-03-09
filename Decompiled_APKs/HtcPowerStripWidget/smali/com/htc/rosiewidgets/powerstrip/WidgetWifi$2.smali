.class Lcom/htc/rosiewidgets/powerstrip/WidgetWifi$2;
.super Landroid/content/BroadcastReceiver;
.source "WidgetWifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x4

    .line 210
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    #getter for: Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->access$000(Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "previous_wifi_state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->handleWifiStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->access$100(Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;II)V

    goto :goto_0
.end method
