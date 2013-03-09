.class Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;
.super Ljava/lang/Object;
.source "PersonalizeMain.java"

# interfaces
.implements Lcom/htc/home/personalize/AddWidgetLayout$OnAddWidgetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/PersonalizeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddToHomeItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/PersonalizeMain;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/PersonalizeMain;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/PersonalizeMain;Lcom/htc/home/personalize/PersonalizeMain$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;-><init>(Lcom/htc/home/personalize/PersonalizeMain;)V

    return-void
.end method

.method private handleError(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 591
    const-string v0, "Personalize"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const v2, 0x7f090073

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/PersonalizeMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 595
    return-void
.end method

.method private pickAllFxWidget()V
    .locals 5

    .prologue
    .line 579
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 580
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.home.personalize"

    const-string v4, "com.htc.home.personalize.fusionwidget.StyleChooser"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 582
    :try_start_0
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/16 v3, 0xc

    invoke-virtual {v2, v1, v3}, Lcom/htc/home/personalize/PersonalizeMain;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->handleError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private pickFxWidget(Lcom/htc/home/personalize/AddAdapter$ListItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 565
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 566
    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.htc.home.personalize"

    const-string v5, "com.htc.home.personalize.fusionwidget.StyleChooser"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 567
    const/4 v3, 0x1

    new-array v0, v3, [Landroid/content/ComponentName;

    .line 568
    .local v0, componentNames:[Landroid/content/ComponentName;
    const/4 v3, 0x0

    iget-object v4, p1, Lcom/htc/home/personalize/AddAdapter$ListItem;->mComponent:Landroid/content/ComponentName;

    aput-object v4, v0, v3

    .line 570
    :try_start_0
    const-string v3, "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 571
    iget-object v3, p0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/16 v4, 0xc

    invoke-virtual {v3, v2, v4}, Lcom/htc/home/personalize/PersonalizeMain;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v1

    .line 573
    .local v1, ex:Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->handleError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private pickWidget(Lcom/htc/home/personalize/AddAdapter$ListItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 552
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 553
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.home.personalize"

    const-string v4, "com.htc.home.personalize.widgetpicker.WidgetPicker"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 555
    :try_start_0
    const-string v2, "Personalize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher: AddList onItemClick() item.widgetItem.isGroupItem() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/home/personalize/AddAdapter$ListItem;->widgetItem:Lcom/htc/home/personalize/WidgetItem;

    invoke-virtual {v4}, Lcom/htc/home/personalize/WidgetItem;->isGroupItem()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v2, "item_type"

    iget-object v3, p1, Lcom/htc/home/personalize/AddAdapter$ListItem;->widgetItem:Lcom/htc/home/personalize/WidgetItem;

    iget v3, v3, Lcom/htc/home/personalize/WidgetItem;->mItemType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3}, Lcom/htc/home/personalize/PersonalizeMain;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->handleError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 16
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 390
    .local v11, tag:Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/widget/HtcAdapterView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 391
    .local v2, context:Landroid/content/Context;
    const-string v12, "Personalize"

    const-string v13, "onItemClick"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    instance-of v12, v11, Lcom/htc/home/personalize/AddAdapter$ListItem;

    if-eqz v12, :cond_0

    move-object v6, v11

    .line 393
    check-cast v6, Lcom/htc/home/personalize/AddAdapter$ListItem;

    .line 394
    .local v6, item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    const-string v12, "Personalize"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "actionTag: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget v12, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    sparse-switch v12, :sswitch_data_0

    .line 549
    .end local v6           #item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 424
    .restart local v6       #item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/4 v13, 0x3

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    #calls: Lcom/htc/home/personalize/PersonalizeMain;->launchHomeWithAddToHome(ILandroid/content/Intent;)V
    invoke-static {v12, v13, v14}, Lcom/htc/home/personalize/PersonalizeMain;->access$400(Lcom/htc/home/personalize/PersonalizeMain;ILandroid/content/Intent;)V

    goto :goto_0

    .line 429
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    sget-object v13, Lcom/htc/home/personalize/PersonalizeMain$ListType;->LIST_WIDGET:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    #setter for: Lcom/htc/home/personalize/PersonalizeMain;->mCurListType:Lcom/htc/home/personalize/PersonalizeMain$ListType;
    invoke-static {v12, v13}, Lcom/htc/home/personalize/PersonalizeMain;->access$502(Lcom/htc/home/personalize/PersonalizeMain;Lcom/htc/home/personalize/PersonalizeMain$ListType;)Lcom/htc/home/personalize/PersonalizeMain$ListType;

    .line 430
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->pickWidget(Lcom/htc/home/personalize/AddAdapter$ListItem;)V

    goto :goto_0

    .line 434
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    sget-object v13, Lcom/htc/home/personalize/PersonalizeMain$ListType;->LIST_WIDGET:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    #setter for: Lcom/htc/home/personalize/PersonalizeMain;->mCurListType:Lcom/htc/home/personalize/PersonalizeMain$ListType;
    invoke-static {v12, v13}, Lcom/htc/home/personalize/PersonalizeMain;->access$502(Lcom/htc/home/personalize/PersonalizeMain;Lcom/htc/home/personalize/PersonalizeMain$ListType;)Lcom/htc/home/personalize/PersonalizeMain$ListType;

    .line 435
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->pickFxWidget(Lcom/htc/home/personalize/AddAdapter$ListItem;)V

    goto :goto_0

    .line 441
    :sswitch_4
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 443
    .local v5, intent:Landroid/content/Intent;
    :try_start_0
    const-string v12, "com.htc.store.action.DISPATCH"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v12, "navigate_to"

    const-string v13, "get_more"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const-string v12, "get_more_key"

    const-string v13, "Widget"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v12, "requester"

    const-string v13, "com.htc.store_oad"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/16 v13, 0xf

    invoke-virtual {v12, v5, v13}, Lcom/htc/home/personalize/PersonalizeMain;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v4

    .line 449
    .local v4, e:Landroid/content/ActivityNotFoundException;
    const-string v12, "Personalize"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "can not launch store and try to launch wdm "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v12, Landroid/content/ComponentName;

    const-string v13, "com.htc.wdm"

    const-string v14, "com.htc.wdm.activity.WidgetList"

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 453
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/16 v13, 0xf

    invoke-virtual {v12, v5, v13}, Lcom/htc/home/personalize/PersonalizeMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 461
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    .end local v5           #intent:Landroid/content/Intent;
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->pickAllFxWidget()V

    goto/16 :goto_0

    .line 468
    :sswitch_6
    new-instance v10, Landroid/content/Intent;

    const-string v12, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v10, shortcutIntent:Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 471
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v12, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->packageName:Ljava/lang/String;

    iget-object v13, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/4 v13, 0x7

    #calls: Lcom/htc/home/personalize/PersonalizeMain;->onPickItem(ILandroid/content/Intent;)V
    invoke-static {v12, v13, v5}, Lcom/htc/home/personalize/PersonalizeMain;->access$600(Lcom/htc/home/personalize/PersonalizeMain;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 480
    .end local v5           #intent:Landroid/content/Intent;
    .end local v10           #shortcutIntent:Landroid/content/Intent;
    :sswitch_7
    new-instance v8, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    const/4 v13, 0x0

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 481
    .local v8, mainIntent:Landroid/content/Intent;
    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 483
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v12, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 485
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/4 v13, 0x6

    #calls: Lcom/htc/home/personalize/PersonalizeMain;->onPickItem(ILandroid/content/Intent;)V
    invoke-static {v12, v13, v5}, Lcom/htc/home/personalize/PersonalizeMain;->access$600(Lcom/htc/home/personalize/PersonalizeMain;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 491
    .end local v5           #intent:Landroid/content/Intent;
    .end local v8           #mainIntent:Landroid/content/Intent;
    :sswitch_8
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v7, liveFolderIntent:Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 493
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v12, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->packageName:Ljava/lang/String;

    iget-object v13, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/16 v13, 0x8

    #calls: Lcom/htc/home/personalize/PersonalizeMain;->onPickItem(ILandroid/content/Intent;)V
    invoke-static {v12, v13, v5}, Lcom/htc/home/personalize/PersonalizeMain;->access$600(Lcom/htc/home/personalize/PersonalizeMain;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 523
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #liveFolderIntent:Landroid/content/Intent;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->packageName:Ljava/lang/String;

    iget-object v15, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->className:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #setter for: Lcom/htc/home/personalize/PersonalizeMain;->mAppWidgetComponent:Landroid/content/ComponentName;
    invoke-static {v12, v13}, Lcom/htc/home/personalize/PersonalizeMain;->access$702(Lcom/htc/home/personalize/PersonalizeMain;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 524
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/16 v13, 0x9

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    #calls: Lcom/htc/home/personalize/PersonalizeMain;->sendIntentToLauncher(ILandroid/content/Intent;)V
    invoke-static {v12, v13, v14}, Lcom/htc/home/personalize/PersonalizeMain;->access$800(Lcom/htc/home/personalize/PersonalizeMain;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 530
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/16 v13, 0xb

    iget-object v14, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->intent:Landroid/content/Intent;

    #calls: Lcom/htc/home/personalize/PersonalizeMain;->onPickItem(ILandroid/content/Intent;)V
    invoke-static {v12, v13, v14}, Lcom/htc/home/personalize/PersonalizeMain;->access$600(Lcom/htc/home/personalize/PersonalizeMain;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 533
    :sswitch_b
    invoke-static {v2}, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->getShortcutVisibility(Landroid/content/Context;)Z

    move-result v1

    .line 534
    .local v1, bShortcutEnabled:Z
    const v12, 0x7f0b0040

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 535
    .local v9, shortcutEnabledCheckBox:Landroid/widget/CheckBox;
    const-string v12, "common_checkbox"

    const v13, 0x2080012

    invoke-static {v2, v12, v13}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 536
    .local v3, drawableID:I
    invoke-virtual {v9, v3}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 537
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 538
    if-nez v1, :cond_1

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v9, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 540
    new-instance v12, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener$1;-><init>(Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;Landroid/content/Context;)V

    invoke-virtual {v9, v12}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    .line 538
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 395
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x68 -> :sswitch_b
        0x6a -> :sswitch_3
        0x190 -> :sswitch_6
        0x191 -> :sswitch_9
        0x192 -> :sswitch_7
        0x193 -> :sswitch_8
        0x194 -> :sswitch_a
    .end sparse-switch
.end method
