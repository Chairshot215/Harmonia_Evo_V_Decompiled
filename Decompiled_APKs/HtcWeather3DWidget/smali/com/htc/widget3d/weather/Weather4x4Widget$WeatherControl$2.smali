.class Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;
.super Lcom/htc/fusion/fx/MessageListener;
.source "Weather4x4Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 1097
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh on Click,index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v3, v3, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget v3, v3, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 1101
    :cond_0
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    if-nez v1, :cond_1

    .line 1102
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mModel null."

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :goto_0
    return-void

    .line 1104
    :cond_1
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mModel.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v3, v3, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v3, v3, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v3}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1109
    :cond_2
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    invoke-static {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$400(Lcom/htc/widget3d/weather/Weather4x4Widget;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_3

    .line 1110
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v3, 0x7f060060

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getRefreshString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 1111
    .local v0, update:Landroid/text/SpannableString;
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    invoke-static {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$400(Lcom/htc/widget3d/weather/Weather4x4Widget;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->startLoading(I)V

    .line 1115
    .end local v0           #update:Landroid/text/SpannableString;
    :cond_3
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->this$1:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatedCurrentCityRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;
    invoke-static {v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1100(Lcom/htc/widget3d/weather/Weather4x4Widget;)Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->postToWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1094
    check-cast p1, Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;)V

    return-void
.end method
