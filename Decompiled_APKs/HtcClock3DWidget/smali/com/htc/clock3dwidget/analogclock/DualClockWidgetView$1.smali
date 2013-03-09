.class Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView$1;
.super Ljava/lang/Object;
.source "DualClockWidgetView.java"

# interfaces
.implements Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadPropertyData()Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mLoadConfig:Z
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->access$000(Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->loadConfig()V
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->access$100(Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;)V

    .line 294
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mLoadConfig:Z
    invoke-static {v0, v1}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->access$002(Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;Z)Z

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->mConfigHome:Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->access$200(Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;)Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    move-result-object v0

    return-object v0
.end method

.method public savePropertyData(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->saveDualClockConfig(Landroid/content/Intent;)V
    invoke-static {v0, p1}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->access$300(Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;Landroid/content/Intent;)V

    .line 301
    return-void
.end method
