.class Lcom/htc/utils/ulog/NetworkTrafficLogger$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTrafficLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/utils/ulog/NetworkTrafficLogger;->registerLogDemandReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;


# direct methods
.method constructor <init>(Lcom/htc/utils/ulog/NetworkTrafficLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/utils/ulog/NetworkTrafficLogger$1;->this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.htc.htcnetworkmonitor.action.LOG_NETWORK_FULL_SCAN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInstance()Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-result-object v0

    #calls: Lcom/htc/utils/ulog/NetworkTrafficLogger;->logTransmissionAll(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$700(Lcom/htc/utils/ulog/NetworkTrafficLogger;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
