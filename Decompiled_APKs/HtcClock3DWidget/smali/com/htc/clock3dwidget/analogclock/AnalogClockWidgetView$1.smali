.class Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView$1;
.super Ljava/lang/Object;
.source "AnalogClockWidgetView.java"

# interfaces
.implements Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadPropertyData()Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mLoadConfig:Z
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->access$000(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->loadConfig()V
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->access$100(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;)V

    .line 252
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mLoadConfig:Z
    invoke-static {v0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->access$002(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;Z)Z

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->mClockConfig:Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->access$200(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;)Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    move-result-object v0

    return-object v0
.end method

.method public savePropertyData(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->saveClockConfig(Landroid/content/Intent;)V
    invoke-static {v0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;Landroid/content/Intent;)V

    .line 259
    return-void
.end method
