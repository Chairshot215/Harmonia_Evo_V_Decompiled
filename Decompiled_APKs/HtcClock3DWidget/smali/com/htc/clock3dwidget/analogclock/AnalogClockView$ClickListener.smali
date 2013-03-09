.class Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "AnalogClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;


# direct methods
.method private constructor <init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;-><init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->access$100(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->access$100(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 628
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 623
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$ClickListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
