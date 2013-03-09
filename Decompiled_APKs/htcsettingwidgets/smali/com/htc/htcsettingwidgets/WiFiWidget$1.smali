.class Lcom/htc/htcsettingwidgets/WiFiWidget$1;
.super Landroid/content/BroadcastReceiver;
.source "WiFiWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/WiFiWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/WiFiWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcsettingwidgets/WiFiWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget$1;->this$0:Lcom/htc/htcsettingwidgets/WiFiWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, strAction:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WiFiWidget$1;->this$0:Lcom/htc/htcsettingwidgets/WiFiWidget;

    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #calls: Lcom/htc/htcsettingwidgets/WiFiWidget;->handleWifiStateChanged(Landroid/content/Intent;I)V
    invoke-static {v3, p2, v4}, Lcom/htc/htcsettingwidgets/WiFiWidget;->access$400(Lcom/htc/htcsettingwidgets/WiFiWidget;Landroid/content/Intent;I)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 208
    const-string v3, "wifi_state"

    const/16 v4, 0xe

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 209
    .local v1, iHotspotState:I
    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WiFiWidget$1;->this$0:Lcom/htc/htcsettingwidgets/WiFiWidget;

    #getter for: Lcom/htc/htcsettingwidgets/WiFiWidget;->mToggleable:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/htcsettingwidgets/WiFiWidget;->access$500(Lcom/htc/htcsettingwidgets/WiFiWidget;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WiFiWidget$1;->this$0:Lcom/htc/htcsettingwidgets/WiFiWidget;

    #getter for: Lcom/htc/htcsettingwidgets/WiFiWidget;->mToggleable:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/htcsettingwidgets/WiFiWidget;->access$500(Lcom/htc/htcsettingwidgets/WiFiWidget;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    :cond_2
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WiFiWidget$1;->this$0:Lcom/htc/htcsettingwidgets/WiFiWidget;

    #calls: Lcom/htc/htcsettingwidgets/WiFiWidget;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/htcsettingwidgets/WiFiWidget;->access$600(Lcom/htc/htcsettingwidgets/WiFiWidget;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/htcsettingwidgets/SettingUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    goto :goto_0

    .line 223
    .end local v1           #iHotspotState:I
    :cond_3
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WiFiWidget$1;->this$0:Lcom/htc/htcsettingwidgets/WiFiWidget;

    #getter for: Lcom/htc/htcsettingwidgets/WiFiWidget;->mToggleable:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/htcsettingwidgets/WiFiWidget;->access$500(Lcom/htc/htcsettingwidgets/WiFiWidget;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WiFiWidget$1;->this$0:Lcom/htc/htcsettingwidgets/WiFiWidget;

    #getter for: Lcom/htc/htcsettingwidgets/WiFiWidget;->mToggleable:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/htcsettingwidgets/WiFiWidget;->access$500(Lcom/htc/htcsettingwidgets/WiFiWidget;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    :cond_4
    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 228
    .local v0, bAirModeOn:Z
    if-eqz v0, :cond_0

    .line 231
    if-eqz v0, :cond_0

    goto :goto_0
.end method
