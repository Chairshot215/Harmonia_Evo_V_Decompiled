.class Lcom/htc/Weather/WeatherActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "WeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/Weather/WeatherActivity;->initAppReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/WeatherActivity;


# direct methods
.method constructor <init>(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/htc/Weather/WeatherActivity$3;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 1406
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.app.autosetting.notify.failuremessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1407
    const-string v1, "errorCode"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1408
    .local v0, errorCode:I
    packed-switch v0, :pswitch_data_0

    .line 1422
    .end local v0           #errorCode:I
    :cond_0
    :goto_0
    return-void

    .line 1410
    .restart local v0       #errorCode:I
    :pswitch_0
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity$3;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1413
    :pswitch_1
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity$3;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0090

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1416
    :pswitch_2
    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity$3;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0091

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1408
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
