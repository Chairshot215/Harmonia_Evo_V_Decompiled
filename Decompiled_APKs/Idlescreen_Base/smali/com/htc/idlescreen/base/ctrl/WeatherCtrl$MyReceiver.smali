.class Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MyReceiver;->this$0:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MyReceiver;-><init>(Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 388
    const-string v1, "settingData"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 389
    .local v0, setting:Z
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MyReceiver;->this$0:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    invoke-virtual {v1, v0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->setWeatherSetting(Z)V

    .line 390
    return-void
.end method
