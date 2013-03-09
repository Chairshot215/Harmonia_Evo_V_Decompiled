.class Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailListAdapter"
.end annotation


# static fields
.field private static final OFFSET_TRACKS:I = 0x2

.field private static final POSITION_HEADER:I = 0x0

.field private static final POSITION_SEPARATOR_TRACKS:I = 0x1


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mParentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/browserlayer/AlbumDetailActivity;",
            ">;"
        }
    .end annotation
.end field

.field private posMoreByArtistName:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    return v0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    return-void
.end method

.method public getCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/AlbumDetailActivity;

    if-nez v1, :cond_1

    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():tempActivity == null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():stopping."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():mShowError."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():mTrackCursor == null || mTrackCursor.getCount() == 0."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x2

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    if-ne p1, v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26

    const-string v23, "[AlbumDetailActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "########################################### getView() position => "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", ####Begin"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/music/browserlayer/AlbumDetailActivity;

    if-nez v17, :cond_0

    const-string v23, "[AlbumDetailActivity]"

    const-string v24, "DetailListAdapter.getView(int,View,ViewGroup):tempActivity == null."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, p2

    :goto_0
    return-object v21

    :cond_0
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v23

    if-eqz v23, :cond_1

    const-string v23, "[AlbumDetailActivity]"

    const-string v24, "DetailListAdapter.getView(int,View,ViewGroup):stopping."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, p2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_7

    if-eqz p2, :cond_4

    move-object/from16 v21, p2

    :goto_1
    const v23, 0x7f080064

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    new-instance v23, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$1;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v23, 0x7f080065

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageButton;

    new-instance v23, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_2

    const v23, 0x7f080061

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_3

    const v23, 0x7f080062

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v23, 0x7f08005b

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    if-eqz v23, :cond_5

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v23

    if-nez v23, :cond_5

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v23, "[AlbumDetailActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mAlbumArt size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " x "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f03001b

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    const v23, 0x7f080064

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "common_detail_btn_left"

    const v25, 0x7f02000d

    invoke-static/range {v23 .. v25}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v23, 0x7f080065

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "common_detail_btn_right"

    const v25, 0x7f02000e

    invoke-static/range {v23 .. v25}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v13, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-direct {v13, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    if-eqz v23, :cond_6

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v23

    if-nez v23, :cond_6

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v23, "[AlbumDetailActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mDefaultAlbumArt size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " x "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v23, "[AlbumDetailActivity]"

    const-string v24, "[getView] albumArtIV.setImageDrawable(null)."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/16 v23, 0x1

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    if-eqz p2, :cond_8

    move-object/from16 v21, p2

    :goto_2
    const v23, 0x2020010

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    const v23, 0x7f0700f7

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x2090026

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    new-instance v13, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-direct {v13, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    move/from16 v23, v0

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    if-eqz p2, :cond_a

    move-object/from16 v21, p2

    :goto_3
    const v23, 0x7f080054

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0700fc

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v23, "%s"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "%s"

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f030019

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    new-instance v13, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;

    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-direct {v13, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    add-int/lit8 p1, p1, -0x2

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v23

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v24

    const-string v25, "title"

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v23

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v24

    const-string v25, "_id"

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz p2, :cond_d

    move-object/from16 v21, p2

    :goto_4
    const v23, 0x7f080055

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    const v23, 0x7f080056

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    :try_start_0
    sget-object v23, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v23, :cond_e

    sget-object v23, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface/range {v23 .. v23}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v23

    move/from16 v0, v23

    if-ne v9, v0, :cond_e

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    const v23, 0x7f080058

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "common_arrow"

    const v25, 0x20807c9

    invoke-static/range {v23 .. v25}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v14, v6}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItemImageButton;->getTag()Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_f

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItemImageButton;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    move-object/from16 v11, v23

    :goto_6
    const-string v23, "audioid"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v23, "position"

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v23, "trackname"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Lcom/htc/widget/HtcListItemImageButton;->setTag(Ljava/lang/Object;)V

    new-instance v23, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$3;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v23, "[AlbumDetailActivity]"

    const-string v24, "########################################### getView() End"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f03001a

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    new-instance v13, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;

    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-direct {v13, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_e
    const/16 v23, 0x8

    :try_start_1
    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5

    :cond_f
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    goto :goto_6
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
