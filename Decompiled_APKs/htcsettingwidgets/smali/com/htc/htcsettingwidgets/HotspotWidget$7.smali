.class Lcom/htc/htcsettingwidgets/HotspotWidget$7;
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
    .line 494
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$7;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 497
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$7;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #calls: Lcom/htc/htcsettingwidgets/HotspotWidget;->checkMHSStatus()V
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$1000(Lcom/htc/htcsettingwidgets/HotspotWidget;)V

    .line 502
    :cond_0
    return-void
.end method
