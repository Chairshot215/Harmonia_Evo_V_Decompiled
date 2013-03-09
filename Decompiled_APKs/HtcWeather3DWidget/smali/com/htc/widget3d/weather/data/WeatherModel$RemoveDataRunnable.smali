.class Lcom/htc/widget3d/weather/data/WeatherModel$RemoveDataRunnable;
.super Ljava/lang/Object;
.source "WeatherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/data/WeatherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveDataRunnable"
.end annotation


# instance fields
.field private mCountry:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/widget3d/weather/data/WeatherModel;


# direct methods
.method public constructor <init>(Lcom/htc/widget3d/weather/data/WeatherModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "state"
    .parameter "country"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/WeatherModel$RemoveDataRunnable;->this$0:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p2, p0, Lcom/htc/widget3d/weather/data/WeatherModel$RemoveDataRunnable;->mName:Ljava/lang/String;

    .line 374
    iput-object p3, p0, Lcom/htc/widget3d/weather/data/WeatherModel$RemoveDataRunnable;->mState:Ljava/lang/String;

    .line 375
    iput-object p4, p0, Lcom/htc/widget3d/weather/data/WeatherModel$RemoveDataRunnable;->mCountry:Ljava/lang/String;

    .line 376
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel$RemoveDataRunnable;->this$0:Lcom/htc/widget3d/weather/data/WeatherModel;

    #getter for: Lcom/htc/widget3d/weather/data/WeatherModel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/widget3d/weather/data/WeatherModel;->access$000(Lcom/htc/widget3d/weather/data/WeatherModel;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.elroy.Weather"

    iget-object v2, p0, Lcom/htc/widget3d/weather/data/WeatherModel$RemoveDataRunnable;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/widget3d/weather/data/WeatherModel$RemoveDataRunnable;->mState:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/widget3d/weather/data/WeatherModel$RemoveDataRunnable;->mCountry:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/util/weather/WeatherUtility;->deleteLocation(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v0, "WeatherModel"

    const-string v1, "Complete remove data from DB"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method
