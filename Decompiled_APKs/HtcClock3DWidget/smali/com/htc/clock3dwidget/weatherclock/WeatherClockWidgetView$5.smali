.class Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$5;
.super Ljava/lang/Object;
.source "WeatherClockWidgetView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 1352
    iput-object p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$5;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 1355
    const-string v0, "weather clock onLongClick~~~"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->d(Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$5;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLongClick:Z
    invoke-static {v0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1102(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Z)Z

    .line 1357
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$5;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->uiView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$2800(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$5;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->uiView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$2800(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 1360
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
