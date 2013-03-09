.class Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "WeatherClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherClickListener"
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
.field final synthetic this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;


# direct methods
.method private constructor <init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClock;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClock;Lcom/htc/clock3dwidget/weatherclock/WeatherClock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;-><init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClock;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 147
    const-string v0, "[WeatherClock]"

    const-string v1, "weather is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mWeatherClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClock;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mWeatherClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClock;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 151
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
