.class final Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;
.super Ljava/lang/Thread;
.source "OptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/OptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BuildCityList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/OptionActivity;


# direct methods
.method private constructor <init>(Lcom/htc/widget3d/weather/OptionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget3d/weather/OptionActivity;Lcom/htc/widget3d/weather/OptionActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;-><init>(Lcom/htc/widget3d/weather/OptionActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    #calls: Lcom/htc/widget3d/weather/OptionActivity;->prepareWeatherProvider()Z
    invoke-static {v0}, Lcom/htc/widget3d/weather/OptionActivity;->access$700(Lcom/htc/widget3d/weather/OptionActivity;)Z

    .line 464
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    #getter for: Lcom/htc/widget3d/weather/OptionActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget3d/weather/OptionActivity;->access$800(Lcom/htc/widget3d/weather/OptionActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    #getter for: Lcom/htc/widget3d/weather/OptionActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget3d/weather/OptionActivity;->access$800(Lcom/htc/widget3d/weather/OptionActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 466
    :cond_0
    return-void
.end method
