.class Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;
.super Landroid/os/Handler;
.source "WidgetView1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/powerstrip/WidgetView1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 406
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 506
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 509
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 409
    :sswitch_1
    const-string v0, "HtcPowerStripWidget"

    const-string v1, "Update brightness UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Screen_Brightness:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Screen_Brightness:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->setButtonState()V

    goto :goto_0

    .line 417
    :sswitch_2
    const-string v0, "HtcPowerStripWidget"

    const-string v1, "Update timeout UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_ScreenTimeout:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_ScreenTimeout:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->setButtonState()V

    goto :goto_0

    .line 425
    :sswitch_3
    const-string v0, "HtcPowerStripWidget"

    const-string v1, "Update WiFi UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Wifi:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Wifi:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->setButtonState()V

    goto :goto_0

    .line 433
    :sswitch_4
    const-string v0, "HtcPowerStripWidget"

    const-string v1, "Update auto-sync UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->setButtonState()V

    goto :goto_0

    .line 441
    :sswitch_5
    const-string v0, "HtcPowerStripWidget"

    const-string v1, "Update bluetooth UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Bluetooth:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Bluetooth:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->setButtonState()V

    goto :goto_0

    .line 449
    :sswitch_6
    const-string v0, "WidgetView1"

    const-string v1, "REGISTER_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Wifi:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Wifi:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->registerReceiver()V

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Bluetooth:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Bluetooth:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->registerReceiver()V

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->registerReceiver()V

    goto/16 :goto_0

    .line 465
    :sswitch_7
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Wifi:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    if-eqz v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Wifi:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->unRegisterReceiver()V

    .line 469
    :cond_3
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Bluetooth:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    if-eqz v0, :cond_4

    .line 471
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Bluetooth:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->unRegisterReceiver()V

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->unRegisterReceiver()V

    goto/16 :goto_0

    .line 480
    :sswitch_8
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->access$200(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 482
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->access$200(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;
    invoke-static {v1}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->access$300(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 484
    :cond_5
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->access$400(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->access$400(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;
    invoke-static {v1}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->access$300(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    goto/16 :goto_0

    .line 491
    :sswitch_9
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->access$200(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 493
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->access$200(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;
    invoke-static {v1}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->access$300(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 496
    :cond_6
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->access$400(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->access$400(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Landroid/content/ContentQueryMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    #getter for: Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;
    invoke-static {v1}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->access$300(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    goto/16 :goto_0

    .line 406
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f42 -> :sswitch_4
        0x1f43 -> :sswitch_0
        0x1f45 -> :sswitch_3
        0x1f46 -> :sswitch_5
        0x1f47 -> :sswitch_2
        0x1f48 -> :sswitch_1
        0x1fa4 -> :sswitch_6
        0x1fa5 -> :sswitch_7
        0x1fa6 -> :sswitch_8
        0x1fa7 -> :sswitch_9
    .end sparse-switch
.end method
