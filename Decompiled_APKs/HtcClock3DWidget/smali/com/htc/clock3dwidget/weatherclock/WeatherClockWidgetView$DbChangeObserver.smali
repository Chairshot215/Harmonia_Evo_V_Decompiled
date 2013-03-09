.class Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;
.super Landroid/database/ContentObserver;
.source "WeatherClockWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DbChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;


# direct methods
.method public constructor <init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "hander"

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    .line 1425
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1426
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$DbChangeObserver;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->onSettingChanged()V

    .line 1431
    return-void
.end method
