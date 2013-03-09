.class Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$MyTimeListener;
.super Ljava/lang/Object;
.source "AnalogClockWidget.java"

# interfaces
.implements Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;


# direct methods
.method private constructor <init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$MyTimeListener;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$MyTimeListener;-><init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)V

    return-void
.end method


# virtual methods
.method public onFormatChanged()V
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$MyTimeListener;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    const v1, 0x9205

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendNonUiMessageDelayed(IJ)V

    .line 275
    return-void
.end method

.method public onMinute()V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$MyTimeListener;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    const v1, 0x9003

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendNonUiMessageDelayed(IJ)V

    .line 269
    return-void
.end method

.method public onSecond()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public onTimeChanged()V
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$MyTimeListener;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    const v1, 0x9003

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendNonUiMessageDelayed(IJ)V

    .line 279
    return-void
.end method

.method public onTimeZoneChanged()V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$MyTimeListener;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    const v1, 0x8005

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendUiMessageDelayed(IJ)V

    .line 283
    return-void
.end method
