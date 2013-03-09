.class Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;
.super Ljava/lang/Object;
.source "AnalogClockWidget.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 394
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 425
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 396
    :sswitch_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUseAnimation:Z

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->startAnimation()V

    goto :goto_0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->setPause(Z)V

    goto :goto_0

    .line 405
    :sswitch_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->playWiggle()V

    goto :goto_0

    .line 410
    :sswitch_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->prepareAnimation()V

    goto :goto_0

    .line 414
    :sswitch_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->updateCityName()V

    goto :goto_0

    .line 417
    :sswitch_4
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->updateTimeZone()V

    .line 418
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->updateCityName()V

    .line 419
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->updateTime()V

    goto :goto_0

    .line 422
    :sswitch_5
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$3;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->invalidate(Z)V

    goto :goto_0

    .line 394
    :sswitch_data_0
    .sparse-switch
        0x8001 -> :sswitch_0
        0x8004 -> :sswitch_3
        0x8005 -> :sswitch_4
        0x8011 -> :sswitch_5
        0x8019 -> :sswitch_2
        0x8022 -> :sswitch_1
    .end sparse-switch
.end method
