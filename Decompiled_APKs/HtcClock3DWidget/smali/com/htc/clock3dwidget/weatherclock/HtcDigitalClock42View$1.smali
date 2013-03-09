.class Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcDigitalClock42View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$1;->this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$1;->this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mUIHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->access$200(Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 96
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$1;->this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mUIHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->access$200(Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 98
    return-void
.end method
