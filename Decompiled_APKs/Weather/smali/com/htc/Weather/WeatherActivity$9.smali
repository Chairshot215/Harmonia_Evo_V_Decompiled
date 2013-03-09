.class Lcom/htc/Weather/WeatherActivity$9;
.super Ljava/lang/Object;
.source "WeatherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/Weather/WeatherActivity;->showNetworkInActiveDialog()V
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
    .line 1618
    iput-object p1, p0, Lcom/htc/Weather/WeatherActivity$9;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "button"

    .prologue
    .line 1621
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1623
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1624
    .local v1, wifiIntent:Landroid/content/Intent;
    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1627
    :try_start_0
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity$9;->this$0:Lcom/htc/Weather/WeatherActivity;

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v3}, Lcom/htc/Weather/WeatherActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    .end local v1           #wifiIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v2, -0x2

    if-ne p2, v2, :cond_1

    .line 1634
    iget-object v2, p0, Lcom/htc/Weather/WeatherActivity$9;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->addTopWindowView()V
    invoke-static {v2}, Lcom/htc/Weather/WeatherActivity;->access$2900(Lcom/htc/Weather/WeatherActivity;)V

    .line 1637
    :cond_1
    return-void

    .line 1628
    .restart local v1       #wifiIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1629
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "WeatherMaGroup"

    const-string v3, "can not startActivity"

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
