.class Lcom/htc/Weather/widget/BottomUpdateInfo$2;
.super Ljava/lang/Object;
.source "BottomUpdateInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/widget/BottomUpdateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/widget/BottomUpdateInfo;


# direct methods
.method constructor <init>(Lcom/htc/Weather/widget/BottomUpdateInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$2;->this$0:Lcom/htc/Weather/widget/BottomUpdateInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 247
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo$2;->this$0:Lcom/htc/Weather/widget/BottomUpdateInfo;

    #getter for: Lcom/htc/Weather/widget/BottomUpdateInfo;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->access$300(Lcom/htc/Weather/widget/BottomUpdateInfo;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    sget v2, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/RefreshUtil;->launchBrowser(Landroid/content/Context;Lcom/htc/Weather/data/CityInfo;)V

    .line 250
    :cond_0
    return-void
.end method
