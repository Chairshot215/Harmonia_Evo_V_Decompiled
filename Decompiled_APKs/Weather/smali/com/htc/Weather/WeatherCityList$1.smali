.class Lcom/htc/Weather/WeatherCityList$1;
.super Ljava/lang/Object;
.source "WeatherCityList.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/WeatherCityList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/WeatherCityList;


# direct methods
.method constructor <init>(Lcom/htc/Weather/WeatherCityList;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/Weather/WeatherCityList$1;->this$0:Lcom/htc/Weather/WeatherCityList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/16 v5, 0x14

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, idx:I
    iget-object v2, p0, Lcom/htc/Weather/WeatherCityList$1;->this$0:Lcom/htc/Weather/WeatherCityList;

    #getter for: Lcom/htc/Weather/WeatherCityList;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/Weather/WeatherCityList;->access$000(Lcom/htc/Weather/WeatherCityList;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "city index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/htc/Weather/WeatherCityList$1;->this$0:Lcom/htc/Weather/WeatherCityList;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherCityList;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/WeatherActivity;

    .line 66
    .local v1, mainActivity:Lcom/htc/Weather/WeatherActivity;
    iget-object v2, v1, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    iget-object v2, v1, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, p3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    return-void
.end method
