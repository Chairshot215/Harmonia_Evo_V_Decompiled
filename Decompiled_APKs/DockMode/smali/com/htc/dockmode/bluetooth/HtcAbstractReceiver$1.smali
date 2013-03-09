.class Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcAbstractReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver$1;->this$0:Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver$1;->this$0:Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 15
    return-void
.end method
