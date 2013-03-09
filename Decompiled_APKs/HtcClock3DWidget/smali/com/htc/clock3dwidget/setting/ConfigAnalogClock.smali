.class public Lcom/htc/clock3dwidget/setting/ConfigAnalogClock;
.super Lcom/htc/clock3dwidget/setting/HtcClockSetting;
.source "ConfigAnalogClock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/ConfigAnalogClock;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 12
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "index"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    invoke-super {p0, p1}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->onCreate(Landroid/os/Bundle;)V

    .line 15
    return-void
.end method
