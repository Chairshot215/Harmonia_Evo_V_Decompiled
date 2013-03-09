.class Lcom/htc/lockscreen/app/LSState$EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/LSState;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/app/LSState;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/app/LSState;Lcom/htc/lockscreen/app/LSState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/LSState$EventReceiver;-><init>(Lcom/htc/lockscreen/app/LSState;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, action:Ljava/lang/String;
    const-string v12, "com.htc.launcher.lockscreen.WallpaperChanged"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const-string v12, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "CID"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "com.htc.FOTA_UPGRADE"

    const-string v13, "com.htc.CUSTOMIZED_REASON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 334
    iget-object v12, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mNonUiHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/htc/lockscreen/app/LSState;->access$400(Lcom/htc/lockscreen/app/LSState;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x65

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 335
    iget-object v12, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mNonUiHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/htc/lockscreen/app/LSState;->access$400(Lcom/htc/lockscreen/app/LSState;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x65

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto :goto_0

    .line 337
    :cond_2
    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 338
    const-string v12, "status"

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 340
    .local v11, status:I
    const-string v12, "level"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 341
    .local v5, level:I
    const-string v12, "plugged"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 343
    .local v9, plugged:I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 344
    .local v2, bundle:Landroid/os/Bundle;
    const-string v12, "status"

    invoke-virtual {v2, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    const-string v12, "level"

    invoke-virtual {v2, v12, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    const-string v12, "plugged"

    invoke-virtual {v2, v12, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 349
    .local v7, message:Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v7, Landroid/os/Message;->what:I

    .line 350
    invoke-virtual {v7, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 351
    iget-object v12, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/htc/lockscreen/app/LSState;->access$500(Lcom/htc/lockscreen/app/LSState;)Landroid/os/Handler;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 353
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v5           #level:I
    .end local v7           #message:Landroid/os/Message;
    .end local v9           #plugged:I
    .end local v11           #status:I
    :cond_3
    const-string v12, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 355
    .local v3, config:Landroid/content/res/Configuration;
    iget-object v6, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 357
    .local v6, locale:Ljava/util/Locale;
    const/4 v10, 0x0

    .line 358
    .local v10, recreate:Z
    iget-object v12, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mLocale:Ljava/util/Locale;
    invoke-static {v12}, Lcom/htc/lockscreen/app/LSState;->access$600(Lcom/htc/lockscreen/app/LSState;)Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 359
    iget-object v12, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #setter for: Lcom/htc/lockscreen/app/LSState;->mLocale:Ljava/util/Locale;
    invoke-static {v12, v6}, Lcom/htc/lockscreen/app/LSState;->access$602(Lcom/htc/lockscreen/app/LSState;Ljava/util/Locale;)Ljava/util/Locale;

    .line 360
    const/4 v10, 0x1

    .line 362
    :cond_4
    invoke-static {v3}, Lcom/htc/lockscreen/app/ThemeHelper;->skinChange(Landroid/content/res/Configuration;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 363
    const/4 v10, 0x1

    .line 365
    :cond_5
    if-eqz v10, :cond_0

    .line 366
    iget-object v12, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/htc/lockscreen/app/LSState;->access$500(Lcom/htc/lockscreen/app/LSState;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x5

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 367
    iget-object v12, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/htc/lockscreen/app/LSState;->access$500(Lcom/htc/lockscreen/app/LSState;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x5

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 370
    .end local v3           #config:Landroid/content/res/Configuration;
    .end local v6           #locale:Ljava/util/Locale;
    .end local v10           #recreate:Z
    :cond_6
    const-string v12, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 371
    iget-object v12, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    const-string v13, "android.intent.extra.DOCK_STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    #setter for: Lcom/htc/lockscreen/app/LSState;->mUIModeType:I
    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/LSState;->access$702(Lcom/htc/lockscreen/app/LSState;I)I

    .line 373
    const-string v12, "LSState"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_DOCK_EVENT mUIModeType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mUIModeType:I
    invoke-static {v14}, Lcom/htc/lockscreen/app/LSState;->access$700(Lcom/htc/lockscreen/app/LSState;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 375
    :cond_7
    const-string v12, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 376
    const-string v12, "phoneName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 377
    .local v8, phoneName:Ljava/lang/String;
    const/4 v4, 0x1

    .line 378
    .local v4, isCDMA:Z
    const-string v12, "GSM"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 379
    const-string v12, "LSState"

    const-string v13, "ACTION_RADIO_TECHNOLOGY_CHANGED GSM"

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/4 v4, 0x0

    .line 383
    :cond_8
    iget-object v13, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    if-nez v4, :cond_9

    const/4 v12, 0x1

    :goto_1
    #setter for: Lcom/htc/lockscreen/app/LSState;->mNeedShowSimState:Z
    invoke-static {v13, v12}, Lcom/htc/lockscreen/app/LSState;->access$802(Lcom/htc/lockscreen/app/LSState;Z)Z

    .line 384
    iget-object v12, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/htc/lockscreen/app/LSState;->access$500(Lcom/htc/lockscreen/app/LSState;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 385
    iget-object v12, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/htc/lockscreen/app/LSState;->access$500(Lcom/htc/lockscreen/app/LSState;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 383
    :cond_9
    const/4 v12, 0x0

    goto :goto_1

    .line 387
    .end local v4           #isCDMA:Z
    .end local v8           #phoneName:Ljava/lang/String;
    :cond_a
    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 388
    iget-object v12, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #calls: Lcom/htc/lockscreen/app/LSState;->updateAirPlaneMode()V
    invoke-static {v12}, Lcom/htc/lockscreen/app/LSState;->access$900(Lcom/htc/lockscreen/app/LSState;)V

    .line 389
    iget-object v12, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/htc/lockscreen/app/LSState;->access$500(Lcom/htc/lockscreen/app/LSState;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 390
    iget-object v12, p0, Lcom/htc/lockscreen/app/LSState$EventReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/htc/lockscreen/app/LSState;->access$500(Lcom/htc/lockscreen/app/LSState;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0
.end method
