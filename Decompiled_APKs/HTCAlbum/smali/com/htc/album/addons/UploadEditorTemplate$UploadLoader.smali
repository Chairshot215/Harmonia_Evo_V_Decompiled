.class Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;
.super Ljava/lang/Thread;
.source "UploadEditorTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/UploadEditorTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadLoader"
.end annotation


# instance fields
.field private mLock:Ljava/lang/Object;

.field private mStop:Z

.field final synthetic this$0:Lcom/htc/album/addons/UploadEditorTemplate;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/UploadEditorTemplate;)V
    .locals 1
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->mStop:Z

    .line 398
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->mLock:Ljava/lang/Object;

    .line 207
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->mStop:Z

    .line 395
    return-void
.end method

.method public run()V
    .locals 36

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mHandler:Landroid/os/Handler;
    invoke-static/range {v33 .. v33}, Lcom/htc/album/addons/UploadEditorTemplate;->access$100(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/os/Handler;

    move-result-object v33

    const/16 v34, 0x30

    invoke-virtual/range {v33 .. v34}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 216
    sget-object v18, Lcom/htc/opensense2/album/AlbumCommon/Constants;->temp:Ljava/util/ArrayList;

    .line 218
    .local v18, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    if-eqz v18, :cond_3

    .line 220
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v31, uploadData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v12, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->mStop:Z

    move/from16 v33, v0

    if-nez v33, :cond_2

    .line 225
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 226
    .local v32, uploadImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface/range {v32 .. v32}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, dataPath:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 228
    invoke-interface/range {v32 .. v32}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    .line 230
    .local v11, fileName:Ljava/lang/String;
    const/16 v33, 0x2e

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 231
    .local v7, dotIdx:I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v7, v0, :cond_0

    .line 232
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v11, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 234
    :cond_0
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v30, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v3, aBundle:Landroid/os/Bundle;
    const-string v33, "uri"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-interface/range {v32 .. v32}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v20

    .line 239
    .local v20, mimeType:Ljava/lang/String;
    const-string v33, "mimeType"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v33, "title"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v33, "description"

    const-string v34, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v33, "uri"

    invoke-interface/range {v32 .. v32}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 243
    const-string v33, "clear_top5_frined_list"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string v33, "tags"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;
    invoke-static/range {v33 .. v33}, Lcom/htc/album/addons/UploadEditorTemplate;->access$200(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0b0056

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 253
    .local v25, strTagInitDescription:Ljava/lang/String;
    const-string v33, "tags_description"

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v3           #aBundle:Landroid/os/Bundle;
    .end local v7           #dotIdx:I
    .end local v11           #fileName:Ljava/lang/String;
    .end local v20           #mimeType:Ljava/lang/String;
    .end local v25           #strTagInitDescription:Ljava/lang/String;
    .end local v30           #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 263
    .end local v6           #dataPath:Ljava/lang/String;
    .end local v32           #uploadImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v34}, Lcom/htc/album/addons/UploadEditorTemplate;->access$402(Lcom/htc/album/addons/UploadEditorTemplate;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/htc/album/addons/UploadEditorTemplate;->access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 271
    .end local v12           #i:I
    .end local v31           #uploadData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/htc/album/addons/UploadEditorTemplate;->access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;

    move-result-object v33

    if-eqz v33, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/htc/album/addons/UploadEditorTemplate;->access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_12

    .line 274
    :try_start_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 275
    .local v19, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v29

    .line 277
    .local v29, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;
    invoke-static/range {v33 .. v33}, Lcom/htc/album/addons/UploadEditorTemplate;->access$500(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 278
    .local v17, intent:Landroid/content/Intent;
    if-nez v17, :cond_4

    .line 280
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v33

    const-string v34, "[HTCAlbum][LocalFilmstripviewTemplate][UploadLoader]: intent get NG !"

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mHandler:Landroid/os/Handler;
    invoke-static/range {v33 .. v33}, Lcom/htc/album/addons/UploadEditorTemplate;->access$100(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/os/Handler;

    move-result-object v33

    const/16 v34, 0x40

    invoke-virtual/range {v33 .. v34}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    .end local v17           #intent:Landroid/content/Intent;
    .end local v19           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v29           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_2
    return-void

    .line 260
    .restart local v12       #i:I
    .restart local v31       #uploadData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v8

    .line 261
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HTCAlbum][LocalFilmstripviewTemplate][UploadLoader]: init bundle NG ! ex: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v34}, Lcom/htc/album/addons/UploadEditorTemplate;->access$402(Lcom/htc/album/addons/UploadEditorTemplate;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/htc/album/addons/UploadEditorTemplate;->access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 263
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v34, v0

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static/range {v34 .. v35}, Lcom/htc/album/addons/UploadEditorTemplate;->access$402(Lcom/htc/album/addons/UploadEditorTemplate;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v34, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static/range {v34 .. v34}, Lcom/htc/album/addons/UploadEditorTemplate;->access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    throw v33

    .line 285
    .end local v12           #i:I
    .end local v31           #uploadData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v17       #intent:Landroid/content/Intent;
    .restart local v19       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v29       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_4
    :try_start_3
    const-string v33, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 287
    if-nez v19, :cond_6

    .line 289
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v33

    const-string v34, "[HTCAlbum][LocalFilmstripviewTemplate][UploadLoader]: mediaList is null!"

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 379
    .end local v17           #intent:Landroid/content/Intent;
    .end local v19           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v29           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :catch_1
    move-exception v8

    .line 381
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v33

    const-string v34, "[HTCAlbum][LocalFilmstripviewTemplate][UploadLoader]: UploadLoader init NG !"

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .end local v8           #e:Ljava/lang/Exception;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mHandler:Landroid/os/Handler;
    invoke-static/range {v33 .. v33}, Lcom/htc/album/addons/UploadEditorTemplate;->access$100(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/os/Handler;

    move-result-object v33

    const/16 v34, 0x50

    invoke-virtual/range {v33 .. v34}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mHandler:Landroid/os/Handler;
    invoke-static/range {v33 .. v33}, Lcom/htc/album/addons/UploadEditorTemplate;->access$100(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/os/Handler;

    move-result-object v33

    const/16 v34, 0x40

    invoke-virtual/range {v33 .. v34}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 293
    .restart local v17       #intent:Landroid/content/Intent;
    .restart local v19       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v29       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_6
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v34, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static/range {v34 .. v34}, Lcom/htc/album/addons/UploadEditorTemplate;->access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_7

    .line 295
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v33

    const-string v34, "[HTCAlbum][LocalFilmstripviewTemplate][UploadLoader]: Bundle photo information size is different with Current photo size !"

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_7
    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_c

    .line 303
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v33

    const-string v34, "[HTCAlbum][ActivityUploadEditor][onCreate]: Prepare launch from HtcMediaUpload."

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HTCAlbum][ActivityUploadEditor][onCreate]: Get mediaList Size : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v15, 0x0

    .local v15, index:I
    :goto_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v15, v0, :cond_c

    .line 308
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 309
    .local v4, bundleMedia:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/htc/album/addons/UploadEditorTemplate;->access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 311
    .local v5, bundlecurPhoto:Landroid/os/Bundle;
    if-eqz v4, :cond_8

    if-nez v5, :cond_9

    .line 306
    :cond_8
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 313
    :cond_9
    const-string v33, "com.htc.opensense.upload.TITLE"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 314
    .local v26, strTitle:Ljava/lang/String;
    const-string v33, "com.htc.opensense.upload.DESCRIPTION"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 316
    .local v23, strDescr:Ljava/lang/String;
    if-eqz v26, :cond_a

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_a

    .line 317
    const-string v33, "title"

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_a
    if-eqz v23, :cond_b

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_b

    .line 320
    const-string v33, "description"

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_b
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HTCAlbum][ActivityUploadEditor][onCreate]: mediaList["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "]:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HTCAlbum][ActivityUploadEditor][onCreate]: KEY_IMAGE_TITLE: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HTCAlbum][ActivityUploadEditor][onCreate]: KEY_IMAGE_DESCRIPTION: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 329
    .end local v4           #bundleMedia:Landroid/os/Bundle;
    .end local v5           #bundlecurPhoto:Landroid/os/Bundle;
    .end local v15           #index:I
    .end local v23           #strDescr:Ljava/lang/String;
    .end local v26           #strTitle:Ljava/lang/String;
    :cond_c
    const-string v33, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v29

    .line 330
    if-eqz v29, :cond_e

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_e

    .line 332
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HTCAlbum][ActivityUploadEditor][onCreate]: Get tagList Size : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_d
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    .line 336
    .local v15, index:Landroid/os/Bundle;
    if-eqz v15, :cond_d

    .line 338
    const-string v33, "com.htc.opensense.upload.REFERENCE"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 339
    .local v21, nReferenceID:I
    const-string v33, "com.htc.opensense.upload.USER_ID"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 340
    .local v27, strUserID:Ljava/lang/String;
    const-string v33, "tag_display_name"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 341
    .local v24, strTagDisName:Ljava/lang/String;
    const-string v33, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 342
    .local v9, fX:F
    const-string v33, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 344
    .local v10, fY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/htc/album/addons/UploadEditorTemplate;->access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 346
    .restart local v5       #bundlecurPhoto:Landroid/os/Bundle;
    const/16 v30, 0x0

    .line 347
    .restart local v30       #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    const-string v33, "tags"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v30

    .line 348
    new-instance v28, Lcom/htc/album/TagUtils/TagInfo;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v9, v10}, Lcom/htc/album/TagUtils/TagInfo;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    .line 349
    .local v28, tag:Lcom/htc/album/TagUtils/TagInfo;
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HTCAlbum][ActivityUploadEditor][onCreate]: Get Tag ["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "] : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " X: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " Y: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 357
    .end local v5           #bundlecurPhoto:Landroid/os/Bundle;
    .end local v9           #fX:F
    .end local v10           #fY:F
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #index:Landroid/os/Bundle;
    .end local v21           #nReferenceID:I
    .end local v24           #strTagDisName:Ljava/lang/String;
    .end local v27           #strUserID:Ljava/lang/String;
    .end local v28           #tag:Lcom/htc/album/TagUtils/TagInfo;
    .end local v30           #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/htc/album/addons/UploadEditorTemplate;->access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_f
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 359
    .local v16, indexBundle:Landroid/os/Bundle;
    if-eqz v16, :cond_f

    .line 361
    const/16 v30, 0x0

    .line 362
    .restart local v30       #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    const-string v33, "tags"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v30

    .line 364
    if-eqz v30, :cond_f

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_f

    .line 366
    const-string v22, ""

    .line 368
    .local v22, strBtnTag:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/album/TagUtils/TagInfo;

    .line 369
    .local v15, index:Lcom/htc/album/TagUtils/TagInfo;
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v33

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_10

    .line 370
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v15, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_8

    .line 372
    :cond_10
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v15, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_8

    .line 375
    .end local v15           #index:Lcom/htc/album/TagUtils/TagInfo;
    :cond_11
    const-string v33, "tags_description"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_7

    .line 385
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #indexBundle:Landroid/os/Bundle;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v19           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v22           #strBtnTag:Ljava/lang/String;
    .end local v29           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v30           #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    :cond_12
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v33

    const-string v34, "[HTCAlbum][LocalFilmstripviewTemplate][UploadLoader]: mBundleArrayList init NG !"

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
