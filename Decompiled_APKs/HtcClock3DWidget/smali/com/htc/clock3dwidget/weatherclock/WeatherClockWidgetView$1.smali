.class Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$1;
.super Ljava/lang/Object;
.source "WeatherClockWidgetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const v3, 0x9012

    .line 224
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->hasNonUiMessage(I)Z
    invoke-static {v0, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$000(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v0, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeNonUiMessages(I)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$1;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendNonUiMessageDelayed(IJ)V

    .line 228
    return-void
.end method
