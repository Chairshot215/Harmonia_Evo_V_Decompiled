.class public Lcom/htc/clock3dwidget/ClockSpinCycle;
.super Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;
.source "ClockSpinCycle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "saved"

    .prologue
    .line 11
    sget-object v0, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_SPIN_CYCLE:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    iput-object v0, p0, Lcom/htc/clock3dwidget/ClockSpinCycle;->mClockType:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    .line 12
    invoke-super {p0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->onCreate(Landroid/os/Bundle;)V

    .line 13
    return-void
.end method
