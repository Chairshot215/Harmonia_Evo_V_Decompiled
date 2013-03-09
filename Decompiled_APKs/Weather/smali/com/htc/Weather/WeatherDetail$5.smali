.class Lcom/htc/Weather/WeatherDetail$5;
.super Ljava/lang/Object;
.source "WeatherDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/WeatherDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/WeatherDetail;


# direct methods
.method constructor <init>(Lcom/htc/Weather/WeatherDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/htc/Weather/WeatherDetail$5;->this$0:Lcom/htc/Weather/WeatherDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 372
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail$5;->this$0:Lcom/htc/Weather/WeatherDetail;

    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    sget v2, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/RefreshUtil;->launchBrowser(Landroid/content/Context;Lcom/htc/Weather/data/CityInfo;)V

    .line 375
    :cond_0
    return-void
.end method
