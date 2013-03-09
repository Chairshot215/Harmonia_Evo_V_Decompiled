.class Lcom/htc/launcher/DesktopItemController$7;
.super Ljava/lang/Object;
.source "DesktopItemController.java"

# interfaces
.implements Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/DesktopItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DesktopItemController;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DesktopItemController;)V
    .locals 0
    .parameter

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$7;->this$0:Lcom/htc/launcher/DesktopItemController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/htc/launcher/FxItem;)V
    .locals 17
    .parameter "shortcut"

    .prologue
    .line 1373
    invoke-virtual/range {p1 .. p1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v11

    .local v11, itemInfo:Lcom/htc/launcher/ItemInfo;
    move-object v2, v11

    .line 1374
    check-cast v2, Lcom/htc/launcher/ApplicationInfo;

    iget-object v10, v2, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    .line 1375
    .local v10, intent:Landroid/content/Intent;
    if-eqz v10, :cond_5

    .line 1376
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 1377
    .local v8, cmp:Landroid/content/ComponentName;
    if-eqz v8, :cond_0

    const-string v2, "com.htc.searchanywhere/.SearchActivity"

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1380
    const-string v2, "launch_flag"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1388
    :cond_0
    const/4 v14, 0x0

    .line 1390
    .local v14, rect:Landroid/graphics/Rect;
    iget-wide v2, v11, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/DesktopItemController$7;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v2}, Lcom/htc/launcher/DesktopItemController;->access$200(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getFuntionBarRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 1393
    .local v9, functionBarRect:Landroid/graphics/Rect;
    if-eqz v9, :cond_1

    .line 1394
    iget v2, v11, Lcom/htc/launcher/ItemInfo;->cellX:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    iget v2, v11, Lcom/htc/launcher/ItemInfo;->cellX:I

    add-int/lit8 v16, v2, 0x1

    .line 1395
    .local v16, x:I
    :goto_0
    iget v2, v9, Landroid/graphics/Rect;->right:I

    iget v3, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v7, v2, 0x5

    .line 1396
    .local v7, buttonWidth:I
    mul-int v12, v7, v16

    .line 1397
    .local v12, left:I
    add-int/lit8 v2, v16, 0x1

    mul-int v15, v7, v2

    .line 1398
    .local v15, right:I
    new-instance v14, Landroid/graphics/Rect;

    .end local v14           #rect:Landroid/graphics/Rect;
    iget v2, v9, Landroid/graphics/Rect;->top:I

    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v14, v12, v2, v15, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1404
    .end local v7           #buttonWidth:I
    .end local v9           #functionBarRect:Landroid/graphics/Rect;
    .end local v12           #left:I
    .end local v15           #right:I
    .end local v16           #x:I
    .restart local v14       #rect:Landroid/graphics/Rect;
    :cond_1
    if-nez v14, :cond_3

    .line 1405
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 1406
    .local v6, rectF:Landroid/graphics/RectF;
    new-instance v14, Landroid/graphics/Rect;

    .end local v14           #rect:Landroid/graphics/Rect;
    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 1407
    .restart local v14       #rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/DesktopItemController$7;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;
    invoke-static {v2}, Lcom/htc/launcher/DesktopItemController;->access$400(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getCurrentScreen()Lcom/htc/launcher/Workspace$Screen;

    move-result-object v1

    .line 1408
    .local v1, currentScreen:Lcom/htc/launcher/Workspace$Screen;
    if-eqz v1, :cond_2

    .line 1409
    iget v2, v11, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v3, v11, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v4, v11, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v5, v11, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-interface/range {v1 .. v6}, Lcom/htc/launcher/Workspace$Screen;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 1410
    :cond_2
    invoke-virtual {v6, v14}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1420
    .end local v1           #currentScreen:Lcom/htc/launcher/Workspace$Screen;
    .end local v6           #rectF:Landroid/graphics/RectF;
    :cond_3
    invoke-static {}, Lcom/htc/launcher/DesktopItemController;->access$300()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "DesktopItemController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent rect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_4
    invoke-virtual {v10, v14}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/DesktopItemController$7;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v2}, Lcom/htc/launcher/DesktopItemController;->access$200(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Launcher;

    move-result-object v2

    const-string v3, " RS_program_icon"

    iput-object v3, v2, Lcom/htc/launcher/Launcher;->launchAppType:Ljava/lang/String;

    .line 1431
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 1432
    .local v13, msg:Landroid/os/Message;
    const/16 v2, 0x3f1

    iput v2, v13, Landroid/os/Message;->what:I

    .line 1433
    iput-object v10, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/DesktopItemController$7;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v2}, Lcom/htc/launcher/DesktopItemController;->access$200(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Launcher;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1436
    .end local v8           #cmp:Landroid/content/ComponentName;
    .end local v13           #msg:Landroid/os/Message;
    .end local v14           #rect:Landroid/graphics/Rect;
    :cond_5
    return-void

    .line 1394
    .restart local v8       #cmp:Landroid/content/ComponentName;
    .restart local v9       #functionBarRect:Landroid/graphics/Rect;
    .restart local v14       #rect:Landroid/graphics/Rect;
    :cond_6
    iget v0, v11, Lcom/htc/launcher/ItemInfo;->cellX:I

    move/from16 v16, v0

    goto/16 :goto_0
.end method
