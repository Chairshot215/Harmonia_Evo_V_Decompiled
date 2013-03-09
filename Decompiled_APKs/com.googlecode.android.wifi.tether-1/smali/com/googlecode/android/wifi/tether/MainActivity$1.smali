.class Lcom/googlecode/android/wifi/tether/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/MainActivity;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    .line 318
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 37
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, action:Ljava/lang/String;
    const-string v32, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 323
    const-string v32, "temperature"

    const/16 v33, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 324
    .local v25, temp:I
    add-int/lit8 v32, v25, 0x5

    div-int/lit8 v5, v32, 0xa

    .line 325
    .local v5, celsius:I
    div-int/lit8 v32, v25, 0xa

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3fe1c28f5c28f5c3L

    div-double v32, v32, v34

    const-wide/high16 v34, 0x4040

    add-double v32, v32, v34

    const-wide/high16 v34, 0x3fe0

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v14, v0

    .line 326
    .local v14, fahrenheit:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$0(Lcom/googlecode/android/wifi/tether/MainActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "batterytemppref"

    const-string v34, "celsius"

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v33, "celsius"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->batteryTemperature:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$1(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v34, v0

    const v35, 0x7f0700dd

    invoke-virtual/range {v34 .. v35}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    .end local v5           #celsius:I
    .end local v14           #fahrenheit:I
    .end local v25           #temp:I
    :cond_0
    :goto_0
    return-void

    .line 330
    .restart local v5       #celsius:I
    .restart local v14       #fahrenheit:I
    .restart local v25       #temp:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->batteryTemperature:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$1(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v34, v0

    const v35, 0x7f0700de

    invoke-virtual/range {v34 .. v35}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 333
    .end local v5           #celsius:I
    .end local v14           #fahrenheit:I
    .end local v25           #temp:I
    :cond_2
    const-string v32, "com.googlecode.android.wifi.tether.intent.STATE"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 334
    const-string v32, "state"

    const/16 v33, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    packed-switch v32, :pswitch_data_0

    .line 369
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    invoke-static {}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$4()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/googlecode/android/wifi/tether/MainActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v32

    goto :goto_0

    .line 336
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    invoke-static {}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$2()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/googlecode/android/wifi/tether/MainActivity;->showDialog(I)V

    goto :goto_0

    .line 340
    :pswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    invoke-static {}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$2()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/googlecode/android/wifi/tether/MainActivity;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 342
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #calls: Lcom/googlecode/android/wifi/tether/MainActivity;->toggleStartStop()V
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$3(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    goto :goto_0

    .line 345
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    invoke-static {}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$4()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/googlecode/android/wifi/tether/MainActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 349
    :pswitch_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    invoke-static {}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$4()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/googlecode/android/wifi/tether/MainActivity;->dismissDialog(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 351
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #calls: Lcom/googlecode/android/wifi/tether/MainActivity;->toggleStartStop()V
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$3(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    goto/16 :goto_0

    .line 355
    :pswitch_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    invoke-static {}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$2()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/googlecode/android/wifi/tether/MainActivity;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 357
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$0(Lcom/googlecode/android/wifi/tether/MainActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v33, v0

    const v34, 0x7f07001b

    invoke-virtual/range {v33 .. v34}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #calls: Lcom/googlecode/android/wifi/tether/MainActivity;->toggleStartStop()V
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$3(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    goto/16 :goto_0

    .line 362
    :pswitch_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    invoke-static {}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$2()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/googlecode/android/wifi/tether/MainActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 364
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$0(Lcom/googlecode/android/wifi/tether/MainActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v33, v0

    const v34, 0x7f07001c

    invoke-virtual/range {v33 .. v34}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #calls: Lcom/googlecode/android/wifi/tether/MainActivity;->toggleStartStop()V
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$3(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    goto/16 :goto_0

    .line 374
    :cond_3
    const-string v32, "com.googlecode.android.wifi.tether.intent.KEEPALIVE"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 376
    :try_start_5
    const-string v32, "keepalive"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v16

    .line 377
    .local v16, keepalive:[J
    const-string v17, ""

    .line 378
    .local v17, keepalivestring:Ljava/lang/String;
    const/16 v32, 0x0

    aget-wide v32, v16, v32

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_4

    .line 379
    const-string v17, "UP"

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->keepAliveText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$5(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/googlecode/android/wifi/tether/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f060005

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTextColor(I)V

    .line 396
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->keepAliveText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$5(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->keepAliveText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$5(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v34, v0

    const v35, 0x7f070026

    invoke-virtual/range {v34 .. v35}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, ": "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->keepAliveText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$5(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->invalidate()V
    :try_end_5
    .catch Ljava/lang/IllegalAccessError; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 399
    .end local v16           #keepalive:[J
    .end local v17           #keepalivestring:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 400
    .local v13, ex:Ljava/lang/IllegalAccessError;
    invoke-virtual {v13}, Ljava/lang/IllegalAccessError;->printStackTrace()V

    goto/16 :goto_0

    .line 386
    .end local v13           #ex:Ljava/lang/IllegalAccessError;
    .restart local v16       #keepalive:[J
    .restart local v17       #keepalivestring:Ljava/lang/String;
    :cond_4
    const/16 v32, 0x2

    :try_start_6
    aget-wide v32, v16, v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    rem-int/lit8 v24, v32, 0x3c

    .line 387
    .local v24, seconds:I
    const/16 v32, 0x2

    aget-wide v32, v16, v32

    const-wide/32 v34, 0xea60

    div-long v32, v32, v34

    const-wide/16 v34, 0x3c

    rem-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v18, v0

    .line 388
    .local v18, minutes:I
    const/16 v32, 0x2

    aget-wide v32, v16, v32

    const-wide/32 v34, 0x36ee80

    div-long v32, v32, v34

    const-wide/16 v34, 0x18

    rem-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v15, v0

    .line 390
    .local v15, hours:I
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "DOWN - "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "%02d:%02d:%02d"

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    .line 391
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    .line 392
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x2

    .line 393
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    .line 390
    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->keepAliveText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$5(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/googlecode/android/wifi/tether/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f060004

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_6
    .catch Ljava/lang/IllegalAccessError; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    .line 403
    .end local v15           #hours:I
    .end local v16           #keepalive:[J
    .end local v17           #keepalivestring:Ljava/lang/String;
    .end local v18           #minutes:I
    .end local v24           #seconds:I
    :cond_5
    const-string v32, "com.googlecode.android.wifi.tether.intent.COUNTDOWN"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 405
    :try_start_7
    const-string v32, "countdown"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v6

    .line 411
    .local v6, countdown:[J
    const/16 v32, 0x0

    aget-wide v32, v6, v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    rem-int/lit8 v24, v32, 0x3c

    .line 412
    .restart local v24       #seconds:I
    const/16 v32, 0x0

    aget-wide v32, v6, v32

    const-wide/32 v34, 0xea60

    div-long v32, v32, v34

    const-wide/16 v34, 0x3c

    rem-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v18, v0

    .line 413
    .restart local v18       #minutes:I
    const/16 v32, 0x0

    aget-wide v32, v6, v32

    const-wide/32 v34, 0x36ee80

    div-long v32, v32, v34

    const-wide/16 v34, 0x18

    rem-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v15, v0

    .line 415
    .restart local v15       #hours:I
    const-string v32, "%02d:%02d:%02d"

    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    .line 416
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    .line 417
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x2

    .line 418
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    .line 415
    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 419
    .local v7, countdowncurrentstring:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->countDownText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$6(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->countDownText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$6(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v34, v0

    const v35, 0x7f070027

    invoke-virtual/range {v34 .. v35}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, ": "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->countDownText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$6(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->invalidate()V
    :try_end_7
    .catch Ljava/lang/IllegalAccessError; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 422
    .end local v6           #countdown:[J
    .end local v7           #countdowncurrentstring:Ljava/lang/String;
    .end local v15           #hours:I
    .end local v18           #minutes:I
    .end local v24           #seconds:I
    :catch_2
    move-exception v13

    .line 423
    .restart local v13       #ex:Ljava/lang/IllegalAccessError;
    invoke-virtual {v13}, Ljava/lang/IllegalAccessError;->printStackTrace()V

    goto/16 :goto_0

    .line 426
    .end local v13           #ex:Ljava/lang/IllegalAccessError;
    :cond_6
    const-string v32, "com.googlecode.android.wifi.tether.intent.COUNTDOWNTIMER"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 428
    :try_start_8
    const-string v32, "countdowntimer"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    .line 434
    .local v8, countdowntimer:[J
    const/16 v32, 0x0

    aget-wide v32, v8, v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    rem-int/lit8 v24, v32, 0x3c

    .line 435
    .restart local v24       #seconds:I
    const/16 v32, 0x0

    aget-wide v32, v8, v32

    const-wide/32 v34, 0xea60

    div-long v32, v32, v34

    const-wide/16 v34, 0x3c

    rem-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v18, v0

    .line 436
    .restart local v18       #minutes:I
    const/16 v32, 0x0

    aget-wide v32, v8, v32

    const-wide/32 v34, 0x36ee80

    div-long v32, v32, v34

    const-wide/16 v34, 0x18

    rem-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v15, v0

    .line 438
    .restart local v15       #hours:I
    const-string v32, "%02d:%02d:%02d"

    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    .line 439
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    .line 440
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x2

    .line 441
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    .line 438
    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 442
    .local v26, timercurrentstring:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->timerText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$7(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->timerText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$7(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v34, v0

    const v35, 0x7f070028

    invoke-virtual/range {v34 .. v35}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, ": "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->timerText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$7(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->invalidate()V
    :try_end_8
    .catch Ljava/lang/IllegalAccessError; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 445
    .end local v8           #countdowntimer:[J
    .end local v15           #hours:I
    .end local v18           #minutes:I
    .end local v24           #seconds:I
    .end local v26           #timercurrentstring:Ljava/lang/String;
    :catch_3
    move-exception v13

    .line 446
    .restart local v13       #ex:Ljava/lang/IllegalAccessError;
    invoke-virtual {v13}, Ljava/lang/IllegalAccessError;->printStackTrace()V

    goto/16 :goto_0

    .line 449
    .end local v13           #ex:Ljava/lang/IllegalAccessError;
    :cond_7
    const-string v32, "com.googlecode.android.wifi.tether.intent.QUOTA"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 450
    const-string v32, "quota"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v21

    .line 451
    .local v21, quotaData:[J
    const/16 v32, 0x0

    aget-wide v19, v21, v32

    .line 452
    .local v19, quotaCurrentTraffic:J
    const/16 v32, 0x1

    aget-wide v22, v21, v32

    .line 454
    .local v22, quotaMaxTraffic:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->quotaRow:Landroid/widget/RelativeLayout;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$8(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->quotaCurrentText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$9(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v19

    #calls: Lcom/googlecode/android/wifi/tether/MainActivity;->formatCountMB(J)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$10(Lcom/googlecode/android/wifi/tether/MainActivity;J)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->quotaMaxText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$11(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v22

    #calls: Lcom/googlecode/android/wifi/tether/MainActivity;->formatCountMB(J)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$10(Lcom/googlecode/android/wifi/tether/MainActivity;J)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->quotaCurrentText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$9(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->invalidate()V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->quotaMaxText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$11(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_0

    .line 460
    .end local v19           #quotaCurrentTraffic:J
    .end local v21           #quotaData:[J
    .end local v22           #quotaMaxTraffic:J
    :cond_8
    const-string v32, "com.googlecode.android.wifi.tether.intent.TRAFFIC"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->trafficRow:Landroid/widget/RelativeLayout;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$12(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 462
    const-string v32, "traffic"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v27

    .line 470
    .local v27, trafficData:[J
    const/16 v32, 0x0

    aget-wide v30, v27, v32

    .line 471
    .local v30, uploadTraffic:J
    const/16 v32, 0x1

    aget-wide v11, v27, v32

    .line 472
    .local v11, downloadTraffic:J
    const/16 v32, 0x2

    aget-wide v28, v27, v32

    .line 473
    .local v28, uploadRate:J
    const/16 v32, 0x3

    aget-wide v9, v27, v32

    .line 476
    .local v9, downloadRate:J
    const-wide/16 v32, 0x0

    cmp-long v32, v28, v32

    if-gez v32, :cond_9

    .line 477
    const-wide/16 v28, 0x0

    .line 478
    :cond_9
    const-wide/16 v32, 0x0

    cmp-long v32, v9, v32

    if-gez v32, :cond_a

    .line 479
    const-wide/16 v9, 0x0

    .line 481
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->uploadText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$13(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-wide/from16 v1, v30

    move/from16 v3, v34

    #calls: Lcom/googlecode/android/wifi/tether/MainActivity;->formatCount(JZ)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$14(Lcom/googlecode/android/wifi/tether/MainActivity;JZ)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->downloadText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$15(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    #calls: Lcom/googlecode/android/wifi/tether/MainActivity;->formatCount(JZ)Ljava/lang/String;
    invoke-static {v0, v11, v12, v1}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$14(Lcom/googlecode/android/wifi/tether/MainActivity;JZ)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->downloadText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$15(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->invalidate()V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->uploadText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$13(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->invalidate()V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->uploadRateText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$16(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    move/from16 v3, v34

    #calls: Lcom/googlecode/android/wifi/tether/MainActivity;->formatCount(JZ)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$14(Lcom/googlecode/android/wifi/tether/MainActivity;JZ)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->downloadRateText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$17(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    #calls: Lcom/googlecode/android/wifi/tether/MainActivity;->formatCount(JZ)Ljava/lang/String;
    invoke-static {v0, v9, v10, v1}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$14(Lcom/googlecode/android/wifi/tether/MainActivity;JZ)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->downloadRateText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$17(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->invalidate()V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->uploadRateText:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$16(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_0

    .line 363
    .end local v9           #downloadRate:J
    .end local v11           #downloadTraffic:J
    .end local v27           #trafficData:[J
    .end local v28           #uploadRate:J
    .end local v30           #uploadTraffic:J
    :catch_4
    move-exception v32

    goto/16 :goto_4

    .line 356
    :catch_5
    move-exception v32

    goto/16 :goto_3

    .line 350
    :catch_6
    move-exception v32

    goto/16 :goto_2

    .line 341
    :catch_7
    move-exception v32

    goto/16 :goto_1

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
