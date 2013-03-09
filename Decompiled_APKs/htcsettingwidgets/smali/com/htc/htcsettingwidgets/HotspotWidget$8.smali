.class Lcom/htc/htcsettingwidgets/HotspotWidget$8;
.super Landroid/content/BroadcastReceiver;
.source "HotspotWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/HotspotWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcsettingwidgets/HotspotWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$8;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 508
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 509
    .local v4, strAction:Ljava/lang/String;
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 511
    iget-object v5, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$8;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    const-string v6, "wifi_state"

    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #calls: Lcom/htc/htcsettingwidgets/HotspotWidget;->handleHotspotStateChanged(I)V
    invoke-static {v5, v6}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$1100(Lcom/htc/htcsettingwidgets/HotspotWidget;I)V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 515
    const-string v5, "availableArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 516
    .local v1, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "activeArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 517
    .local v0, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "erroredArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 518
    .local v2, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$8;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    #calls: Lcom/htc/htcsettingwidgets/HotspotWidget;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    invoke-static {v5, v6, v7, v8}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$1200(Lcom/htc/htcsettingwidgets/HotspotWidget;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 520
    .end local v0           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 522
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 523
    .local v3, iWifiState:I
    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    if-nez v3, :cond_0

    goto :goto_0
.end method
