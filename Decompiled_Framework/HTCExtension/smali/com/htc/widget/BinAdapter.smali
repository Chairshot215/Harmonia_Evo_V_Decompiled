.class Lcom/htc/widget/BinAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "BinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/BinAdapter$1;,
        Lcom/htc/widget/BinAdapter$RecycleBin;,
        Lcom/htc/widget/BinAdapter$FastBitmapDrawable;,
        Lcom/htc/widget/BinAdapter$CoverViewHolder;,
        Lcom/htc/widget/BinAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Carousel\'s BinAdapter"

.field static final OWNER_POOL:I = 0x2

.field static final OWNER_WIDGET:I = 0x1


# instance fields
.field eresources:Landroid/content/res/Resources;

.field mAlternativeNameIndex:I

.field mCountTextIndex:I

.field mCountTextVisibleIndex:I

.field mIconIndex:I

.field mIdIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mIntentIndex:I

.field mIsHostIndex:I

.field mIsRemovableIndex:I

.field private mModel:Lcom/htc/widget/CarouselModel;

.field mOverlayIndex:I

.field private mOwner:I

.field mPackageIndex:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mQueryHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/content/NotifyingAsyncQueryHandler;",
            ">;"
        }
    .end annotation
.end field

.field final mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

.field private mResources:Landroid/content/res/Resources;

.field mSelectedIconIndex:I

.field private mState:I

.field mTaskNameIndex:I

.field mTaskOrderIndex:I

.field mTaskTagIndex:I

.field mUnSelectedColor:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mState:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    new-instance v0, Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/BinAdapter$RecycleBin;-><init>(Lcom/htc/widget/BinAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    const v0, -0x333334

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mUnSelectedColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lcom/htc/widget/BinAdapter;->inital(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;Lcom/htc/widget/CarouselModel;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;Lcom/htc/widget/CarouselModel;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mState:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    new-instance v0, Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/BinAdapter$RecycleBin;-><init>(Lcom/htc/widget/BinAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    const v0, -0x333334

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mUnSelectedColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual/range {p0 .. p9}, Lcom/htc/widget/BinAdapter;->inital(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;Lcom/htc/widget/CarouselModel;I)V

    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIdIndex:I

    const-string v0, "task_tag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mTaskTagIndex:I

    const-string v0, "task_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mTaskNameIndex:I

    const-string v0, "intent"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIntentIndex:I

    const-string v0, "res_package"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mPackageIndex:I

    const-string v0, "icon_resource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIconIndex:I

    const-string v0, "selected_icon_resource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mSelectedIconIndex:I

    const-string v0, "overlay_resource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mOverlayIndex:I

    const-string v0, "task_order"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mTaskOrderIndex:I

    const-string v0, "is_host"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIsHostIndex:I

    const-string v0, "is_removable"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIsRemovableIndex:I

    const-string v0, "count_text"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mCountTextIndex:I

    const-string v0, "count_text_visible"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mCountTextVisibleIndex:I

    const-string v0, "alternative_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mAlternativeNameIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method public bindCoverView(ILandroid/view/View;)V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/BinAdapter;->mDataValid:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "this should only be called when the cursor is valid"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_0
    if-nez p2, :cond_1

    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "convertView couldn\'t be null "

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/BinAdapter$CoverViewHolder;

    iget-object v8, v6, Lcom/htc/widget/BinAdapter$CoverViewHolder;->infoImage:Landroid/widget/ImageView;

    iget-object v9, v6, Lcom/htc/widget/BinAdapter$CoverViewHolder;->infoText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinAdapter$RecycleBin;->getOverlayImg(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinAdapter$RecycleBin;->getOverlayText(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v7, :cond_2

    if-eqz v12, :cond_2

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v20

    if-nez v20, :cond_3

    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "couldn\'t move cursor to position "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/BinAdapter;->mAlternativeNameIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/BinAdapter;->mOverlayIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/BinAdapter;->mTaskNameIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/BinAdapter;->mPackageIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/BinAdapter;->mResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-eqz v10, :cond_5

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v13, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v11, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    if-eqz v4, :cond_4

    sget v20, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v15, Lcom/htc/widget/BinAdapter$FastBitmapDrawable;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v15, v4, v0}, Lcom/htc/widget/BinAdapter$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/htc/widget/BinAdapter$1;)V

    :cond_4
    move-object/from16 v17, v3

    if-nez v3, :cond_5

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/htc/widget/BinAdapter$RecycleBin;->put(ILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/BinAdapter$RecycleBin;->put(ILjava/lang/String;)V

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    :goto_3
    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_0
    move-exception v20

    goto :goto_2

    :catch_1
    move-exception v20

    goto/16 :goto_1
.end method

.method public bindSelectedView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/widget/BinAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/widget/BinAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method

.method bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 34

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIdIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mTaskTagIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mTaskNameIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIntentIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mPackageIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIconIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mSelectedIconIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mOverlayIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mTaskOrderIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIsHostIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIsRemovableIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mCountTextIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mCountTextVisibleIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    new-instance v16, Lcom/htc/widget/TaskInfo;

    invoke-direct/range {v16 .. v16}, Lcom/htc/widget/TaskInfo;-><init>()V

    move-object/from16 v0, v16

    iput-wide v14, v0, Lcom/htc/widget/TaskInfo;->_id:J

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->taskName:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v13, v0, Lcom/htc/widget/TaskInfo;->icon:Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->overlay:Ljava/lang/String;

    move/from16 v0, v31

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/widget/TaskInfo;->taskOrder:I

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/widget/TaskInfo;->isHost:I

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/widget/TaskInfo;->isRemovable:I

    move-object/from16 v0, v16

    iput-object v9, v0, Lcom/htc/widget/TaskInfo;->countText:Ljava/lang/String;

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/widget/TaskInfo;->isCountTextVisible:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/BinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/BinAdapter;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v12, p1

    check-cast v12, Landroid/widget/FrameLayout;

    const v3, 0x20200bc

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/htc/widget/TaskInfo;->isHost:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mState:I

    const/16 v4, 0x3ea

    if-eq v3, v4, :cond_0

    if-eqz p4, :cond_5

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    :goto_1
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v10, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_8

    const-string v3, "BinAdapter::bindView()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We can not find taskName resource, taskName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " taskTag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    if-nez v3, :cond_6

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v27

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    if-eqz v29, :cond_7

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, v16

    iget v3, v0, Lcom/htc/widget/TaskInfo;->isHost:I

    if-nez v3, :cond_9

    const/4 v3, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    const v3, 0x20200c1

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    if-nez v3, :cond_4

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v18

    :goto_6
    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    move-object/from16 v18, v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/BinAdapter;->mUri:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "task_tag = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v3, "BinAdapter::bindView()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We can not find resource, so remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/htc/widget/TaskInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mUnSelectedColor:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    move-object/from16 v27, v0

    goto/16 :goto_2

    :cond_7
    const-string v3, "BinAdapter::bindView()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We try again and still fail, taskName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " taskTag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v3

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    invoke-static {}, Lcom/htc/widget/CarouselSkinUtil;->isTextRequiredInWidget()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    :goto_7
    const v3, 0x20200c1

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v19, :cond_a

    if-eqz v9, :cond_a

    const-string v3, "0"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    const/4 v3, 0x4

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mState:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_1

    const v3, 0x20200c1

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    invoke-direct {p0, p1}, Lcom/htc/widget/BinAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter$RecycleBin;->clear()V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CarouselModel;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mQueryHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    return-object v0
.end method

.method public getSeletedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-boolean v1, p0, Lcom/htc/widget/BinAdapter;->mDataValid:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this should only be called when the cursor is valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/htc/widget/BinAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/htc/widget/BinAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/htc/widget/BinAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/BinAdapter;->bindSelectedView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-object v0

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public getTaskTag(I)Ljava/lang/String;
    .locals 5

    iget-boolean v2, p0, Lcom/htc/widget/BinAdapter;->mDataValid:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "this should only be called when the cursor is valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t move cursor to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/htc/widget/BinAdapter;->mTaskTagIndex:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method inital(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;Lcom/htc/widget/CarouselModel;I)V
    .locals 2

    iput-object p3, p0, Lcom/htc/widget/BinAdapter;->mUri:Landroid/net/Uri;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mQueryHandler:Ljava/lang/ref/WeakReference;

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mState:I

    iput-object p8, p0, Lcom/htc/widget/BinAdapter;->mModel:Lcom/htc/widget/CarouselModel;

    iput p9, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mPackageName:Ljava/lang/String;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20a0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mUnSelectedColor:I

    return-void
.end method

.method public isDataValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/BinAdapter;->mDataValid:Z

    return v0
.end method

.method newCoverView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/BinAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/htc/widget/BinAdapter$CoverViewHolder;

    invoke-direct {v0}, Lcom/htc/widget/BinAdapter$CoverViewHolder;-><init>()V

    const v2, 0x20200c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/htc/widget/BinAdapter$CoverViewHolder;->infoImage:Landroid/widget/ImageView;

    const v2, 0x20200c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/widget/BinAdapter$CoverViewHolder;->infoText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter$RecycleBin;->clear()V

    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mModel:Lcom/htc/widget/CarouselModel;

    iget-object v1, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselModel;->notifyDataSetChanged(Landroid/database/Cursor;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetInvalidated()V

    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter$RecycleBin;->clear()V

    return-void
.end method

.method setStateMode(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/BinAdapter;->mState:I

    invoke-virtual {p0}, Lcom/htc/widget/BinAdapter;->notifyDataSetChanged()V

    return-void
.end method
