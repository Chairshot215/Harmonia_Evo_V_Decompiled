.class public Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;
.super Lcom/htc/widget/DeckControlAdapter;
.source "LiveWallpaperPanelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter$WallpaperUpdateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveWallpaperPanelAdapter"

.field public static localLOGV:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mDeletedIndex:[Z

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

.field private mLiveData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mPreloadBackground:Landroid/graphics/Bitmap;

.field private mScrolling:[Z

.field private mWallpaperUpdateCallback:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter$WallpaperUpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->localLOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/htc/widget/DeckControlAdapter;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mDeletedIndex:[Z

    .line 79
    iput-object p1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mContext:Landroid/content/Context;

    .line 80
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 84
    invoke-static {}, Lcom/htc/home/personalize/util/BitmapUtils;->getWallpaperOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 86
    iget-object v1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02000f

    iget-object v2, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mPreloadBackground:Landroid/graphics/Bitmap;

    .line 88
    return-void
.end method


# virtual methods
.method public deInit()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mPreloadBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mPreloadBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 173
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, size:I
    iget-object v1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mLiveData:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 125
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f0b0037

    .line 132
    const/4 v4, 0x0

    .line 134
    .local v4, titleAuthor:Landroid/widget/TextView;
    if-nez p2, :cond_2

    .line 135
    iget-object v6, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mItemResource:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, layout:Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 142
    .local v5, wallpaper:Landroid/widget/ImageView;
    :goto_0
    const v6, 0x7f0b0055

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 144
    .local v1, description:Landroid/widget/TextView;
    const-string v3, ""

    .line 145
    .local v3, strWallpaperImage:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mLiveData:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 146
    const-string v6, "LiveWallpaperPanelAdapter"

    const-string v7, "mLiveData == null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mImageCaches:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 158
    .local v0, bmpWallpaper:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 159
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    :cond_1
    :goto_2
    return-object v2

    .line 138
    .end local v0           #bmpWallpaper:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .end local v1           #description:Landroid/widget/TextView;
    .end local v2           #layout:Landroid/view/View;
    .end local v3           #strWallpaperImage:Ljava/lang/String;
    .end local v5           #wallpaper:Landroid/widget/ImageView;
    :cond_2
    move-object v2, p2

    .line 139
    .restart local v2       #layout:Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .restart local v5       #wallpaper:Landroid/widget/ImageView;
    goto :goto_0

    .line 147
    .restart local v1       #description:Landroid/widget/TextView;
    .restart local v3       #strWallpaperImage:Ljava/lang/String;
    :cond_3
    if-ltz p1, :cond_5

    iget-object v6, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_5

    .line 148
    iget-object v6, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/app/WallpaperInfo;

    if-eqz v6, :cond_4

    .line 149
    iget-object v6, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/WallpaperInfo;

    invoke-virtual {v6}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 150
    :cond_4
    iget-object v6, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    if-eqz v6, :cond_0

    .line 151
    iget-object v6, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    invoke-virtual {v6}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getServiceName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 154
    :cond_5
    const-string v6, "LiveWallpaperPanelAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mLiveData.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 161
    .restart local v0       #bmpWallpaper:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    :cond_6
    iget-object v6, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mPreloadBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    iget-object v6, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mWallpaperUpdateCallback:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter$WallpaperUpdateCallback;

    if-eqz v6, :cond_1

    .line 163
    iget-object v6, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mWallpaperUpdateCallback:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter$WallpaperUpdateCallback;

    invoke-interface {v6, p1}, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter$WallpaperUpdateCallback;->onWallpaperUpdate(I)V

    goto :goto_2
.end method

.method public setDeletedIndex([Z)V
    .locals 0
    .parameter "index"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mDeletedIndex:[Z

    .line 100
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
    .line 103
    .local p1, imageCaches:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;"
    iput-object p1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mImageCaches:Ljava/util/Map;

    .line 104
    return-void
.end method

.method public setItemResource(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 91
    iput p1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mItemResource:I

    .line 92
    return-void
.end method

.method public setLiveData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    iput-object p1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mLiveData:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method public setScrolling([Z)V
    .locals 0
    .parameter "scroll"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mScrolling:[Z

    .line 108
    return-void
.end method

.method public setWallpaperUpdateCallback(Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter$WallpaperUpdateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter;->mWallpaperUpdateCallback:Lcom/htc/home/personalize/widget/LiveWallpaperPanelAdapter$WallpaperUpdateCallback;

    .line 75
    return-void
.end method
