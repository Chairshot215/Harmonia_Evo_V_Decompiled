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
    .parameter "context"
    .parameter "layout"
    .parameter "uri"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "queryHandler"

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 44
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mState:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    .line 51
    new-instance v0, Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/BinAdapter$RecycleBin;-><init>(Lcom/htc/widget/BinAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    .line 85
    const v0, -0x333334

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mUnSelectedColor:I

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 102
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

    .line 103
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;Lcom/htc/widget/CarouselModel;I)V
    .locals 6
    .parameter "context"
    .parameter "layout"
    .parameter "uri"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "queryHandler"
    .parameter "model"
    .parameter "owner"

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 44
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mState:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    .line 51
    new-instance v0, Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/BinAdapter$RecycleBin;-><init>(Lcom/htc/widget/BinAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    .line 85
    const v0, -0x333334

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mUnSelectedColor:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 109
    invoke-virtual/range {p0 .. p9}, Lcom/htc/widget/BinAdapter;->inital(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;Lcom/htc/widget/CarouselModel;I)V

    .line 110
    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIdIndex:I

    .line 135
    const-string v0, "task_tag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mTaskTagIndex:I

    .line 136
    const-string v0, "task_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mTaskNameIndex:I

    .line 137
    const-string v0, "intent"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIntentIndex:I

    .line 138
    const-string v0, "res_package"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mPackageIndex:I

    .line 139
    const-string v0, "icon_resource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIconIndex:I

    .line 140
    const-string v0, "selected_icon_resource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mSelectedIconIndex:I

    .line 141
    const-string v0, "overlay_resource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mOverlayIndex:I

    .line 142
    const-string v0, "task_order"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mTaskOrderIndex:I

    .line 143
    const-string v0, "is_host"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIsHostIndex:I

    .line 144
    const-string v0, "is_removable"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mIsRemovableIndex:I

    .line 145
    const-string v0, "count_text"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mCountTextIndex:I

    .line 146
    const-string v0, "count_text_visible"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mCountTextVisibleIndex:I

    .line 147
    const-string v0, "alternative_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mAlternativeNameIndex:I

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public bindCoverView(ILandroid/view/View;)V
    .locals 23
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/BinAdapter;->mDataValid:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 261
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "this should only be called when the cursor is valid"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 264
    :cond_0
    if-nez p2, :cond_1

    .line 265
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "convertView couldn\'t be null "

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 267
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/BinAdapter$CoverViewHolder;

    .line 268
    .local v6, cvh:Lcom/htc/widget/BinAdapter$CoverViewHolder;
    iget-object v8, v6, Lcom/htc/widget/BinAdapter$CoverViewHolder;->infoImage:Landroid/widget/ImageView;

    .line 269
    .local v8, infoImage:Landroid/widget/ImageView;
    iget-object v9, v6, Lcom/htc/widget/BinAdapter$CoverViewHolder;->infoText:Landroid/widget/TextView;

    .line 270
    .local v9, infoText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinAdapter$RecycleBin;->getOverlayImg(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 271
    .local v7, img:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinAdapter$RecycleBin;->getOverlayText(I)Ljava/lang/String;

    move-result-object v12

    .line 272
    .local v12, name:Ljava/lang/String;
    if-eqz v7, :cond_2

    if-eqz v12, :cond_2

    .line 273
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :goto_0
    return-void

    .line 277
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v20

    if-nez v20, :cond_3

    .line 278
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

    .line 281
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    .line 282
    .local v5, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/BinAdapter;->mAlternativeNameIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, alternativeName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/BinAdapter;->mOverlayIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 284
    .local v13, overlay:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/BinAdapter;->mTaskNameIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 285
    .local v19, taskName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/BinAdapter;->mPackageIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 287
    .local v16, packageName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 288
    .local v10, iresources:Landroid/content/res/Resources;
    const/16 v17, 0x0

    .line 289
    .local v17, tabNmae:Ljava/lang/String;
    const/4 v15, 0x0

    .line 291
    .local v15, overlayImg:Landroid/graphics/drawable/Drawable;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 296
    :goto_1
    if-eqz v10, :cond_5

    .line 297
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v13, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 298
    .local v14, overlayIconId:I
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    .line 299
    .local v11, is:Ljava/io/InputStream;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v11, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 301
    .local v4, bm:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 304
    :goto_2
    if-eqz v4, :cond_4

    .line 305
    sget v20, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 306
    new-instance v15, Lcom/htc/widget/BinAdapter$FastBitmapDrawable;

    .end local v15           #overlayImg:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v15, v4, v0}, Lcom/htc/widget/BinAdapter$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/htc/widget/BinAdapter$1;)V

    .line 309
    .restart local v15       #overlayImg:Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v17, v3

    .line 310
    if-nez v3, :cond_5

    .line 311
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 312
    .local v18, tadNameId:I
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 316
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v14           #overlayIconId:I
    .end local v18           #tadNameId:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/htc/widget/BinAdapter$RecycleBin;->put(ILandroid/graphics/drawable/Drawable;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/BinAdapter$RecycleBin;->put(ILjava/lang/String;)V

    .line 318
    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 291
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 302
    .restart local v4       #bm:Landroid/graphics/Bitmap;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v14       #overlayIconId:I
    :catch_0
    move-exception v20

    goto :goto_2

    .line 293
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v14           #overlayIconId:I
    :catch_1
    move-exception v20

    goto :goto_1
.end method

.method public bindSelectedView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/widget/BinAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 344
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/widget/BinAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 130
    return-void
.end method

.method bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 32
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "selected"

    .prologue
    .line 153
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIdIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 154
    .local v14, id:J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mTaskTagIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 155
    .local v30, taskTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mTaskNameIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 156
    .local v28, taskName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIntentIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 157
    .local v17, intentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mPackageIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 158
    .local v24, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIconIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 159
    .local v13, icon:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mSelectedIconIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 160
    .local v27, selectedIcon:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mOverlayIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 161
    .local v22, overlay:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mTaskOrderIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 162
    .local v29, taskOrder:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIsHostIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 163
    .local v20, isHost:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mIsRemovableIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 164
    .local v21, isRemovable:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mCountTextIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, countText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mCountTextVisibleIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 167
    .local v19, isCountTextVisible:I
    new-instance v16, Lcom/htc/widget/TaskInfo;

    invoke-direct/range {v16 .. v16}, Lcom/htc/widget/TaskInfo;-><init>()V

    .line 168
    .local v16, info:Lcom/htc/widget/TaskInfo;
    move-object/from16 v0, v16

    iput-wide v14, v0, Lcom/htc/widget/TaskInfo;->_id:J

    .line 169
    move-object/from16 v0, v30

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    .line 170
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->taskName:Ljava/lang/String;

    .line 171
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 172
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    .line 173
    move-object/from16 v0, v16

    iput-object v13, v0, Lcom/htc/widget/TaskInfo;->icon:Ljava/lang/String;

    .line 174
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    .line 175
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->overlay:Ljava/lang/String;

    .line 176
    move/from16 v0, v29

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/widget/TaskInfo;->taskOrder:I

    .line 177
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/widget/TaskInfo;->isHost:I

    .line 178
    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/widget/TaskInfo;->isRemovable:I

    .line 179
    move-object/from16 v0, v16

    iput-object v9, v0, Lcom/htc/widget/TaskInfo;->countText:Ljava/lang/String;

    .line 180
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/widget/TaskInfo;->isCountTextVisible:I

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/BinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 183
    .local v23, packageManager:Landroid/content/pm/PackageManager;
    const/16 v18, 0x0

    .line 186
    .local v18, iresources:Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    if-nez v3, :cond_2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    :goto_0
    move-object/from16 v12, p1

    .line 196
    check-cast v12, Landroid/widget/FrameLayout;

    .line 197
    .local v12, frame:Landroid/widget/FrameLayout;
    const v3, 0x20200bc

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 199
    .local v31, textView:Landroid/widget/TextView;
    move-object/from16 v0, v16

    iget v3, v0, Lcom/htc/widget/TaskInfo;->isHost:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mState:I

    const/16 v4, 0x3ea

    if-eq v3, v4, :cond_0

    if-eqz p4, :cond_3

    .line 200
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 205
    .local v25, rID:Ljava/lang/Integer;
    :goto_1
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 207
    .local v10, d:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v10, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 209
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    .line 211
    .local v26, rTaskNameID:I
    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 213
    move-object/from16 v0, v16

    iget v3, v0, Lcom/htc/widget/TaskInfo;->isHost:I

    if-nez v3, :cond_4

    .line 214
    const/4 v3, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 215
    const v3, 0x20200c1

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_1
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .end local v10           #d:Landroid/graphics/drawable/Drawable;
    .end local v12           #frame:Landroid/widget/FrameLayout;
    .end local v25           #rID:Ljava/lang/Integer;
    .end local v26           #rTaskNameID:I
    .end local v31           #textView:Landroid/widget/TextView;
    :goto_3
    return-void

    .line 186
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    move-object/from16 v18, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v11

    .line 190
    .local v11, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v2

    .line 191
    .local v2, handle:Lcom/htc/content/NotifyingAsyncQueryHandler;
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

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 192
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

    goto :goto_3

    .line 202
    .end local v2           #handle:Lcom/htc/content/NotifyingAsyncQueryHandler;
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12       #frame:Landroid/widget/FrameLayout;
    .restart local v31       #textView:Landroid/widget/TextView;
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 203
    .restart local v25       #rID:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mUnSelectedColor:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 217
    .restart local v10       #d:Landroid/graphics/drawable/Drawable;
    .restart local v26       #rTaskNameID:I
    :cond_4
    invoke-static {}, Lcom/htc/widget/CarouselSkinUtil;->isTextRequiredInWidget()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 218
    const/4 v3, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 223
    :goto_4
    const v3, 0x20200c1

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 224
    .local v8, count:Landroid/widget/TextView;
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    if-eqz v19, :cond_5

    if-eqz v9, :cond_5

    const-string v3, "0"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 227
    :cond_5
    const/4 v3, 0x4

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/BinAdapter;->mState:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_1

    .line 233
    const v3, 0x20200c1

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 220
    .end local v8           #count:Landroid/widget/TextView;
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    goto :goto_4

    .line 229
    .restart local v8       #count:Landroid/widget/TextView;
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 370
    invoke-direct {p0, p1}, Lcom/htc/widget/BinAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 371
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter$RecycleBin;->clear()V

    .line 373
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CarouselModel;->changeCursor(Landroid/database/Cursor;)V

    .line 376
    :cond_0
    return-void
.end method

.method public getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mQueryHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    return-object v0
.end method

.method public getSeletedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 243
    iget-boolean v1, p0, Lcom/htc/widget/BinAdapter;->mDataValid:Z

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this should only be called when the cursor is valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
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

    .line 250
    :cond_1
    if-nez p2, :cond_2

    .line 251
    iget-object v1, p0, Lcom/htc/widget/BinAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/htc/widget/BinAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/BinAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/BinAdapter;->bindSelectedView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 256
    return-object v0

    .line 253
    .end local v0           #v:Landroid/view/View;
    :cond_2
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getTaskTag(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    .line 325
    iget-boolean v2, p0, Lcom/htc/widget/BinAdapter;->mDataValid:Z

    if-nez v2, :cond_0

    .line 326
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "this should only be called when the cursor is valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 329
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

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    .line 333
    .local v0, c:Landroid/database/Cursor;
    iget v2, p0, Lcom/htc/widget/BinAdapter;->mTaskTagIndex:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, taskTag:Ljava/lang/String;
    return-object v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method inital(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;Lcom/htc/widget/CarouselModel;I)V
    .locals 2
    .parameter "context"
    .parameter "layout"
    .parameter "uri"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "queryHandler"
    .parameter "model"
    .parameter "owner"

    .prologue
    .line 89
    iput-object p3, p0, Lcom/htc/widget/BinAdapter;->mUri:Landroid/net/Uri;

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mQueryHandler:Ljava/lang/ref/WeakReference;

    .line 91
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mState:I

    .line 92
    iput-object p8, p0, Lcom/htc/widget/BinAdapter;->mModel:Lcom/htc/widget/CarouselModel;

    .line 93
    iput p9, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    .line 94
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/widget/BinAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20a006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinAdapter;->mUnSelectedColor:I

    .line 96
    return-void
.end method

.method public isDataValid()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/htc/widget/BinAdapter;->mDataValid:Z

    return v0
.end method

.method newCoverView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "layout"
    .parameter "parent"

    .prologue
    .line 119
    iget-object v2, p0, Lcom/htc/widget/BinAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/htc/widget/BinAdapter$CoverViewHolder;

    invoke-direct {v0}, Lcom/htc/widget/BinAdapter$CoverViewHolder;-><init>()V

    .line 121
    .local v0, cvh:Lcom/htc/widget/BinAdapter$CoverViewHolder;
    const v2, 0x20200c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/htc/widget/BinAdapter$CoverViewHolder;->infoImage:Landroid/widget/ImageView;

    .line 122
    const v2, 0x20200c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/widget/BinAdapter$CoverViewHolder;->infoText:Landroid/widget/TextView;

    .line 123
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter$RecycleBin;->clear()V

    .line 356
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/BinAdapter;->mOwner:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mModel:Lcom/htc/widget/CarouselModel;

    iget-object v1, p0, Lcom/htc/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselModel;->notifyDataSetChanged(Landroid/database/Cursor;)V

    .line 360
    :cond_0
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 361
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetInvalidated()V

    .line 365
    iget-object v0, p0, Lcom/htc/widget/BinAdapter;->mRecycler:Lcom/htc/widget/BinAdapter$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter$RecycleBin;->clear()V

    .line 366
    return-void
.end method

.method setStateMode(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 114
    iput p1, p0, Lcom/htc/widget/BinAdapter;->mState:I

    .line 115
    invoke-virtual {p0}, Lcom/htc/widget/BinAdapter;->notifyDataSetChanged()V

    .line 116
    return-void
.end method
