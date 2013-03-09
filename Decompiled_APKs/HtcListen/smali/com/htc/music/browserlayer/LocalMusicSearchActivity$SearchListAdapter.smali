.class Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocalMusicSearchActivity.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/browserlayer/LocalMusicSearchActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mDebug:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mItemViewResId:I

.field private final mNoResultViewResId:I

.field private final mSubTitleViewResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const v0, 0x2090026

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mSubTitleViewResId:I

    const v0, 0x7f03000d

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mItemViewResId:I

    const v0, 0x7f030019

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mNoResultViewResId:I

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020057

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    if-eqz v8, :cond_1

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v8}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v1, p1

    move-object v2, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v8, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3702(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;

    :goto_0
    return-void

    :cond_0
    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "SearchListAdapter...mAsyncImageDecoder is not null, don\'t new it again..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "SearchListAdapter, tempActivity is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    if-eqz v0, :cond_0

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "[LocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getCount, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    if-eqz v0, :cond_0

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "[LocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getItem, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    if-eqz v0, :cond_0

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getItemViewType(I)I
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "[LocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getItemViewType, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    const-string v19, "[LocalMusicSearchActivity]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "], getView +++++"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    if-eqz v16, :cond_3

    if-ltz p1, :cond_1

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, p1

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    :cond_1
    :goto_0
    if-nez v9, :cond_4

    move-object/from16 v17, p2

    :cond_2
    :goto_1
    return-object v17

    :cond_3
    const-string v19, "[LocalMusicSearchActivity]"

    const-string v20, "SearchListAdapter, getItem, tempActivity is null!"

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->getItemViewType(I)I

    move-result v18

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    iget v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    const/16 v19, 0x2

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v19, 0x2

    iget v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    const/16 v19, 0x6

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v19, 0x6

    iget v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    :cond_5
    const/4 v8, 0x1

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-eqz v8, :cond_b

    :cond_7
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x2090026

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    const v19, 0x2020010

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    invoke-direct {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    move/from16 v0, v18

    iput v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    const-string v19, "[LocalMusicSearchActivity]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getView ----- time cost: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v13

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    :cond_9
    const/16 v19, 0x6

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f030019

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    const v19, 0x7f080054

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    invoke-direct {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    move/from16 v0, v18

    iput v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    const-string v19, "[LocalMusicSearchActivity]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getView ----- time cost: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v13

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f03000d

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    new-instance v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    invoke-direct {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    const v19, 0x7f080042

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const v19, 0x7f080043

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move/from16 v0, v18

    iput v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3
    if-nez v7, :cond_e

    const-string v19, "[LocalMusicSearchActivity]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "], getView, holder is null!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v17, p2

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    const v19, 0x2020010

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    const-string v19, "[LocalMusicSearchActivity]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getView ----- time cost: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v13

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const/16 v19, 0x6

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    const v19, 0x7f080054

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    const-string v19, "[LocalMusicSearchActivity]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getView ----- time cost: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v13

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    move/from16 v0, v18

    iput v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_e
    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v19, v0

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    :cond_f
    :goto_4
    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    const/16 v19, 0x3

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    :cond_10
    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    const-string v19, "[LocalMusicSearchActivity]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getView ----- time cost: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v13

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const/16 v19, 0x3

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    const/16 v19, 0x4

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    :cond_13
    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_14

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    :cond_14
    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v19, v0

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    :goto_6
    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto/16 :goto_4

    :cond_15
    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v0, v1, v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_16
    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_17

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    :cond_17
    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v19, v0

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    :goto_7
    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v19, v0

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getSecondaryText()Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$4100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_18
    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v0, v1, v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_19
    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    if-eqz v6, :cond_1a

    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    :cond_1a
    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getArtPath()Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$4300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    const-string v19, "[LocalMusicSearchActivity]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Pos ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] ## There is art path in this item, path = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1b

    const-string v19, "[LocalMusicSearchActivity]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Pos ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] ## There is albumartpath. Try to decode it."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, p1

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1b
    const-string v19, "[LocalMusicSearchActivity]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Pos ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] ## File in this albumartpath didn\'t exist. No need to decode..."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1c
    const-string v19, "[LocalMusicSearchActivity]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Pos ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "], No album art path, set default one."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5
.end method

.method public isEnabled(I)Z
    .locals 4

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    if-eqz v0, :cond_0

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getItemViewType(I)I
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v2, "[LocalMusicSearchActivity]"

    const-string v3, "SearchListAdapter, getItemViewType, tempActivity is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v2

    goto :goto_0
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 10

    if-nez p2, :cond_1

    const-string v7, "[LocalMusicSearchActivity]"

    const-string v8, "onImageDecoded: bitmap is null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "[LocalMusicSearchActivity]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#### onImageDecoded ,pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bitmap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    if-eqz v6, :cond_3

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->push(ILandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    const v7, 0x7f080042

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_2

    const-string v7, "[LocalMusicSearchActivity]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#### onImageDecoded ,pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Set album art!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v7, "[LocalMusicSearchActivity]"

    const-string v8, "SearchListAdapter, onImageDecoded, tempActivity is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
