.class Lcom/htc/Weather/WeatherModel$RemoveDataThread;
.super Ljava/lang/Thread;
.source "WeatherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/WeatherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveDataThread"
.end annotation


# instance fields
.field private mCountry:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/Weather/WeatherModel;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/WeatherModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "state"
    .parameter "country"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/htc/Weather/WeatherModel$RemoveDataThread;->this$0:Lcom/htc/Weather/WeatherModel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 337
    iput-object p2, p0, Lcom/htc/Weather/WeatherModel$RemoveDataThread;->mName:Ljava/lang/String;

    .line 338
    iput-object p3, p0, Lcom/htc/Weather/WeatherModel$RemoveDataThread;->mState:Ljava/lang/String;

    .line 339
    iput-object p4, p0, Lcom/htc/Weather/WeatherModel$RemoveDataThread;->mCountry:Ljava/lang/String;

    .line 340
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel$RemoveDataThread;->this$0:Lcom/htc/Weather/WeatherModel;

    #getter for: Lcom/htc/Weather/WeatherModel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/Weather/WeatherModel;->access$000(Lcom/htc/Weather/WeatherModel;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.elroy.Weather"

    iget-object v2, p0, Lcom/htc/Weather/WeatherModel$RemoveDataThread;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/Weather/WeatherModel$RemoveDataThread;->mState:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/Weather/WeatherModel$RemoveDataThread;->mCountry:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/util/weather/WeatherUtility;->deleteLocation(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v0, "WeatherModel"

    const-string v1, "Complete remove data from DB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method
