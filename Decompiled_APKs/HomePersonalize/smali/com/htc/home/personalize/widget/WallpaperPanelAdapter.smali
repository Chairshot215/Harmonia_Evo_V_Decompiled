.class public Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;
.super Lcom/htc/widget/DeckControlAdapter;
.source "WallpaperPanelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/widget/WallpaperPanelAdapter$WallpaperUpdateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperPanelAdapter"

.field public static localLOGV:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomized:Z

.field private mDeleteMode:Z

.field protected mDeletedIndex:[Z

.field private mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

.field private mImageCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemResource:I

.field private mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mPreloadBackground:Landroid/graphics/Bitmap;

.field private mPreviewH:I

.field private mPreviewW:I

.field private mResource:Landroid/content/res/Resources;

.field private mScrolling:[Z

.field private mWallpaperUpdateCallback:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter$WallpaperUpdateCallback;

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
    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->localLOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/home/personalize/WallpaperPicker;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/htc/widget/DeckControlAdapter;-><init>(Landroid/content/Context;)V

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mDeletedIndex:[Z

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mDeleteMode:Z

    .line 108
    iput-object p1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mContext:Landroid/content/Context;

    .line 109
    iget-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mResource:Landroid/content/res/Resources;

    .line 110
    invoke-virtual {p1}, Lcom/htc/home/personalize/WallpaperPicker;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 112
    invoke-static {}, Lcom/htc/home/personalize/util/BitmapUtils;->getWallpaperOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 115
    iget-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02000f

    iget-object v2, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mPreloadBackground:Landroid/graphics/Bitmap;

    .line 117
    iget-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mPreviewW:I

    .line 118
    iget-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mPreviewH:I

    .line 119
    return-void
.end method

.method private getWallpaperImagePath(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    .line 231
    move v0, p1

    .line 232
    .local v0, index:I
    iget-object v3, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v3}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    .line 233
    .local v1, networkSize:I
    const-string v2, ""

    .line 235
    .local v2, strImagePath:Ljava/lang/String;
    if-ge v0, v1, :cond_1

    .line 236
    iget-object v3, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v3, v0}, Lcom/htc/home/personalize/config/GalleryData;->getPreviewPath(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    :cond_0
    :goto_0
    return-object v2

    .line 240
    :cond_1
    iget-boolean v3, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mCustomized:Z

    if-eqz v3, :cond_0

    .line 244
    iget-object v3, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    sub-int v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/config/GalleryData;->getPreviewPath(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mPreloadBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mPreloadBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, size:I
    iget-boolean v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mDeleteMode:Z

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v0

    .line 170
    :goto_0
    return v0

    .line 163
    :cond_0
    iget-boolean v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mCustomized:Z

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    iget-object v2, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v2}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    iget-object v2, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mWallpapers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 178
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v11, 0x7f0b0038

    const v10, 0x7f0b0037

    const/16 v9, 0xff

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 186
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->getWallpaperImagePath(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    .end local p2
    :goto_0
    return-object p2

    .line 189
    .restart local p2
    :cond_0
    if-eqz p2, :cond_1

    instance-of v5, p2, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 190
    :cond_1
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mItemResource:I

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 191
    .local v2, layout:Landroid/view/View;
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 192
    .local v1, delete_cross:Landroid/widget/ImageView;
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 199
    .local v4, wallpaper:Landroid/widget/ImageView;
    :goto_1
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->getWallpaperImagePath(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, strWallpaperImage:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mImageCaches:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 202
    .local v0, bmpWallpaper:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 203
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 210
    :cond_2
    :goto_2
    iget-boolean v5, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mDeleteMode:Z

    if-eqz v5, :cond_6

    .line 211
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mDeletedIndex:[Z

    aget-boolean v5, v5, p1

    if-eqz v5, :cond_5

    .line 212
    const v5, 0x7f020003

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    const/16 v5, 0x7f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 215
    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_3
    move-object p2, v2

    .line 227
    goto :goto_0

    .line 194
    .end local v0           #bmpWallpaper:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .end local v1           #delete_cross:Landroid/widget/ImageView;
    .end local v2           #layout:Landroid/view/View;
    .end local v3           #strWallpaperImage:Ljava/lang/String;
    .end local v4           #wallpaper:Landroid/widget/ImageView;
    :cond_3
    move-object v2, p2

    .line 195
    .restart local v2       #layout:Landroid/view/View;
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 196
    .restart local v4       #wallpaper:Landroid/widget/ImageView;
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 197
    .restart local v1       #delete_cross:Landroid/widget/ImageView;
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 205
    .restart local v0       #bmpWallpaper:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .restart local v3       #strWallpaperImage:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mPreloadBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mWallpaperUpdateCallback:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter$WallpaperUpdateCallback;

    if-eqz v5, :cond_2

    .line 207
    iget-object v5, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mWallpaperUpdateCallback:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter$WallpaperUpdateCallback;

    invoke-interface {v5, p1}, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter$WallpaperUpdateCallback;->onWallpaperUpdate(I)V

    goto :goto_2

    .line 217
    :cond_5
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 219
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 222
    :cond_6
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 224
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public setCustomized(Z)V
    .locals 0
    .parameter "customized"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mCustomized:Z

    .line 127
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 0
    .parameter "deleteMode"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mDeleteMode:Z

    .line 147
    return-void
.end method

.method public setDeletedIndex([Z)V
    .locals 0
    .parameter "index"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mDeletedIndex:[Z

    .line 143
    return-void
.end method

.method public setGalleryData(Lcom/htc/home/personalize/config/GalleryData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    .line 131
    return-void
.end method

.method public setImageCache(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, imageCaches:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;"
    iput-object p1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mImageCaches:Ljava/util/Map;

    .line 151
    return-void
.end method

.method public setItemResource(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 122
    iput p1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mItemResource:I

    .line 123
    return-void
.end method

.method public setNetworkData(Lcom/htc/home/personalize/config/GalleryData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    .line 135
    return-void
.end method

.method public setScrolling([Z)V
    .locals 0
    .parameter "scroll"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mScrolling:[Z

    .line 155
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
    .line 138
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mWallpapers:Ljava/util/ArrayList;

    .line 139
    return-void
.end method

.method public setWallpaperUpdateCallback(Lcom/htc/home/personalize/widget/WallpaperPanelAdapter$WallpaperUpdateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/home/personalize/widget/WallpaperPanelAdapter;->mWallpaperUpdateCallback:Lcom/htc/home/personalize/widget/WallpaperPanelAdapter$WallpaperUpdateCallback;

    .line 104
    return-void
.end method
