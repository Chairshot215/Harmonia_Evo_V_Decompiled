.class Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;
.super Ljava/lang/Object;
.source "ForecastActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/clockwidget/lpsense/ForecastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherForecast"
.end annotation


# instance fields
.field public condition:Ljava/lang/String;

.field public dayOfWeek:Ljava/lang/String;

.field public high:I

.field public low:I

.field final synthetic this$0:Lfr/clockwidget/lpsense/ForecastActivity;


# direct methods
.method public constructor <init>(Lfr/clockwidget/lpsense/ForecastActivity;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter "dayOfWeek"
    .parameter "condition"
    .parameter "high"
    .parameter "low"

    .prologue
    .line 140
    iput-object p1, p0, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;->this$0:Lfr/clockwidget/lpsense/ForecastActivity;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;->dayOfWeek:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;->condition:Ljava/lang/String;

    .line 138
    iput p4, p0, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;->high:I

    .line 139
    iput p5, p0, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;->low:I

    return-void
.end method
