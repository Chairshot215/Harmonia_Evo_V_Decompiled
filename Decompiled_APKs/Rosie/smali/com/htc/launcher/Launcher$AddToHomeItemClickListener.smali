.class Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/htc/launcher/AddWidgetLayout$OnAddWidgetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddToHomeItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 5503
    iput-object p1, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5503
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;-><init>(Lcom/htc/launcher/Launcher;)V

    return-void
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 5506
    iget-object v0, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->unlock()V

    .line 5507
    return-void
.end method

.method private handleError(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "exception"

    .prologue
    const/4 v3, 0x0

    .line 5679
    iget-object v0, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z
    invoke-static {v0, v3}, Lcom/htc/launcher/Launcher;->access$5102(Lcom/htc/launcher/Launcher;Z)Z

    .line 5680
    const-string v0, "Rosie"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5681
    iget-object v0, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const v2, 0x7f0b0031

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5684
    return-void
.end method

.method private pickAllFxWidget()V
    .locals 7

    .prologue
    .line 5665
    const-string v1, "com.htc.AddProgramWidget"

    .line 5666
    .local v1, PKG:Ljava/lang/String;
    const-string v0, ".fusionwidget.StyleChooser"

    .line 5668
    .local v0, CLASS:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 5669
    .local v3, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.htc.AddProgramWidget"

    const-string v6, "com.htc.AddProgramWidget.fusionwidget.StyleChooser"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5671
    :try_start_0
    iget-object v4, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/16 v5, 0xc

    invoke-virtual {v4, v3, v5}, Lcom/htc/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5675
    :goto_0
    iget-object v4, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v5, 0x1

    #setter for: Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z
    invoke-static {v4, v5}, Lcom/htc/launcher/Launcher;->access$5102(Lcom/htc/launcher/Launcher;Z)Z

    .line 5676
    return-void

    .line 5672
    :catch_0
    move-exception v2

    .line 5673
    .local v2, ex:Ljava/lang/Throwable;
    invoke-direct {p0, v2}, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->handleError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private pickFxWidget(Lcom/htc/launcher/AddAdapter$ListItem;)V
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    .line 5648
    const-string v1, "com.htc.AddProgramWidget"

    .line 5649
    .local v1, PKG:Ljava/lang/String;
    const-string v0, ".fusionwidget.StyleChooser"

    .line 5651
    .local v0, CLASS:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 5652
    .local v3, intent:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.htc.AddProgramWidget"

    const-string v7, "com.htc.AddProgramWidget.fusionwidget.StyleChooser"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5653
    new-array v4, v8, [Landroid/content/ComponentName;

    .line 5654
    .local v4, p:[Landroid/content/ComponentName;
    const/4 v5, 0x0

    iget-object v6, p1, Lcom/htc/launcher/AddAdapter$ListItem;->mComponent:Landroid/content/ComponentName;

    aput-object v6, v4, v5

    .line 5656
    :try_start_0
    const-string v5, "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5657
    iget-object v5, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/16 v6, 0xc

    invoke-virtual {v5, v3, v6}, Lcom/htc/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5661
    :goto_0
    iget-object v5, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z
    invoke-static {v5, v8}, Lcom/htc/launcher/Launcher;->access$5102(Lcom/htc/launcher/Launcher;Z)Z

    .line 5662
    return-void

    .line 5658
    :catch_0
    move-exception v2

    .line 5659
    .local v2, ex:Ljava/lang/Throwable;
    invoke-direct {p0, v2}, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->handleError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private pickWidget(Lcom/htc/launcher/AddAdapter$ListItem;)V
    .locals 5
    .parameter "item"

    .prologue
    const/16 v4, 0x9

    .line 5623
    :try_start_0
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "Rosie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher: AddList onItemClick() item.widgetItem.isGroupItem() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    invoke-virtual {v3}, Lcom/htc/launcher/WidgetItem;->isGroupItem()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5626
    :cond_0
    iget-object v1, p1, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    invoke-virtual {v1}, Lcom/htc/launcher/WidgetItem;->isGroupItem()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5627
    iget-object v1, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v2, 0x1

    #setter for: Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z
    invoke-static {v1, v2}, Lcom/htc/launcher/Launcher;->access$5102(Lcom/htc/launcher/Launcher;Z)Z

    .line 5628
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v4, :cond_1

    .line 5629
    iget-object v1, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, p1, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    iget v2, v2, Lcom/htc/launcher/WidgetItem;->mItemType:I

    invoke-static {v1, v2}, Lcom/htc/launcher/WidgetItem;->startWidgetPicker(Lcom/htc/launcher/Launcher;I)V

    .line 5645
    :goto_0
    return-void

    .line 5631
    :cond_1
    iget-object v1, p1, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    iget-object v2, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/htc/launcher/WidgetItem;->startVariationOptionActivity(Lcom/htc/launcher/Launcher;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5642
    :catch_0
    move-exception v0

    .line 5643
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->handleError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5634
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v4, :cond_3

    .line 5635
    iget-object v1, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v2, 0x1

    #setter for: Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z
    invoke-static {v1, v2}, Lcom/htc/launcher/Launcher;->access$5102(Lcom/htc/launcher/Launcher;Z)Z

    .line 5636
    iget-object v1, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, p1, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    iget v2, v2, Lcom/htc/launcher/WidgetItem;->mItemType:I

    invoke-static {v1, v2}, Lcom/htc/launcher/WidgetItem;->startWidgetPicker(Lcom/htc/launcher/Launcher;I)V

    goto :goto_0

    .line 5638
    :cond_3
    iget-object v1, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v2, p1, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    invoke-virtual {v2}, Lcom/htc/launcher/WidgetItem;->newWidget()Lcom/htc/launcher/WidgetProxy;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v4}, Lcom/htc/launcher/Launcher;->access$3200(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/CellInfo;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/launcher/DesktopItemController;->addWidget(Lcom/htc/launcher/Widget;Landroid/content/Intent;Lcom/htc/launcher/CellInfo;)V

    .line 5639
    iget-object v1, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v2, 0x0

    #calls: Lcom/htc/launcher/Launcher;->closeDrawer(Z)V
    invoke-static {v1, v2}, Lcom/htc/launcher/Launcher;->access$5200(Lcom/htc/launcher/Launcher;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 12
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
    .line 5514
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-direct {p0}, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->cleanup()V

    .line 5515
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 5516
    .local v7, tag:Ljava/lang/Object;
    instance-of v8, v7, Lcom/htc/launcher/AddAdapter$ListItem;

    if-eqz v8, :cond_0

    move-object v2, v7

    .line 5517
    check-cast v2, Lcom/htc/launcher/AddAdapter$ListItem;

    .line 5518
    .local v2, item:Lcom/htc/launcher/AddAdapter$ListItem;
    iget v8, v2, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    sparse-switch v8, :sswitch_data_0

    .line 5619
    .end local v2           #item:Lcom/htc/launcher/AddAdapter$ListItem;
    :cond_0
    :goto_0
    return-void

    .line 5520
    .restart local v2       #item:Lcom/htc/launcher/AddAdapter$ListItem;
    :sswitch_0
    iget-object v8, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v8, v8, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v8}, Lcom/htc/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 5523
    .local v0, gadgetId:I
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.test.gadgetactivity"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5525
    .local v4, pickIntent:Landroid/content/Intent;
    const-string v8, "android.intent.extra.TITLE"

    iget-object v9, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const v10, 0x7f0b0015

    invoke-virtual {v9, v10}, Lcom/htc/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5527
    const-string v8, "appWidgetId"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5530
    iget-object v8, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/16 v9, 0x9

    invoke-virtual {v8, v4, v9}, Lcom/htc/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5535
    .end local v0           #gadgetId:I
    .end local v4           #pickIntent:Landroid/content/Intent;
    :sswitch_1
    invoke-static {}, Lcom/htc/launcher/Launcher;->addNewFolder()V

    goto :goto_0

    .line 5540
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->pickWidget(Lcom/htc/launcher/AddAdapter$ListItem;)V

    goto :goto_0

    .line 5544
    :sswitch_3
    invoke-direct {p0, v2}, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->pickFxWidget(Lcom/htc/launcher/AddAdapter$ListItem;)V

    goto :goto_0

    .line 5548
    :sswitch_4
    iget-object v8, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v9, 0x1

    #setter for: Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z
    invoke-static {v8, v9}, Lcom/htc/launcher/Launcher;->access$5102(Lcom/htc/launcher/Launcher;Z)Z

    .line 5549
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5550
    .local v1, intent:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.htc.wdm"

    const-string v10, "com.htc.wdm.activity.WidgetList"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5553
    iget-object v8, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v8, v1}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5558
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_5
    iget-object v8, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v9, 0x1

    #setter for: Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z
    invoke-static {v8, v9}, Lcom/htc/launcher/Launcher;->access$5102(Lcom/htc/launcher/Launcher;Z)Z

    .line 5560
    invoke-direct {p0}, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->pickAllFxWidget()V

    goto :goto_0

    .line 5565
    :sswitch_6
    iget-object v8, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v9, 0x1

    #setter for: Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z
    invoke-static {v8, v9}, Lcom/htc/launcher/Launcher;->access$5102(Lcom/htc/launcher/Launcher;Z)Z

    .line 5567
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5569
    .local v6, shortcutIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5570
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v8, v2, Lcom/htc/launcher/AddAdapter$ListItem;->packageName:Ljava/lang/String;

    iget-object v9, v2, Lcom/htc/launcher/AddAdapter$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5571
    iget-object v8, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v9, 0x7

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10, v1}, Lcom/htc/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 5577
    .end local v1           #intent:Landroid/content/Intent;
    .end local v6           #shortcutIntent:Landroid/content/Intent;
    :sswitch_7
    iget-object v8, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v9, 0x0

    #calls: Lcom/htc/launcher/Launcher;->closeDrawer(Z)V
    invoke-static {v8, v9}, Lcom/htc/launcher/Launcher;->access$5200(Lcom/htc/launcher/Launcher;Z)V

    .line 5578
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5579
    .local v3, mainIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5580
    move-object v1, v3

    .line 5581
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v8, v2, Lcom/htc/launcher/AddAdapter$ListItem;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5582
    iget-object v8, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v9, 0x6

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10, v1}, Lcom/htc/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 5589
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #mainIntent:Landroid/content/Intent;
    :sswitch_8
    iget-object v8, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v8, v8, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v8}, Lcom/htc/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 5592
    .restart local v0       #gadgetId:I
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 5593
    .local v5, result:Landroid/content/Intent;
    const-string v8, "appWidgetId"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5595
    iget-object v8, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v5}, Lcom/htc/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    .line 5599
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.test.gadgetactivity"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5601
    .restart local v4       #pickIntent:Landroid/content/Intent;
    const-string v8, "android.intent.extra.TITLE"

    iget-object v9, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const v10, 0x7f0b0015

    invoke-virtual {v9, v10}, Lcom/htc/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5603
    const-string v8, "appWidgetId"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5605
    const-string v8, "Excute"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5606
    const-string v8, "packagename"

    iget-object v9, v2, Lcom/htc/launcher/AddAdapter$ListItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5607
    const-string v8, "classname"

    iget-object v9, v2, Lcom/htc/launcher/AddAdapter$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5609
    iget-object v8, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/16 v9, 0x9

    invoke-virtual {v8, v4, v9}, Lcom/htc/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 5613
    .end local v0           #gadgetId:I
    .end local v4           #pickIntent:Landroid/content/Intent;
    .end local v5           #result:Landroid/content/Intent;
    :sswitch_9
    iget-object v8, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v9, 0x0

    #calls: Lcom/htc/launcher/Launcher;->closeDrawer(Z)V
    invoke-static {v8, v9}, Lcom/htc/launcher/Launcher;->access$5200(Lcom/htc/launcher/Launcher;Z)V

    .line 5614
    iget-object v8, p0, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/16 v9, 0xb

    const/4 v10, -0x1

    iget-object v11, v2, Lcom/htc/launcher/AddAdapter$ListItem;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 5518
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x6a -> :sswitch_3
        0x190 -> :sswitch_6
        0x191 -> :sswitch_8
        0x192 -> :sswitch_7
        0x194 -> :sswitch_9
    .end sparse-switch
.end method
