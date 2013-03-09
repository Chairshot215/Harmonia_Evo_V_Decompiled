.class public Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;
.super Landroid/app/Activity;
.source "BrightnessActivity.java"

# interfaces
.implements Lcom/htc/rosiewidgets/screenbrightness/Constants;


# static fields
.field private static final TAG:Ljava/lang/String; = "BrightnessActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field public mnSetting:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;->mnSetting:I

    .line 69
    new-instance v0, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity$1;-><init>(Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const-string v3, "BrightnessActivity"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "BrightnessSetting"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 29
    .local v2, nSetting:I
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 31
    .local v1, lpWindow:Landroid/view/WindowManager$LayoutParams;
    iput v2, p0, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;->mnSetting:I

    .line 32
    packed-switch v2, :pswitch_data_0

    .line 48
    const-string v3, "BrightnessActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: nSetting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 52
    return-void

    .line 35
    :pswitch_0
    const v3, 0x3ecccccd

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 38
    :pswitch_1
    const v3, 0x3f19999a

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 44
    :pswitch_2
    const/high16 v3, 0x3f80

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 67
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11d7

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 58
    return-void
.end method
