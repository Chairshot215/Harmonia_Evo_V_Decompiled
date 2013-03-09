.class Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$1;
.super Ljava/lang/Object;
.source "AnalogClockWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 207
    iput-object p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    const v1, 0x9012

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendNonUiMessageDelayed(IJ)V

    .line 210
    return-void
.end method
