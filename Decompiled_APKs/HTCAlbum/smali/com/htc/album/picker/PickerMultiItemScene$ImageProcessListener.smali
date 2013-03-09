.class Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;
.super Ljava/lang/Object;
.source "PickerMultiItemScene.java"

# interfaces
.implements Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerMultiItemScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/PickerMultiItemScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/picker/PickerMultiItemScene;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/picker/PickerMultiItemScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;-><init>(Lcom/htc/album/picker/PickerMultiItemScene;)V

    return-void
.end method

.method private sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "result"

    .prologue
    .line 536
    if-nez p1, :cond_0

    .line 554
    :goto_0
    return-void

    .line 539
    :cond_0
    new-instance v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;-><init>(Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public OnCancelPirorProcess()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public OnCancelProcessing()V
    .locals 2

    .prologue
    .line 530
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/picker/PickerMultiItemScene;->access$600(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 531
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 532
    return-void
.end method

.method public OnProcessBegin()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method public OnProcessEnd(Lcom/htc/album/processor/ImageProcessorManager;)V
    .locals 23
    .parameter "processorMgr"

    .prologue
    .line 434
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z
    invoke-static/range {v21 .. v21}, Lcom/htc/album/picker/PickerMultiItemScene;->access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static/range {v21 .. v21}, Lcom/htc/album/picker/PickerMultiItemScene;->access$400(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    .line 438
    .local v2, activity:Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 439
    .local v9, intentCaller:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResult()Landroid/content/Intent;

    move-result-object v17

    .line 440
    .local v17, result:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResultCode()I

    move-result v18

    .line 441
    .local v18, resultCode:I
    if-nez v18, :cond_a

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v21 .. v21}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "picker_index_list"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 444
    .local v14, listIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v21 .. v21}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "3d_image_index_list"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 445
    .local v11, list3DIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 446
    .local v20, sizeAll:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 447
    .local v19, size3D:I
    if-eqz v9, :cond_3

    const-string v21, "request_htc_upload_list"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 449
    .local v16, requestHtcUploadList:Z
    :goto_1
    if-eqz v16, :cond_6

    .line 451
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResult()Landroid/content/Intent;

    move-result-object v3

    .line 452
    .local v3, conversion:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v21 .. v21}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "android.intent.extra.STREAM"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 453
    .local v13, listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v21, "android.intent.extra.STREAM"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 454
    .local v12, listConverted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    move/from16 v0, v20

    if-ge v10, v0, :cond_5

    .line 456
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 457
    .local v7, index:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    move/from16 v0, v19

    if-ge v6, v0, :cond_2

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z
    invoke-static/range {v21 .. v21}, Lcom/htc/album/picker/PickerMultiItemScene;->access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 462
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 463
    .local v8, index3D:I
    if-ne v7, v8, :cond_4

    .line 465
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 466
    .local v4, convertedUri:Landroid/net/Uri;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 467
    .local v5, data:Landroid/os/Bundle;
    const-string v21, "com.htc.opensense.upload.URI"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v21, "com.htc.opensense.upload.MIMETYPE"

    const-string v22, "image/jpeg"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v21, "com.htc.opensense.upload.TITLE"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v21, "com.htc.opensense.upload.DESCRIPTION"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {v13, v10, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 454
    .end local v4           #convertedUri:Landroid/net/Uri;
    .end local v5           #data:Landroid/os/Bundle;
    .end local v8           #index3D:I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 447
    .end local v3           #conversion:Landroid/content/Intent;
    .end local v6           #i:I
    .end local v7           #index:I
    .end local v10           #j:I
    .end local v12           #listConverted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v13           #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v16           #requestHtcUploadList:Z
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 457
    .restart local v3       #conversion:Landroid/content/Intent;
    .restart local v6       #i:I
    .restart local v7       #index:I
    .restart local v8       #index3D:I
    .restart local v10       #j:I
    .restart local v12       #listConverted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v13       #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v16       #requestHtcUploadList:Z
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 476
    .end local v6           #i:I
    .end local v7           #index:I
    .end local v8           #index3D:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v21 .. v21}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "android.intent.extra.STREAM"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 502
    .end local v13           #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z
    invoke-static/range {v21 .. v21}, Lcom/htc/album/picker/PickerMultiItemScene;->access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v21 .. v21}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 480
    .end local v3           #conversion:Landroid/content/Intent;
    .end local v10           #j:I
    .end local v12           #listConverted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResult()Landroid/content/Intent;

    move-result-object v3

    .line 481
    .restart local v3       #conversion:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v21 .. v21}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "android.intent.extra.STREAM"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 482
    .local v15, listSelections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v21, "android.intent.extra.STREAM"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 483
    .restart local v12       #listConverted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v10, 0x0

    .restart local v10       #j:I
    :goto_5
    move/from16 v0, v20

    if-ge v10, v0, :cond_9

    .line 485
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 486
    .restart local v7       #index:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6
    move/from16 v0, v19

    if-ge v6, v0, :cond_7

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z
    invoke-static/range {v21 .. v21}, Lcom/htc/album/picker/PickerMultiItemScene;->access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 491
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 492
    .restart local v8       #index3D:I
    if-ne v7, v8, :cond_8

    .line 494
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 483
    .end local v8           #index3D:I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 486
    .restart local v8       #index3D:I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 499
    .end local v6           #i:I
    .end local v7           #index:I
    .end local v8           #index3D:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v21 .. v21}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v21

    const-string v22, "android.intent.extra.STREAM"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 507
    .end local v3           #conversion:Landroid/content/Intent;
    .end local v10           #j:I
    .end local v11           #list3DIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12           #listConverted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v14           #listIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15           #listSelections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v16           #requestHtcUploadList:Z
    .end local v19           #size3D:I
    .end local v20           #sizeAll:I
    :cond_a
    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v21 .. v21}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
