.class Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$7;
.super Ljava/lang/Thread;
.source "WeatherClockWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->enableLocationProvider()V
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
    .line 1478
    iput-object p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$7;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$7;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mApplication:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1483
    return-void
.end method
