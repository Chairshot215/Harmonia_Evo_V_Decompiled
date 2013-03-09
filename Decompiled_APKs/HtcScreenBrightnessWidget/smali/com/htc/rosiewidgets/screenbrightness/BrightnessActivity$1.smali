.class Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity$1;
.super Landroid/os/Handler;
.source "BrightnessActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity$1;->this$0:Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 73
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity$1;->this$0:Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;

    invoke-virtual {v1}, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity$1;->this$0:Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;

    iget v1, v1, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;->mnSetting:I

    packed-switch v1, :pswitch_data_1

    .line 100
    const-string v1, "BrightnessActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: mnSetting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity$1;->this$0:Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;

    iget v3, v3, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;->mnSetting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_1
    iget-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity$1;->this$0:Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;

    invoke-virtual {v1}, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;->finish()V

    goto :goto_0

    .line 91
    :pswitch_1
    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    const-string v1, "screen_brightness"

    sget-object v2, Lcom/htc/rosiewidgets/screenbrightness/Constants;->C_nBrightness:[I

    iget-object v3, p0, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity$1;->this$0:Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;

    iget v3, v3, Lcom/htc/rosiewidgets/screenbrightness/BrightnessActivity;->mnSetting:I

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x11d7
        :pswitch_0
    .end packed-switch

    .line 77
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
