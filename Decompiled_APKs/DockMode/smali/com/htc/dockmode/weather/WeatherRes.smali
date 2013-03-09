.class public Lcom/htc/dockmode/weather/WeatherRes;
.super Ljava/lang/Object;
.source "WeatherRes.java"


# instance fields
.field public degree:Ljava/lang/String;

.field public high_Indicator:Ljava/lang/String;

.field public high_low:I

.field public information:I

.field public location:I

.field public low_Indicator:Ljava/lang/String;

.field public temperature:I

.field public view:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const v0, 0x7f0a001c

    iput v0, p0, Lcom/htc/dockmode/weather/WeatherRes;->information:I

    .line 21
    const v0, 0x7f0a001a

    iput v0, p0, Lcom/htc/dockmode/weather/WeatherRes;->location:I

    .line 23
    const v0, 0x7f0a0019

    iput v0, p0, Lcom/htc/dockmode/weather/WeatherRes;->temperature:I

    .line 25
    const v0, 0x7f0a0018

    iput v0, p0, Lcom/htc/dockmode/weather/WeatherRes;->view:I

    .line 27
    const v0, 0x7f0a001b

    iput v0, p0, Lcom/htc/dockmode/weather/WeatherRes;->high_low:I

    .line 29
    const v0, 0x7f08000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherRes;->degree:Ljava/lang/String;

    .line 31
    const v0, 0x7f08000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherRes;->high_Indicator:Ljava/lang/String;

    .line 32
    const v0, 0x7f08000f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherRes;->low_Indicator:Ljava/lang/String;

    .line 34
    return-void
.end method
