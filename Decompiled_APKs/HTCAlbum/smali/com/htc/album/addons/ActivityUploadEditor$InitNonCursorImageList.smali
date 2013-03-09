.class public Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;
.super Landroid/os/AsyncTask;
.source "ActivityUploadEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/ActivityUploadEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitNonCursorImageList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field protected mActivity:Lcom/htc/album/addons/ActivityUploadEditor;

.field protected mHandler:Landroid/os/Handler;

.field private mIsException:Z

.field final synthetic this$0:Lcom/htc/album/addons/ActivityUploadEditor;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/ActivityUploadEditor;Landroid/os/Handler;Lcom/htc/album/addons/ActivityUploadEditor;)V
    .locals 1
    .parameter
    .parameter "handler"
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 395
    iput-object p1, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 390
    iput-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mHandler:Landroid/os/Handler;

    .line 391
    iput-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mActivity:Lcom/htc/album/addons/ActivityUploadEditor;

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mIsException:Z

    .line 396
    iput-object p2, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mHandler:Landroid/os/Handler;

    .line 397
    iput-object p3, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mActivity:Lcom/htc/album/addons/ActivityUploadEditor;

    .line 398
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 23
    .parameter "params"

    .prologue
    .line 453
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: doInBackground +"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: Launch Service: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor;->mService:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v11, 0x0

    .line 458
    .local v11, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 460
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x270f

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 462
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[HTCAlbum][ActivityUploadEditor][onCreate]: Skip launch MediaUpload, uri list more than 9999"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mIsException:Z

    .line 464
    new-instance v19, Ljava/lang/Integer;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Integer;-><init>(I)V

    .line 663
    :goto_0
    return-object v19

    .line 469
    :cond_0
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_6

    .line 471
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[HTCAlbum][ActivityUploadEditor][onCreate]: Prepare launch from HtcMediaUpload."

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[HTCAlbum][ActivityUploadEditor][onCreate]: Get mediaList Size : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 478
    .local v7, index:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mIsException:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 480
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: exception on ! skip process !"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v19, Ljava/lang/Integer;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 484
    :cond_2
    if-eqz v7, :cond_1

    .line 486
    const-string v19, "com.htc.opensense.upload.URI"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 487
    .local v15, strURI:Ljava/lang/String;
    if-nez v15, :cond_3

    .line 489
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[HTCAlbum][ActivityUploadEditor][onCreate]: Can\'t get uri from bundle !"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 492
    :cond_3
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 493
    .local v18, uri:Landroid/net/Uri;
    if-eqz v15, :cond_1

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 496
    .end local v7           #index:Landroid/os/Bundle;
    .end local v15           #strURI:Ljava/lang/String;
    .end local v18           #uri:Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "android.intent.extra.STREAM"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 501
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v16

    .line 504
    .local v16, tt0:J
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 506
    .local v8, intentShare:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor;->mService:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/album/addons/ActivityUploadEditor;->getServicePKGName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 507
    .local v14, strPkgName:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v14, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .local v2, conpont:Landroid/content/ComponentName;
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "SHARE_INTENT"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 513
    new-instance v13, Landroid/content/pm/ResolveInfo;

    invoke-direct {v13}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 514
    .local v13, rinfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "SHARE_INFO"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "android.intent.extra.STREAM"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 518
    .restart local v9       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_7

    .line 520
    :cond_5
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: UriList is Null or Empty !"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mIsException:Z

    .line 522
    new-instance v19, Ljava/lang/Integer;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    .line 499
    .end local v2           #conpont:Landroid/content/ComponentName;
    .end local v8           #intentShare:Landroid/content/Intent;
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v13           #rinfo:Landroid/content/pm/ResolveInfo;
    .end local v14           #strPkgName:Ljava/lang/String;
    .end local v16           #tt0:J
    :cond_6
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[HTCAlbum][ActivityUploadEditor][onCreate]: init from Bundle NG !"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 524
    .restart local v2       #conpont:Landroid/content/ComponentName;
    .restart local v8       #intentShare:Landroid/content/Intent;
    .restart local v9       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v13       #rinfo:Landroid/content/pm/ResolveInfo;
    .restart local v14       #strPkgName:Ljava/lang/String;
    .restart local v16       #tt0:J
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 526
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_8

    .line 528
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mIsException:Z

    .line 529
    new-instance v19, Ljava/lang/Integer;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    .line 532
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "singleShare"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 535
    new-instance v19, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->temp:Ljava/util/ArrayList;

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/album/addons/ActivityUploadEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 541
    .local v10, mContentResolver:Landroid/content/ContentResolver;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mActivity:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListfromUri(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/album/addons/ActivityUploadEditor;->mShareImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor;->mShareImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor;->mShareImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v19

    if-nez v19, :cond_a

    .line 545
    :cond_9
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: mList or mList.getImageAt(0) is null !"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mIsException:Z

    .line 547
    new-instance v19, Ljava/lang/Integer;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 552
    :catch_0
    move-exception v3

    .line 553
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 554
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: translate IImageList NG1 !"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mIsException:Z

    .line 556
    new-instance v19, Ljava/lang/Integer;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    .line 550
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_a
    :try_start_1
    sget-object v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->temp:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor;->mShareImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    :cond_b
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: imagelist prepare time: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v16

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: doInBackground -"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v21, "SHARE_INTENT"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/content/Intent;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/album/addons/ActivityUploadEditor;->mIntentShare:Landroid/content/Intent;

    .line 663
    new-instance v19, Ljava/lang/Integer;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    .line 561
    .end local v10           #mContentResolver:Landroid/content/ContentResolver;
    :cond_c
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v20

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: UriList: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-nez v9, :cond_e

    const-string v19, "list is null"

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    sput-object v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->temp:Ljava/util/ArrayList;

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/album/addons/ActivityUploadEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 569
    .restart local v10       #mContentResolver:Landroid/content/ContentResolver;
    :try_start_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_d
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 571
    .local v7, index:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mIsException:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 573
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: exception on ! skip process !"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    new-instance v19, Ljava/lang/Integer;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Integer;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 644
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #index:Landroid/net/Uri;
    :catch_1
    move-exception v3

    .line 646
    .restart local v3       #ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 647
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: translate IImageList NG1 !"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mIsException:Z

    .line 649
    new-instance v19, Ljava/lang/Integer;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    .line 561
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v10           #mContentResolver:Landroid/content/ContentResolver;
    :cond_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    goto :goto_3

    .line 577
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #index:Landroid/net/Uri;
    .restart local v10       #mContentResolver:Landroid/content/ContentResolver;
    :cond_f
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mActivity:Lcom/htc/album/addons/ActivityUploadEditor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v7, v0, v10}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListfromUri(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v6

    .line 579
    .local v6, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v6, :cond_10

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v6, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v19

    if-nez v19, :cond_11

    .line 581
    :cond_10
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: mList or mList.getImageAt(0) is null !"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 585
    :cond_11
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v6, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v5

    .line 586
    .local v5, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v5, :cond_d

    .line 588
    const/4 v12, 0x0

    .line 589
    .local v12, norCursorItem:Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 590
    new-instance v12, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorVideo;

    .end local v12           #norCursorItem:Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
    invoke-static {}, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->instance()Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorVideo;-><init>(Lcom/htc/album/AlbumUtility/NonCursorImageManager;)V

    .line 594
    .restart local v12       #norCursorItem:Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
    :goto_5
    invoke-virtual {v12, v5}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->init(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v19

    if-nez v19, :cond_13

    .line 596
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList][onCreate]: init norCursorItem - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Fail !!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :goto_6
    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    goto/16 :goto_4

    .line 592
    :cond_12
    new-instance v12, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorImage;

    .end local v12           #norCursorItem:Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
    invoke-static {}, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->instance()Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorImage;-><init>(Lcom/htc/album/AlbumUtility/NonCursorImageManager;)V

    .restart local v12       #norCursorItem:Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
    goto :goto_5

    .line 600
    :cond_13
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[HTCAlbum][ActivityUploadEditor][onCreate]: Add norCursorItem - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    sget-object v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->temp:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 636
    .end local v5           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v6           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v7           #index:Landroid/net/Uri;
    .end local v12           #norCursorItem:Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
    :cond_14
    sget-object v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->temp:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_b

    .line 638
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: make IImageList is 0 !"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mIsException:Z

    .line 640
    new-instance v19, Ljava/lang/Integer;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Integer;-><init>(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 388
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: onCancelled +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mIsException:Z

    .line 420
    iget-boolean v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mIsException:Z

    if-eqz v0, :cond_0

    .line 422
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: cancel task by onCancelled !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    invoke-virtual {v0}, Lcom/htc/album/addons/ActivityUploadEditor;->finish()V

    .line 425
    :cond_0
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: onCancelled -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 433
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: onPostExecute +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-boolean v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mIsException:Z

    if-eqz v0, :cond_0

    .line 437
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: Create non-cursor imagelist exception !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    invoke-virtual {v0}, Lcom/htc/album/addons/ActivityUploadEditor;->finish()V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    invoke-virtual {v0}, Lcom/htc/album/addons/ActivityUploadEditor;->doCreateAdapter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: doCreateAdapter NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    invoke-virtual {v0}, Lcom/htc/album/addons/ActivityUploadEditor;->finish()V

    .line 447
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mActivity:Lcom/htc/album/addons/ActivityUploadEditor;

    .line 448
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: onPostExecute -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 388
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 402
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: onPreExecute +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mActivity:Lcom/htc/album/addons/ActivityUploadEditor;

    if-nez v0, :cond_1

    .line 406
    :cond_0
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ActivityUploadEditor]: init 1 NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->mIsException:Z

    .line 414
    :goto_0
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ActivityUploadEditor][InitNonCursorImageList]: onPreExecute -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    invoke-virtual {v0}, Lcom/htc/album/addons/ActivityUploadEditor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
