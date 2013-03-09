.class public Lcom/htc/album/helper/ShareMenuManager;
.super Ljava/lang/Object;
.source "ShareMenuManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    return-void
.end method

.method public static createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;
    .locals 51
    .parameter "context"
    .parameter "shareImagesCount"
    .parameter "shareVideosCount"
    .parameter "allDRM"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    if-nez p0, :cond_0

    .line 293
    sget-object v48, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v49, "[createLocalFolderShareList] Null context"

    invoke-static/range {v48 .. v49}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/16 v17, 0x0

    .line 602
    :goto_0
    return-object v17

    .line 301
    :cond_0
    sget-object v48, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v49, "[createLocalFolderShareList]: Begin"

    invoke-static/range {v48 .. v49}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    if-gtz p1, :cond_1

    if-gtz p2, :cond_1

    .line 305
    sget-object v48, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v49, "[createLocalFolderShareList]: Nothing to share!!"

    invoke-static/range {v48 .. v49}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/16 v17, 0x0

    goto :goto_0

    .line 310
    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    const/16 v48, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v48

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 311
    .local v17, mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    .line 314
    .local v30, pm:Landroid/content/pm/PackageManager;
    new-instance v18, Landroid/content/Intent;

    const-string v48, "android.intent.action.SEND_MSG"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v18, msgIntent:Landroid/content/Intent;
    const-string v48, "image/*"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v48, "video/*"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const/high16 v48, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v44

    .line 318
    .local v44, tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v48, "android.intent.action.SEND_MSG"

    const v49, 0x10003

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 322
    new-instance v41, Landroid/content/Intent;

    const-string v48, "com.htc.vmm.SEND"

    move-object/from16 v0, v41

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v41, sendVMMVideoIntent:Landroid/content/Intent;
    const-string v48, "video/*"

    move-object/from16 v0, v41

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    new-instance v38, Landroid/content/Intent;

    const-string v48, "com.htc.vmm.SEND"

    move-object/from16 v0, v38

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .local v38, sendVMMImageIntent:Landroid/content/Intent;
    const-string v48, "image/*"

    move-object/from16 v0, v38

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    new-instance v40, Landroid/content/Intent;

    const-string v48, "com.htc.vmm.SEND_MULTIPLE"

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v40, sendVMMMultipleVideoIntent:Landroid/content/Intent;
    const-string v48, "video/*"

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    new-instance v39, Landroid/content/Intent;

    const-string v48, "com.htc.vmm.SEND_MULTIPLE"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v39, sendVMMMultipleImageIntent:Landroid/content/Intent;
    const-string v48, "image/*"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    new-instance v42, Landroid/content/Intent;

    const-string v48, "android.intent.action.SEND"

    move-object/from16 v0, v42

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v42, sendVideoIntent:Landroid/content/Intent;
    const-string v48, "video/*"

    move-object/from16 v0, v42

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    new-instance v33, Landroid/content/Intent;

    const-string v48, "android.intent.action.SEND"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v33, sendImageIntent:Landroid/content/Intent;
    const-string v48, "image/*"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    new-instance v35, Landroid/content/Intent;

    const-string v48, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v35

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v35, sendMultipleImageIntent_android:Landroid/content/Intent;
    const-string v48, "image/*"

    move-object/from16 v0, v35

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    new-instance v37, Landroid/content/Intent;

    const-string v48, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v37, sendMultipleVideoIntent_android:Landroid/content/Intent;
    const-string v48, "video/*"

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    new-instance v34, Landroid/content/Intent;

    const-string v48, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v34, sendMultipleImageIntent:Landroid/content/Intent;
    const-string v48, "image/*"

    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    new-instance v36, Landroid/content/Intent;

    const-string v48, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v36

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v36, sendMultipleVideoIntent:Landroid/content/Intent;
    const-string v48, "video/*"

    move-object/from16 v0, v36

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const/high16 v48, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 355
    .local v15, imageVMMList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v48, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v47

    .line 356
    .local v47, videoVMMList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v48, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v23

    .line 357
    .local v23, multiImageVMMList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v48, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v28

    .line 359
    .local v28, multiVideoVMMList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v48, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 361
    .local v13, imageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v48, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v45

    .line 364
    .local v45, videoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v48, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    .line 367
    .local v20, multiImageList_android:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v48, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v25

    .line 369
    .local v25, multiVideoList_android:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v48, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    .line 371
    .local v19, multiImageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v48, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v24

    .line 375
    .local v24, multiVideoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 376
    .local v6, IMAGE_FOLDER:I
    const/16 v9, 0xa

    .line 377
    .local v9, VIDEO_FOLDER:I
    const/16 v8, 0x1e

    .line 390
    .local v8, MIXED_FOLDER:I
    const/4 v5, -0x1

    .line 394
    .local v5, FOLDER_TYPE:I
    if-gtz p1, :cond_5

    .line 396
    const-string v48, "android.intent.action.SEND"

    const v49, 0x10002

    move-object/from16 v0, v17

    move-object/from16 v1, v45

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 398
    const-string v48, "android.intent.action.SEND_MULTIPLE"

    const v49, 0x20002

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 400
    const-string v48, "htc.intent.action.SEND_MULTIPLE"

    const v49, 0x20002

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 404
    const-string v48, "com.htc.vmm.SEND"

    const v49, 0x10002

    move-object/from16 v0, v17

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 405
    const-string v48, "com.htc.vmm.SEND_MULTIPLE"

    const v49, 0x20002

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 409
    if-eqz p3, :cond_2

    .line 410
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;)V

    .line 411
    :cond_2
    const/16 v5, 0xa

    .line 469
    :goto_1
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutDuplicateItems(Ljava/util/List;)V

    .line 471
    sget-boolean v48, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_MMS:Z

    if-eqz v48, :cond_3

    .line 472
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutMMSItems(Ljava/util/List;)V

    .line 475
    :cond_3
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 481
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 483
    .local v16, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/16 v43, 0x0

    .line 485
    .local v43, szLabel:Ljava/lang/String;
    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v43

    if-eqz v43, :cond_4

    .line 488
    sget-object v48, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "[HTCAlbum][ShareMenuManager][createLocalFolderShareList]:3 "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 413
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v43           #szLabel:Ljava/lang/String;
    :cond_5
    if-gtz p2, :cond_7

    .line 415
    const-string v48, "android.intent.action.SEND"

    const v49, 0x10001

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    move-object/from16 v2, p0

    move/from16 v3, v49

    invoke-static {v0, v13, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 417
    const-string v48, "android.intent.action.SEND_MULTIPLE"

    const v49, 0x20001

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 419
    const-string v48, "htc.intent.action.SEND_MULTIPLE"

    const v49, 0x20001

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 423
    const-string v48, "com.htc.vmm.SEND"

    const v49, 0x10001

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    move-object/from16 v2, p0

    move/from16 v3, v49

    invoke-static {v0, v15, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 424
    const-string v48, "com.htc.vmm.SEND_MULTIPLE"

    const v49, 0x20001

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 429
    if-eqz p3, :cond_6

    .line 430
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;)V

    .line 431
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 435
    :cond_7
    const-string v48, "android.intent.action.SEND"

    const v49, 0x10002

    move-object/from16 v0, v17

    move-object/from16 v1, v45

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 438
    const-string v48, "android.intent.action.SEND"

    const v49, 0x10001

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    move-object/from16 v2, p0

    move/from16 v3, v49

    invoke-static {v0, v13, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 441
    const-string v48, "android.intent.action.SEND_MULTIPLE"

    const v49, 0x20002

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 443
    const-string v48, "android.intent.action.SEND_MULTIPLE"

    const v49, 0x20001

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 445
    const-string v48, "htc.intent.action.SEND_MULTIPLE"

    const v49, 0x20002

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 447
    const-string v48, "htc.intent.action.SEND_MULTIPLE"

    const v49, 0x20001

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 452
    const-string v48, "com.htc.vmm.SEND"

    const v49, 0x10002

    move-object/from16 v0, v17

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 453
    const-string v48, "com.htc.vmm.SEND_MULTIPLE"

    const v49, 0x20002

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 454
    const-string v48, "com.htc.vmm.SEND"

    const v49, 0x10001

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    move-object/from16 v2, p0

    move/from16 v3, v49

    invoke-static {v0, v15, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 455
    const-string v48, "com.htc.vmm.SEND_MULTIPLE"

    const v49, 0x20001

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v48

    move-object/from16 v3, p0

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 460
    if-eqz p3, :cond_8

    .line 461
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;)V

    .line 463
    :cond_8
    const/16 v5, 0x1e

    goto/16 :goto_1

    .line 491
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_9
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutDisabledItems(Ljava/util/List;)V

    .line 495
    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/htc/album/helper/ShareMenuManager;->searchMMSMediaProxyShareItem(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;)Z

    .line 497
    sparse-switch v5, :sswitch_data_0

    .line 600
    :goto_3
    sget-object v48, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v49, "[createLocalFolderShareList]: Ends"

    invoke-static/range {v48 .. v49}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 501
    :sswitch_0
    sget-object v48, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v49, "[createLocalFolderShareList]: Image/Video Folder"

    invoke-static/range {v48 .. v49}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 504
    :sswitch_1
    sget-object v48, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v49, "[createLocalFolderShareList]: Mixed Folder"

    invoke-static/range {v48 .. v49}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v48

    move/from16 v0, v48

    new-array v7, v0, [I

    .line 510
    .local v7, ITEMS_TYPE:[I
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 511
    .local v14, imageMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v46, Ljava/util/HashSet;

    invoke-direct/range {v46 .. v46}, Ljava/util/HashSet;-><init>()V

    .line 512
    .local v46, videoMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 513
    .local v22, multiImageMap_android:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 514
    .local v27, multiVideoMap_android:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 515
    .local v21, multiImageMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 517
    .local v26, multiVideoMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/ResolveInfo;

    .line 518
    .local v32, rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 519
    .end local v32           #rs:Landroid/content/pm/ResolveInfo;
    :cond_a
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/ResolveInfo;

    .line 520
    .restart local v32       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 521
    .end local v32           #rs:Landroid/content/pm/ResolveInfo;
    :cond_b
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/ResolveInfo;

    .line 522
    .restart local v32       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 523
    .end local v32           #rs:Landroid/content/pm/ResolveInfo;
    :cond_c
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/ResolveInfo;

    .line 524
    .restart local v32       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 525
    .end local v32           #rs:Landroid/content/pm/ResolveInfo;
    :cond_d
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/ResolveInfo;

    .line 526
    .restart local v32       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 527
    .end local v32           #rs:Landroid/content/pm/ResolveInfo;
    :cond_e
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/ResolveInfo;

    .line 528
    .restart local v32       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 529
    .end local v32           #rs:Landroid/content/pm/ResolveInfo;
    :cond_f
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/ResolveInfo;

    .line 530
    .restart local v32       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 531
    .end local v32           #rs:Landroid/content/pm/ResolveInfo;
    :cond_10
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/ResolveInfo;

    .line 532
    .restart local v32       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 533
    .end local v32           #rs:Landroid/content/pm/ResolveInfo;
    :cond_11
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/ResolveInfo;

    .line 534
    .restart local v32       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 535
    .end local v32           #rs:Landroid/content/pm/ResolveInfo;
    :cond_12
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/ResolveInfo;

    .line 536
    .restart local v32       #rs:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 538
    .end local v32           #rs:Landroid/content/pm/ResolveInfo;
    :cond_13
    const/4 v11, 0x0

    .local v11, i:I
    :goto_e
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v48

    move/from16 v0, v48

    if-ge v11, v0, :cond_1e

    .line 540
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 541
    .local v31, ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface/range {v31 .. v31}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v48

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 542
    .local v10, aiName:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v48

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 544
    .local v29, packageName:Ljava/lang/String;
    const-string v48, "com.htc.android.mail"

    move-object/from16 v0, v48

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_14

    .line 546
    const v48, 0x20003

    move-object/from16 v0, v31

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    .line 538
    :goto_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 549
    :cond_14
    const-string v48, "com.android.mms"

    move-object/from16 v0, v48

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_15

    .line 551
    const v48, 0x10003

    move-object/from16 v0, v31

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 555
    :cond_15
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_17

    .line 557
    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_16

    .line 558
    const v48, 0x20003

    move-object/from16 v0, v31

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 560
    :cond_16
    const v48, 0x20001

    move-object/from16 v0, v31

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 563
    :cond_17
    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_18

    .line 565
    const v48, 0x20002

    move-object/from16 v0, v31

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 568
    :cond_18
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1a

    .line 570
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_19

    .line 571
    const v48, 0x20003

    move-object/from16 v0, v31

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 573
    :cond_19
    const v48, 0x20001

    move-object/from16 v0, v31

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto :goto_f

    .line 576
    :cond_1a
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1b

    .line 578
    const v48, 0x20002

    move-object/from16 v0, v31

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    .line 581
    :cond_1b
    invoke-virtual {v14, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1d

    .line 583
    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1c

    .line 584
    const v48, 0x10003

    move-object/from16 v0, v31

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    .line 586
    :cond_1c
    const v48, 0x10001

    move-object/from16 v0, v31

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    .line 590
    :cond_1d
    const v48, 0x10002

    move-object/from16 v0, v31

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    goto/16 :goto_f

    .line 596
    .end local v10           #aiName:Ljava/lang/String;
    .end local v29           #packageName:Ljava/lang/String;
    .end local v31           #ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_1e
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsByGroupMerge(Ljava/util/List;)V

    goto/16 :goto_3

    .line 497
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method public static createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;
    .locals 15
    .parameter "context"
    .parameter "targetImage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    if-nez p0, :cond_1

    .line 111
    sget-object v12, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v13, "[createLocalSingleShareList] null context"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v5, 0x0

    .line 212
    :cond_0
    :goto_0
    return-object v5

    .line 115
    :cond_1
    move-object/from16 v0, p1

    .line 116
    .local v0, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v0, :cond_2

    .line 118
    sget-object v12, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v13, "[createLocalSingleShareList] null image found!!"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v5, 0x0

    goto :goto_0

    .line 123
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v5, mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 129
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.htc.vmm.SEND"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v3, intent:Landroid/content/Intent;
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    .line 131
    .local v4, isVideo:Z
    if-eqz v4, :cond_6

    .line 132
    const-string v12, "video/*"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :goto_1
    const/high16 v12, 0x1

    invoke-virtual {v7, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 136
    .local v11, tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v13, "com.htc.vmm.SEND"

    if-eqz v4, :cond_7

    const v12, 0x10002

    :goto_2
    invoke-static {v5, v11, v13, p0, v12}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 141
    new-instance v8, Landroid/content/Intent;

    const-string v12, "android.intent.action.SEND"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v8, sendIntent:Landroid/content/Intent;
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 144
    const-string v12, "video/*"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    :goto_3
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.SEND_MSG"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v6, msgIntent:Landroid/content/Intent;
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 154
    const-string v12, "video/*"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :goto_4
    const/high16 v12, 0x1

    invoke-virtual {v7, v8, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 165
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v12

    if-eqz v12, :cond_a

    const v9, 0x10002

    .line 167
    .local v9, shareType:I
    :goto_5
    const-string v12, "android.intent.action.SEND"

    invoke-static {v5, v11, v12, p0, v9}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 171
    const/high16 v12, 0x1

    invoke-virtual {v7, v6, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 172
    const-string v12, "android.intent.action.SEND_MSG"

    invoke-static {v5, v11, v12, p0, v9}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    .line 176
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 177
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;)V

    .line 180
    :cond_3
    sget-boolean v12, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_MMS:Z

    if-eqz v12, :cond_4

    .line 181
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutMMSItems(Ljava/util/List;)V

    .line 184
    :cond_4
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 189
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 191
    .local v2, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/4 v10, 0x0

    .line 193
    .local v10, szLabel:Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 196
    sget-object v12, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[createLocalSingleShareList]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 134
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v6           #msgIntent:Landroid/content/Intent;
    .end local v8           #sendIntent:Landroid/content/Intent;
    .end local v9           #shareType:I
    .end local v10           #szLabel:Ljava/lang/String;
    .end local v11           #tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    const-string v12, "image/*"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 136
    .restart local v11       #tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    const v12, 0x10001

    goto/16 :goto_2

    .line 148
    .restart local v8       #sendIntent:Landroid/content/Intent;
    :cond_8
    const-string v12, "image/*"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 158
    .restart local v6       #msgIntent:Landroid/content/Intent;
    :cond_9
    const-string v12, "image/*"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 165
    :cond_a
    const v9, 0x10001

    goto :goto_5

    .line 198
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v9       #shareType:I
    :cond_b
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->FilterOutDisabledItems(Ljava/util/List;)V

    .line 200
    invoke-static {p0, v0, v5}, Lcom/htc/album/helper/ShareMenuManager;->searchMMSMediaProxyShareItem(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;)Z

    .line 203
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_0

    .line 209
    const v12, 0x7f0b000c

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 212
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public static createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    if-nez p0, :cond_0

    .line 692
    const/4 v0, 0x0

    .line 711
    :goto_0
    return-object v0

    .line 694
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v2, intentText:Landroid/content/Intent;
    const-string v4, "text/plain"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    const/4 v0, 0x0

    .line 704
    .local v0, criList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 705
    .local v3, shareList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v4, "android.intent.action.SEND"

    const v5, 0x10003

    invoke-static {v3, v4, p0, v5}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->makeComparableRIList(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 706
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    .end local v3           #shareList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    .line 707
    :catch_0
    move-exception v1

    .line 708
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ShareMenuManager][createSocialShareList] Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z
    .locals 6
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    .local p3, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 81
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v3, v4

    .line 103
    :cond_1
    :goto_0
    return v3

    .line 84
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 86
    :cond_3
    sget-object v3, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[createShareSocialMenu] Null share list!!"

    invoke-static {v3, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 87
    goto :goto_0

    .line 90
    :cond_4
    new-instance v4, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v4, p1, p3, v3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 91
    invoke-virtual {p2}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, item:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    iget-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getCount()I

    move-result v4

    if-le v4, v1, :cond_1

    .line 96
    iget-object v4, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-virtual {v4, v1}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .restart local v0       #item:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    if-nez v0, :cond_5

    .line 94
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_5
    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 100
    .local v2, shareIcon:Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v2, v4}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_2
.end method

.method private doCreateMenu(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/Menu;Landroid/view/MenuItem;I)Z
    .locals 10
    .parameter "context"
    .parameter
    .parameter "menu"
    .parameter "menuItem"
    .parameter "groupId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Landroid/view/Menu;",
            "Landroid/view/MenuItem;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p2, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 48
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v7, v8

    .line 75
    :goto_0
    return v7

    .line 51
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 53
    :cond_2
    sget-object v7, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[doCreateMenu] Null share list!!"

    invoke-static {v7, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 54
    goto :goto_0

    .line 57
    :cond_3
    new-instance v9, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct {v9, p1, p2, v7}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v9, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 59
    invoke-interface {p4}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 60
    .local v1, id:I
    invoke-interface {p4}, Landroid/view/MenuItem;->getOrder()I

    move-result v3

    .line 61
    .local v3, order:I
    invoke-interface {p4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 62
    .local v6, title:Ljava/lang/CharSequence;
    invoke-interface {p3, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 63
    invoke-interface {p3, v8, v1, v3, v6}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v5

    .line 65
    .local v5, subMenu:Landroid/view/SubMenu;
    const/4 v2, 0x0

    .line 66
    .local v2, index:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 68
    .local v4, shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, p5, v2, v8, v9}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p4

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    .end local v4           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_4
    invoke-interface {p3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p4

    .line 73
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Rest(Landroid/content/Context;)I

    move-result v8

    invoke-interface {p4, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static searchMMSMediaProxyShareItem(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;)Z
    .locals 10
    .parameter "context"
    .parameter "iImageCurrent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, listShareTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/high16 v4, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 611
    const/4 v6, 0x0

    .line 612
    .local v6, bResult:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 619
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.USCSEND"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v8, sendIntent:Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 622
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 623
    const-string v0, "video/*"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    :goto_0
    invoke-virtual {v7, v8, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 633
    .local v9, tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 635
    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][MenuManager][searchMMSMediaProxyShareItem]: no android.intent.action.USCSEND"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_0
    :goto_1
    return v5

    .line 625
    .end local v9           #tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const-string v0, "image/*"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 629
    :cond_2
    const-string v0, "*/*"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 639
    .restart local v9       #tmpList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MenuManager][searchMMSMediaProxyShareItem]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MenuManager][searchMMSMediaProxyShareItem]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    if-eqz p1, :cond_4

    .line 644
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v0

    if-eq v3, v0, :cond_0

    .line 648
    :cond_4
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v0, p2

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addSingleComparableRIList(Ljava/util/List;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;II)V

    goto :goto_1
.end method


# virtual methods
.method public createLocalFolderShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;IIZ)Z
    .locals 2
    .parameter "context"
    .parameter
    .parameter "shareImagesCount"
    .parameter "shareVideosCount"
    .parameter "allDRM"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;IIZ)Z"
        }
    .end annotation

    .prologue
    .line 673
    .local p2, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-static {p1, p3, p4, p5}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 675
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public createLocalFolderShareMenu(Landroid/content/Context;Landroid/view/Menu;IIZ)Z
    .locals 6
    .parameter "context"
    .parameter "menu"
    .parameter "shareImagesCount"
    .parameter "shareVideosCount"
    .parameter "allDRM"

    .prologue
    .line 660
    const v0, 0x7f0a009b

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 661
    .local v4, menuItem:Landroid/view/MenuItem;
    if-nez v4, :cond_0

    .line 663
    sget-object v0, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[createLocalFolderShareMenu] No share menu found!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v0, 0x0

    .line 669
    :goto_0
    return v0

    .line 667
    :cond_0
    invoke-static {p1, p3, p4, p5}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 669
    .local v2, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/16 v5, 0x303a

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/ShareMenuManager;->doCreateMenu(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/Menu;Landroid/view/MenuItem;I)Z

    move-result v0

    goto :goto_0
.end method

.method public createLocalSingleShareBubble(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/modules/ui/widget/ControlButton;)Z
    .locals 3
    .parameter "context"
    .parameter "targetImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 236
    .local p3, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 238
    :cond_0
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[createLocalSingleShareBubble] Invalid inputs!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x0

    .line 243
    :goto_0
    return v1

    .line 242
    :cond_1
    invoke-static {p1, p2}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;

    move-result-object v0

    .line 243
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-direct {p0, p1, p3, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z

    move-result v1

    goto :goto_0
.end method

.method public createLocalSingleShareMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/view/Menu;)Z
    .locals 6
    .parameter "context"
    .parameter "targetImage"
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    .line 217
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 219
    :cond_0
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[createLocalSingleShareMenu] Invalid inputs!!"

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return v0

    .line 223
    :cond_1
    const v1, 0x7f0a009b

    invoke-interface {p3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 224
    .local v4, menuItem:Landroid/view/MenuItem;
    if-nez v4, :cond_2

    .line 226
    sget-object v1, Lcom/htc/album/helper/ShareMenuManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[createLocalSingleShareMenu] No share menu found!!"

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_2
    invoke-static {p1, p2}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;

    move-result-object v2

    .line 231
    .local v2, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/16 v5, 0x3039

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/ShareMenuManager;->doCreateMenu(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/Menu;Landroid/view/MenuItem;I)Z

    move-result v0

    goto :goto_0
.end method

.method public createSocialShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;)Z
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 731
    .local p2, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-static {p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 733
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/helper/ShareMenuManager;->doCreateBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public createSocialShareMenu(Landroid/content/Context;Landroid/view/Menu;)Z
    .locals 1
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 727
    const/4 v0, 0x0

    return v0
.end method

.method public onLocalShareFolderClick(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "shareIndex"
    .parameter "shareClickListener"

    .prologue
    .line 680
    if-nez p1, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    if-eqz p3, :cond_0

    .line 685
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-interface {p3, v0, v1, p2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;->onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V

    goto :goto_0
.end method

.method public onLocalSingleShareClick(Landroid/content/Context;Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;IILcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;)V
    .locals 0
    .parameter "context"
    .parameter "mainAdapter"
    .parameter "shareIndex"
    .parameter "imageIndex"
    .parameter "menuClickListener"

    .prologue
    .line 286
    return-void
.end method

.method public onSocialShareClick(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "shareIndex"
    .parameter "shareLink"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 739
    .local v0, adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-virtual {v0, p2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    .line 743
    .local v2, target:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 745
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 751
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 753
    :catch_0
    move-exception v1

    .line 755
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0b0083

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/ShareMenuManager;->mShareAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 763
    return-void
.end method
