.class public Lcom/htc/clock3dwidget/ClockDual;
.super Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;
.source "ClockDual.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saved"

    .prologue
    .line 12
    sget-object v0, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_DUAL_R:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/ClockDual;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/clock3dwidget/ClockUtils;->getClockRes(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Landroid/content/Context;)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/ClockDual;->mClockResCurrent:Lcom/htc/clock3dwidget/ClockRes;

    .line 14
    sget-object v0, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_DUAL_L:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/ClockDual;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/clock3dwidget/ClockUtils;->getClockRes(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Landroid/content/Context;)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/ClockDual;->mClockResHome:Lcom/htc/clock3dwidget/ClockRes;

    .line 15
    invoke-super {p0, p1}, Lcom/htc/clock3dwidget/analogclock/DualClockWidgetView;->onCreate(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method
