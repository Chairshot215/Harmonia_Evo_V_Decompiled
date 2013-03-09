.class Lcom/htc/Weather/WeatherDetail$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WeatherDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/Weather/WeatherDetail;->enablemButtonGestureDetector()V
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
    .line 257
    iput-object p1, p0, Lcom/htc/Weather/WeatherDetail$1;->this$0:Lcom/htc/Weather/WeatherDetail;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 260
    const-string v0, "WeatherMaGroup"

    const-string v1, "onShowPress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail$1;->this$0:Lcom/htc/Weather/WeatherDetail;

    const/4 v1, 0x1

    #setter for: Lcom/htc/Weather/WeatherDetail;->showPress:Z
    invoke-static {v0, v1}, Lcom/htc/Weather/WeatherDetail;->access$002(Lcom/htc/Weather/WeatherDetail;Z)Z

    .line 262
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail$1;->this$0:Lcom/htc/Weather/WeatherDetail;

    #calls: Lcom/htc/Weather/WeatherDetail;->setChooseTabByTabView()V
    invoke-static {v0}, Lcom/htc/Weather/WeatherDetail;->access$100(Lcom/htc/Weather/WeatherDetail;)V

    .line 263
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail$1;->this$0:Lcom/htc/Weather/WeatherDetail;

    #calls: Lcom/htc/Weather/WeatherDetail;->performChooseTab()V
    invoke-static {v0}, Lcom/htc/Weather/WeatherDetail;->access$200(Lcom/htc/Weather/WeatherDetail;)V

    .line 264
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 267
    const-string v0, "WeatherMaGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp: showPress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail$1;->this$0:Lcom/htc/Weather/WeatherDetail;

    #getter for: Lcom/htc/Weather/WeatherDetail;->showPress:Z
    invoke-static {v2}, Lcom/htc/Weather/WeatherDetail;->access$000(Lcom/htc/Weather/WeatherDetail;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail$1;->this$0:Lcom/htc/Weather/WeatherDetail;

    #getter for: Lcom/htc/Weather/WeatherDetail;->showPress:Z
    invoke-static {v0}, Lcom/htc/Weather/WeatherDetail;->access$000(Lcom/htc/Weather/WeatherDetail;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail$1;->this$0:Lcom/htc/Weather/WeatherDetail;

    #calls: Lcom/htc/Weather/WeatherDetail;->setChooseTabByTabView()V
    invoke-static {v0}, Lcom/htc/Weather/WeatherDetail;->access$100(Lcom/htc/Weather/WeatherDetail;)V

    .line 270
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail$1;->this$0:Lcom/htc/Weather/WeatherDetail;

    #calls: Lcom/htc/Weather/WeatherDetail;->performChooseTab()V
    invoke-static {v0}, Lcom/htc/Weather/WeatherDetail;->access$200(Lcom/htc/Weather/WeatherDetail;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail$1;->this$0:Lcom/htc/Weather/WeatherDetail;

    #setter for: Lcom/htc/Weather/WeatherDetail;->showPress:Z
    invoke-static {v0, v3}, Lcom/htc/Weather/WeatherDetail;->access$002(Lcom/htc/Weather/WeatherDetail;Z)Z

    .line 273
    return v3
.end method
