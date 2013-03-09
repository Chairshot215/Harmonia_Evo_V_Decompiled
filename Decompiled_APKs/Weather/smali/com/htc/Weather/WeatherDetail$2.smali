.class Lcom/htc/Weather/WeatherDetail$2;
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
    .line 315
    iput-object p1, p0, Lcom/htc/Weather/WeatherDetail$2;->this$0:Lcom/htc/Weather/WeatherDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 319
    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail$2;->this$0:Lcom/htc/Weather/WeatherDetail;

    #getter for: Lcom/htc/Weather/WeatherDetail;->mSyncData:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/Weather/WeatherDetail;->access$300(Lcom/htc/Weather/WeatherDetail;)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail$2;->this$0:Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v2, v3}, Lcom/htc/Weather/WeatherDetail;->updateRefreshButton(Z)V

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail$2;->this$0:Lcom/htc/Weather/WeatherDetail;

    #getter for: Lcom/htc/Weather/WeatherDetail;->mAddCity:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/Weather/WeatherDetail;->access$400(Lcom/htc/Weather/WeatherDetail;)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 323
    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-nez v2, :cond_2

    .line 338
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    invoke-static {}, Lcom/htc/Weather/WeatherActivity;->getMaximumCount()I

    .line 325
    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v2

    sget v3, Lcom/htc/Weather/WeatherActivity;->mMaximumCityNum:I

    if-lt v2, v3, :cond_3

    .line 326
    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail$2;->this$0:Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0062

    const/16 v4, 0x1f4

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 330
    :cond_3
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail$2;->this$0:Lcom/htc/Weather/WeatherDetail;

    const-class v3, Lcom/htc/Weather/AddCity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.Weather.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail$2;->this$0:Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "WeatherMaGroup"

    const-string v3, "can not start RET_ADD_LOCATION Activity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
