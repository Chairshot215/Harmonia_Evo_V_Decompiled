.class Lcom/htc/dockmode/weather/WeatherControl$4;
.super Ljava/lang/Object;
.source "WeatherControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/weather/WeatherControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/weather/WeatherControl;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/weather/WeatherControl;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/htc/dockmode/weather/WeatherControl$4;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl$4;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    #calls: Lcom/htc/dockmode/weather/WeatherControl;->goToWeather()V
    invoke-static {v0}, Lcom/htc/dockmode/weather/WeatherControl;->access$600(Lcom/htc/dockmode/weather/WeatherControl;)V

    .line 295
    return-void
.end method
