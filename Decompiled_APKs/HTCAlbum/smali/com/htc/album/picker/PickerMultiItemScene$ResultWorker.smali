.class Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;
.super Ljava/lang/Thread;
.source "PickerMultiItemScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerMultiItemScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultWorker"
.end annotation


# instance fields
.field mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field mCallerIntent:Landroid/content/Intent;

.field mConversionIntent:Landroid/content/Intent;

.field mStop:Z

.field final synthetic this$0:Lcom/htc/album/picker/PickerMultiItemScene;


# direct methods
.method public constructor <init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "adapter"
    .parameter "callerIntent"

    .prologue
    const/4 v1, 0x0

    .line 566
    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 562
    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    .line 567
    iput-object p2, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 568
    iput-object p3, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mCallerIntent:Landroid/content/Intent;

    .line 569
    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    .line 570
    return-void
.end method


# virtual methods
.method public getConversionIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public run()V
    .locals 26

    .prologue
    .line 578
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v22

    const-string v23, "[ResultWorker][run] ++"

    invoke-static/range {v22 .. v23}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    const/16 v23, 0x2b11

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/htc/album/picker/PickerMultiItemScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 580
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 582
    .local v4, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    const/16 v16, 0x1

    .line 583
    .local v16, request3DList:Z
    if-eqz v16, :cond_3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v9, list3DIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    if-eqz v16, :cond_4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v10, list3DPhoto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mCallerIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mCallerIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string v23, "request_htc_upload_list"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 588
    .local v17, requestHtcUploadList:Z
    :goto_2
    if-eqz v17, :cond_6

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v12, listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerList:Ljava/util/ArrayList;

    .line 591
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 593
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 595
    .local v21, totalItems:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v11, listAndroid:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v6, 0x0

    .local v6, flag:I
    const/4 v2, 0x1

    .local v2, FLAG_IMAGE:I
    const/4 v3, 0x2

    .line 598
    .local v3, FLAG_VIDEO:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 600
    .local v15, pos:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 641
    .end local v15           #pos:Ljava/lang/Integer;
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    .line 643
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v22

    const-string v23, "[ResultWorker][run] Load completed!!"

    invoke-static/range {v22 .. v23}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    #setter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v23}, Lcom/htc/album/picker/PickerMultiItemScene;->access$502(Lcom/htc/album/picker/PickerMultiItemScene;Landroid/content/Intent;)Landroid/content/Intent;

    .line 645
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    .line 646
    if-eqz v16, :cond_2

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "3d_image_index_list"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string v23, "android.intent.extra.STREAM"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 652
    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 653
    .local v14, pickerIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "picker_index_list"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "android.intent.extra.STREAM"

    if-eqz v17, :cond_b

    .end local v12           #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_6
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 656
    if-ne v6, v2, :cond_c

    const-string v20, "image/*"

    .line 659
    .local v20, strType:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    .end local v14           #pickerIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20           #strType:Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    const/16 v23, 0x2b12

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/htc/album/picker/PickerMultiItemScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    const/16 v23, 0x2b10

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/htc/album/picker/PickerMultiItemScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 668
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v22

    const-string v23, "[ResultWorker][run] --"

    invoke-static/range {v22 .. v23}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    return-void

    .line 583
    .end local v2           #FLAG_IMAGE:I
    .end local v3           #FLAG_VIDEO:I
    .end local v6           #flag:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9           #list3DIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10           #list3DPhoto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v11           #listAndroid:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v17           #requestHtcUploadList:Z
    .end local v21           #totalItems:I
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 584
    .restart local v9       #list3DIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 586
    .restart local v10       #list3DPhoto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 588
    .restart local v17       #requestHtcUploadList:Z
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 603
    .restart local v2       #FLAG_IMAGE:I
    .restart local v3       #FLAG_VIDEO:I
    .restart local v6       #flag:I
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11       #listAndroid:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v12       #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v15       #pos:Ljava/lang/Integer;
    .restart local v21       #totalItems:I
    :cond_7
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 605
    .local v18, selectedItem:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v18, :cond_0

    .line 611
    :try_start_0
    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v19

    .line 612
    .local v19, selectedUri:Landroid/net/Uri;
    if-eqz v16, :cond_8

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v22

    if-nez v22, :cond_8

    .line 614
    new-instance v22, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_8
    if-eqz v17, :cond_9

    .line 620
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 621
    .local v5, data:Landroid/os/Bundle;
    const-string v22, "com.htc.opensense.upload.URI"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v22, "com.htc.opensense.upload.MIMETYPE"

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v22, "com.htc.opensense.upload.TITLE"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v22, "com.htc.opensense.upload.DESCRIPTION"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    .end local v5           #data:Landroid/os/Bundle;
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    if-eqz v22, :cond_a

    move/from16 v22, v3

    :goto_9
    or-int v6, v6, v22

    goto/16 :goto_4

    :cond_a
    move/from16 v22, v2

    goto :goto_9

    .line 632
    .end local v19           #selectedUri:Landroid/net/Uri;
    :catch_0
    move-exception v13

    .line 635
    .local v13, oom:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[ResultWorker][run] Error: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    goto/16 :goto_5

    .end local v13           #oom:Ljava/lang/OutOfMemoryError;
    .end local v15           #pos:Ljava/lang/Integer;
    .end local v18           #selectedItem:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v14       #pickerIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_b
    move-object v12, v11

    .line 654
    goto/16 :goto_6

    .line 656
    .end local v12           #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_c
    if-ne v6, v3, :cond_d

    const-string v20, "video/*"

    goto/16 :goto_7

    :cond_d
    const-string v20, "*/*"

    goto/16 :goto_7

    .line 663
    .end local v14           #pickerIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12       #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_e
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v22

    const-string v23, "[ResultWorker][run] Loading canceled!!"

    invoke-static/range {v22 .. v23}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    .line 679
    return-void
.end method
