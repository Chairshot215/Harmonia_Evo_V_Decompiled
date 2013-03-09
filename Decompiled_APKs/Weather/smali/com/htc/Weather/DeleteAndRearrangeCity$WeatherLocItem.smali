.class Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
.super Ljava/lang/Object;
.source "DeleteAndRearrangeCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/DeleteAndRearrangeCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeatherLocItem"
.end annotation


# instance fields
.field isDeletChecked:Z

.field loc:Lcom/htc/util/weather/WeatherLocation;

.field final synthetic this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;


# direct methods
.method constructor <init>(Lcom/htc/Weather/DeleteAndRearrangeCity;)V
    .locals 1
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->loc:Lcom/htc/util/weather/WeatherLocation;

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->isDeletChecked:Z

    return-void
.end method
