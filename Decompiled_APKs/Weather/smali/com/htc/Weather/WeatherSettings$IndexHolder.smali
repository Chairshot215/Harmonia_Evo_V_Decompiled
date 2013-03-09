.class Lcom/htc/Weather/WeatherSettings$IndexHolder;
.super Ljava/lang/Object;
.source "WeatherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/WeatherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndexHolder"
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/htc/Weather/WeatherSettings;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/WeatherSettings;I)V
    .locals 1
    .parameter
    .parameter "o"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/Weather/WeatherSettings$IndexHolder;->this$0:Lcom/htc/Weather/WeatherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/Weather/WeatherSettings$IndexHolder;->index:I

    .line 60
    iput p2, p0, Lcom/htc/Weather/WeatherSettings$IndexHolder;->index:I

    .line 61
    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/Weather/WeatherSettings$IndexHolder;->index:I

    return v0
.end method

.method public set(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 63
    iput p1, p0, Lcom/htc/Weather/WeatherSettings$IndexHolder;->index:I

    .line 64
    return-void
.end method
