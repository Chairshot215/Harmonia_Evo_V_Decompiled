.class public final enum Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;
.super Ljava/lang/Enum;
.source "WeatherClockWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UiState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

.field public static final enum NONE:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

.field public static final enum PAUSED:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

.field public static final enum RESUME:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

.field public static final enum RESUME_DELAY:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->NONE:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->RESUME:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    const-string v1, "RESUME_DELAY"

    invoke-direct {v0, v1, v4}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->RESUME_DELAY:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v5}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->PAUSED:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    .line 174
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    sget-object v1, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->NONE:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->RESUME:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->RESUME_DELAY:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->PAUSED:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->$VALUES:[Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;
    .locals 1
    .parameter "name"

    .prologue
    .line 174
    const-class v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    return-object v0
.end method

.method public static values()[Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->$VALUES:[Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    invoke-virtual {v0}, [Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    return-object v0
.end method
