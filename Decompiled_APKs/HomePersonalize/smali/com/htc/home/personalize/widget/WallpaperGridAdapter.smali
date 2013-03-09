.class public Lcom/htc/home/personalize/widget/WallpaperGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperGridAdapter.java"


# static fields
.field public static final ITEM_DELETED:Ljava/lang/String; = "deleted"

.field public static final ITEM_NOT_DELETE:Ljava/lang/String; = "not_delete"

.field private static final TAG:Ljava/lang/String; = "WallpaperGridAdapter"

.field public static localLOGV:Z


# instance fields
.field private mAnimation:Z

.field protected mBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lcom/htc/home/personalize/WallpaperPicker;

.field private mCustomized:Z

.field private mDeleteMode:Z

.field protected mDeletedIndex:[Z

.field private mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

.field private mGridMode:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemResource:I

.field private mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mWallpapers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->localLOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/home/personalize/WallpaperPicker;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mDeletedIndex:[Z

    .line 81
    iput-boolean v1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mAnimation:Z

    .line 82
    iput-boolean v1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mDeleteMode:Z

    .line 83
    iput-boolean v1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mGridMode:Z

    .line 92
    iput-object p1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mContext:Lcom/htc/home/personalize/WallpaperPicker;

    .line 93
    invoke-virtual {p1}, Lcom/htc/home/personalize/WallpaperPicker;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 94
    invoke-static {}, Lcom/htc/home/personalize/util/BitmapUtils;->getWallpaperOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 95
    return-void
.end method

.method private safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V
    .locals 0
    .parameter "view"
    .parameter "anim"
    .parameter "duration"
    .parameter "startNow"

    .prologue
    .line 291
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    if-eqz p4, :cond_2

    .line 293
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private setWallpaperImage(ILandroid/widget/ImageView;Landroid/view/View;)V
    .locals 8
    .parameter "position"
    .parameter "wallpaper"
    .parameter "layout"

    .prologue
    const v6, 0x7f020010

    .line 225
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v5}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    .line 226
    .local v1, networkSize:I
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v5}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v7

    iget-boolean v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mCustomized:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v5}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v5

    :goto_0
    add-int v2, v7, v5

    .line 229
    .local v2, network_buildInSize:I
    if-ge p1, v1, :cond_2

    .line 230
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v5, p1}, Lcom/htc/home/personalize/config/GalleryData;->getThumbPath(I)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 268
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #path:Ljava/lang/String;
    :goto_1
    return-void

    .line 226
    .end local v2           #network_buildInSize:I
    :cond_0
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mWallpapers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    .line 236
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #network_buildInSize:I
    .restart local v3       #path:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mContext:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-virtual {v5}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v5, v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 242
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #path:Ljava/lang/String;
    :cond_2
    iget-boolean v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mCustomized:Z

    if-eqz v5, :cond_5

    .line 243
    const/4 v3, 0x0

    .line 248
    .restart local v3       #path:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mGridMode:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    sub-int v7, p1, v1

    invoke-virtual {v5, v7}, Lcom/htc/home/personalize/config/GalleryData;->getThumbPath(I)Ljava/lang/String;

    move-result-object v3

    .line 252
    :goto_2
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 254
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 248
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    sub-int v7, p1, v1

    invoke-virtual {v5, v7}, Lcom/htc/home/personalize/config/GalleryData;->getPreviewPath(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 256
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mContext:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-virtual {v5}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v5, v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 262
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #path:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mWallpapers:Ljava/util/ArrayList;

    sub-int v7, p1, v1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 263
    .local v4, resId:I
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mContext:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-virtual {v5}, Lcom/htc/home/personalize/WallpaperPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v4, :cond_6

    .end local v4           #resId:I
    :goto_3
    iget-object v6, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v5, v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .restart local v4       #resId:I
    :cond_6
    move v4, v6

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, size:I
    iget-boolean v1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mDeleteMode:Z

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v0

    .line 144
    :goto_0
    return v0

    .line 138
    :cond_0
    iget-boolean v1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mCustomized:Z

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    iget-object v2, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v2}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    iget-object v2, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mWallpapers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 152
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 157
    const/16 v16, 0x0

    .line 158
    .local v16, deleted:Z
    const/16 v19, 0x0

    .line 162
    .local v19, useContvertView:Z
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 163
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mItemResource:I

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 164
    .local v17, layout:Landroid/view/View;
    const v4, 0x7f0b0059

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 165
    .local v15, delete_cross:Landroid/widget/ImageView;
    const v4, 0x7f0b002c

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 167
    .local v20, wallpaper:Landroid/widget/ImageView;
    const/16 v19, 0x0

    .line 183
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mGridMode:Z

    if-nez v4, :cond_1

    .line 184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mBitmapList:Ljava/util/ArrayList;

    const/16 v5, 0x8

    move/from16 v0, p1

    invoke-static {v4, v0, v5}, Lcom/htc/home/personalize/util/BitmapUtils;->checkReleaseBitmap(Ljava/util/ArrayList;II)V

    .line 187
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->setWallpaperImage(ILandroid/widget/ImageView;Landroid/view/View;)V

    .line 189
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mDeleteMode:Z

    if-eqz v4, :cond_9

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mDeletedIndex:[Z

    aget-boolean v4, v4, p1

    if-eqz v4, :cond_6

    .line 191
    const v4, 0x7f020003

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mAnimation:Z

    if-eqz v4, :cond_2

    .line 193
    new-instance v4, Lcom/htc/home/personalize/DeleteAnimation;

    const/high16 v5, 0x3f80

    const v6, 0x3f59999a

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f00

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v4 .. v14}, Lcom/htc/home/personalize/DeleteAnimation;-><init>(FFFFIIZIZZ)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    .line 196
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mGridMode:Z

    if-nez v4, :cond_3

    .line 198
    const/16 v4, 0x7f

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 200
    :cond_3
    const-string v4, "deleted"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 221
    :goto_1
    return-object v17

    .line 169
    .end local v15           #delete_cross:Landroid/widget/ImageView;
    .end local v17           #layout:Landroid/view/View;
    .end local v20           #wallpaper:Landroid/widget/ImageView;
    :cond_4
    move-object/from16 v17, p2

    .line 170
    .restart local v17       #layout:Landroid/view/View;
    const v4, 0x7f0b002c

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 172
    .restart local v20       #wallpaper:Landroid/widget/ImageView;
    const v4, 0x7f0b0059

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 173
    .restart local v15       #delete_cross:Landroid/widget/ImageView;
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    .line 176
    .local v18, obj:Ljava/lang/Object;
    if-eqz v18, :cond_5

    .line 177
    const-string v4, "deleted"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 179
    :cond_5
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 202
    .end local v18           #obj:Ljava/lang/Object;
    :cond_6
    if-eqz v16, :cond_7

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mAnimation:Z

    if-eqz v4, :cond_7

    .line 203
    new-instance v4, Lcom/htc/home/personalize/DeleteAnimation;

    const v5, 0x3f59999a

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f80

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v4 .. v14}, Lcom/htc/home/personalize/DeleteAnimation;-><init>(FFFFIIZIZZ)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    .line 206
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mGridMode:Z

    if-nez v4, :cond_8

    .line 207
    const/16 v4, 0xff

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 209
    :cond_8
    const-string v4, "not_delete"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 212
    :cond_9
    if-eqz v16, :cond_a

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mAnimation:Z

    if-eqz v4, :cond_a

    .line 213
    new-instance v4, Lcom/htc/home/personalize/DeleteAnimation;

    const v5, 0x3f59999a

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f80

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v4 .. v14}, Lcom/htc/home/personalize/DeleteAnimation;-><init>(FFFFIIZIZZ)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V

    .line 216
    :cond_a
    const-string v4, "not_delete"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mBitmapList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/htc/home/personalize/util/BitmapUtils;->release(Ljava/util/ArrayList;)V

    .line 281
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->getCount()I

    move-result v1

    .line 272
    .local v1, size:I
    iget-object v2, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mBitmapList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/htc/home/personalize/util/BitmapUtils;->release(Ljava/util/ArrayList;)V

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mBitmapList:Ljava/util/ArrayList;

    .line 274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 275
    iget-object v2, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mBitmapList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method

.method public setCustomized(Z)V
    .locals 0
    .parameter "customized"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mCustomized:Z

    .line 103
    return-void
.end method

.method public setDeleteAnimation(Z)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mAnimation:Z

    .line 123
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 0
    .parameter "deleteMode"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mDeleteMode:Z

    .line 127
    return-void
.end method

.method public setDeletedIndex([Z)V
    .locals 0
    .parameter "index"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mDeletedIndex:[Z

    .line 119
    return-void
.end method

.method public setGalleryData(Lcom/htc/home/personalize/config/GalleryData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    .line 107
    return-void
.end method

.method public setGridMode(Z)V
    .locals 0
    .parameter "gridMode"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mGridMode:Z

    .line 131
    return-void
.end method

.method public setItemResource(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 98
    iput p1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mItemResource:I

    .line 99
    return-void
.end method

.method public setNetworkData(Lcom/htc/home/personalize/config/GalleryData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    .line 111
    return-void
.end method

.method public setWallpaperData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/htc/home/personalize/widget/WallpaperGridAdapter;->mWallpapers:Ljava/util/ArrayList;

    .line 115
    return-void
.end method
