.class Lcom/htc/widget3d/weather/WeatherWidgetBase$DataRunnable;
.super Ljava/lang/Object;
.source "WeatherWidgetBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/WeatherWidgetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/WeatherWidgetBase;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$DataRunnable;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$DataRunnable;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->createData()V

    .line 625
    return-void
.end method
