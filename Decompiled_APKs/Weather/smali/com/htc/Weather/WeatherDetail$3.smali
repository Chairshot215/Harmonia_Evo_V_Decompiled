.class Lcom/htc/Weather/WeatherDetail$3;
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
    .line 347
    iput-object p1, p0, Lcom/htc/Weather/WeatherDetail$3;->this$0:Lcom/htc/Weather/WeatherDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail$3;->this$0:Lcom/htc/Weather/WeatherDetail;

    #getter for: Lcom/htc/Weather/WeatherDetail;->mToFullScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/Weather/WeatherDetail;->access$500(Lcom/htc/Weather/WeatherDetail;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail$3;->this$0:Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherActivity;->setGLTransparent(Z)V

    .line 352
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail$3;->this$0:Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherActivity;->setConditionPanelVisible(Z)V

    .line 353
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail$3;->this$0:Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherActivity;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherActivity;->toFullScreen(I)V

    .line 356
    :cond_0
    return-void
.end method
