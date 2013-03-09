.class Lcom/htc/home/personalize/WallpaperPicker$1;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/WallpaperPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 527
    const-string v14, "TYPE"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 528
    .local v13, type:I
    const-string v14, "ACTION"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 529
    .local v1, action:I
    const-string v14, "GUID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 530
    .local v4, guid:Ljava/lang/String;
    const-string v14, "OLD_STATUS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 531
    .local v11, sOldStatus:Ljava/lang/String;
    const-string v14, "NEW_STATUS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 533
    .local v10, sNewStatus:Ljava/lang/String;
    if-nez v10, :cond_3

    const/4 v8, 0x0

    .line 534
    .local v8, newStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :goto_0
    if-nez v11, :cond_4

    const/4 v9, 0x0

    .line 536
    .local v9, oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :goto_1
    sget-object v14, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v14, v8, :cond_5

    sget-object v14, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v14, v9, :cond_5

    const/4 v14, 0x2

    if-ne v14, v13, :cond_5

    .line 539
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-static {v14, v15}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v7

    .line 540
    .local v7, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    invoke-virtual {v7, v4}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v6

    .line 541
    .local v6, info:Lcom/htc/home/personalize/abstractresource/Resource;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-virtual {v14}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 542
    .local v2, conf:Landroid/content/res/Configuration;
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 543
    .local v5, icon:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    sget-object v12, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 544
    .local v12, thumb:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    const/4 v14, 0x2

    iget v15, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v14, v15, :cond_0

    .line 545
    sget-object v12, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 547
    :cond_0
    new-instance v3, Lcom/htc/home/personalize/config/WallpaperData;

    invoke-direct {v3}, Lcom/htc/home/personalize/config/WallpaperData;-><init>()V

    .line 548
    .local v3, data:Lcom/htc/home/personalize/config/WallpaperData;
    invoke-virtual {v6, v5}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/htc/home/personalize/config/WallpaperData;->thumb:Ljava/lang/String;

    .line 549
    invoke-virtual {v6, v12}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/htc/home/personalize/config/WallpaperData;->preview:Ljava/lang/String;

    .line 550
    invoke-virtual {v6}, Lcom/htc/home/personalize/localresource/LocalResource;->getResourcePath()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/htc/home/personalize/config/WallpaperData;->image:Ljava/lang/String;

    .line 551
    iput-object v6, v3, Lcom/htc/home/personalize/config/WallpaperData;->obj:Ljava/lang/Object;

    .line 552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;
    invoke-static {v14}, Lcom/htc/home/personalize/WallpaperPicker;->access$100(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/config/GalleryData;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/htc/home/personalize/config/GalleryData;->insert(Lcom/htc/home/personalize/config/WallpaperData;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;
    invoke-static {v14}, Lcom/htc/home/personalize/WallpaperPicker;->access$200(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/WallpaperLoader;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 554
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;
    invoke-static {v14}, Lcom/htc/home/personalize/WallpaperPicker;->access$200(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/WallpaperLoader;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/home/personalize/WallpaperLoader;->reset()V

    .line 555
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;
    invoke-static {v14}, Lcom/htc/home/personalize/WallpaperPicker;->access$200(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/WallpaperLoader;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I
    invoke-static {v15}, Lcom/htc/home/personalize/WallpaperPicker;->access$300(Lcom/htc/home/personalize/WallpaperPicker;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/htc/home/personalize/WallpaperLoader;->setPosition(I)V

    .line 559
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    new-instance v15, Lcom/htc/home/personalize/WallpaperPicker$1$1;

    invoke-direct/range {v15 .. v16}, Lcom/htc/home/personalize/WallpaperPicker$1$1;-><init>(Lcom/htc/home/personalize/WallpaperPicker$1;)V

    invoke-virtual {v14, v15}, Lcom/htc/home/personalize/WallpaperPicker;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 611
    .end local v2           #conf:Landroid/content/res/Configuration;
    .end local v3           #data:Lcom/htc/home/personalize/config/WallpaperData;
    .end local v5           #icon:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .end local v6           #info:Lcom/htc/home/personalize/abstractresource/Resource;
    .end local v7           #list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    .end local v12           #thumb:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :cond_2
    :goto_2
    return-void

    .line 533
    .end local v8           #newStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .end local v9           #oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :cond_3
    invoke-static {v10}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->valueOf(Ljava/lang/String;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v8

    goto/16 :goto_0

    .line 534
    .restart local v8       #newStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :cond_4
    invoke-static {v11}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->valueOf(Ljava/lang/String;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v9

    goto/16 :goto_1

    .line 581
    .restart local v9       #oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :cond_5
    sget-object v14, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v14, v9, :cond_6

    const/4 v14, 0x2

    if-eq v14, v13, :cond_2

    .line 585
    :cond_6
    const/16 v14, 0xe

    if-ne v1, v14, :cond_2

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 587
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #calls: Lcom/htc/home/personalize/WallpaperPicker;->loadNetworkWallpapers()V
    invoke-static {v14}, Lcom/htc/home/personalize/WallpaperPicker;->access$900(Lcom/htc/home/personalize/WallpaperPicker;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;
    invoke-static {v14}, Lcom/htc/home/personalize/WallpaperPicker;->access$200(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/WallpaperLoader;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;
    invoke-static {v14}, Lcom/htc/home/personalize/WallpaperPicker;->access$200(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/WallpaperLoader;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/home/personalize/WallpaperLoader;->reset()V

    .line 590
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mWallpaperLoader:Lcom/htc/home/personalize/WallpaperLoader;
    invoke-static {v14}, Lcom/htc/home/personalize/WallpaperPicker;->access$200(Lcom/htc/home/personalize/WallpaperPicker;)Lcom/htc/home/personalize/WallpaperLoader;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #getter for: Lcom/htc/home/personalize/WallpaperPicker;->mSelectedPosition:I
    invoke-static {v15}, Lcom/htc/home/personalize/WallpaperPicker;->access$300(Lcom/htc/home/personalize/WallpaperPicker;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/htc/home/personalize/WallpaperLoader;->setPosition(I)V

    .line 592
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/WallpaperPicker$1;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    new-instance v15, Lcom/htc/home/personalize/WallpaperPicker$1$2;

    invoke-direct/range {v15 .. v16}, Lcom/htc/home/personalize/WallpaperPicker$1$2;-><init>(Lcom/htc/home/personalize/WallpaperPicker$1;)V

    invoke-virtual {v14, v15}, Lcom/htc/home/personalize/WallpaperPicker;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
