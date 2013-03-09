.class public Lcom/htc/music/widget/MediaLibraryAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaLibraryAdapter.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;,
        Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;
    }
.end annotation


# static fields
.field protected static final CATEGORY_MY_LIBRARY_INDEX:I = 0x0

.field public static final CATEGORY_MY_LIBRARY_TAG:Ljava/lang/String; = "ArtistBrowserTabPlugin"

.field protected static final CATEGORY_MY_PLAYLIST_INDEX:I = 0x1

.field public static final CATEGORY_MY_PLAYLIST_TAG:Ljava/lang/String; = "PlaylistBrowserTabPlugin"

.field private static final TAG:Ljava/lang/String; = "[MediaLibraryAdapter]"


# instance fields
.field private mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/util/SourceItem;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    iput-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

    new-instance v2, Lcom/htc/music/widget/MediaLibraryAdapter$1;

    invoke-direct {v2, p0}, Lcom/htc/music/widget/MediaLibraryAdapter$1;-><init>(Lcom/htc/music/widget/MediaLibraryAdapter;)V

    iput-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mUIHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p1}, Lcom/htc/music/widget/MediaLibraryAdapter;->initialMediaLibraryItems(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v2, Lcom/htc/music/util/AlbumArtGetter;

    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/htc/music/util/AlbumArtGetter;-><init>(Landroid/content/Context;IILcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;)V

    iput-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

    return-void
.end method

.method private initialMediaLibraryItems(Landroid/content/Context;)V
    .locals 8

    const v7, 0x7f020062

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v3

    if-ne v6, v3, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "com.htc.media/artistalbumexp"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v3, "ShowActivityTitle"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Lcom/htc/music/util/SourceItem;

    const-string v3, "ArtistBrowserTabPlugin"

    invoke-direct {v1, v3, v0}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v3, 0x7f0700d6

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    iput v7, v1, Lcom/htc/music/util/SourceItem;->mIconRes:I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "com.htc.media/playlist"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ShowActivityTitle"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v2, Lcom/htc/music/util/SourceItem;

    const-string v3, "PlaylistBrowserTabPlugin"

    invoke-direct {v2, v3, v0}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v3, 0x7f0700e7

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    iput v7, v2, Lcom/htc/music/util/SourceItem;->mIconRes:I

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/htc/music/util/SourceItem;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    iput-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    return-void

    :cond_0
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "com.htc.media/artistalbum"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public clearBitmapResource()V
    .locals 4

    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/htc/music/util/SourceItem;->mAlbumId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MediaLibraryAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    if-ltz p1, :cond_0

    iget-object v6, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v6, v6

    if-le v6, p1, :cond_0

    if-nez p2, :cond_2

    iget-object v6, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03002f

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;

    invoke-direct {v1, v5}, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/MediaLibraryAdapter$1;)V

    const v5, 0x7f080096

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    const v5, 0x7f080098

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const v5, 0x7f080097

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageCover:Landroid/widget/ImageView;

    new-instance v0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;

    iget-object v5, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v6, v6, p1

    invoke-direct {v0, v5, v6}, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/util/SourceItem;)V

    iget-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const v5, 0x7f0800fe

    iget-object v6, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    const-string v8, "music_song_cover_pressed"

    const v9, 0x7f020061

    invoke-static {v7, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    iget-object v5, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v5, p1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;

    iget-object v5, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    iget-object v6, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    iget-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;

    iput-object v2, v0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mSource:Lcom/htc/music/util/SourceItem;

    iget-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v5, p2

    goto/16 :goto_0

    :cond_3
    iget-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    iget v6, v2, Lcom/htc/music/util/SourceItem;->mIconRes:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    if-eqz p5, :cond_0

    array-length v1, p5

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :try_start_0
    aget-object v1, p5, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/music/widget/MediaLibraryAdapter;->setImage(ILandroid/graphics/Bitmap;I)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public refreshAlbumArt()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/util/AlbumArtGetter;->getFirstArtistAlbumArtId(I)V

    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/util/AlbumArtGetter;->getFirstPlaylistAlbumArtId(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[MediaLibraryAdapter]"

    const-string v1, "mAlbumArtGetter is null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

    invoke-virtual {v2}, Lcom/htc/music/util/AlbumArtGetter;->release()V

    iput-object v4, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    iput-object v4, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/htc/music/util/SourceItem;->mAlbumId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected setImage(ILandroid/graphics/Bitmap;I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v1, v1

    if-gt v1, p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
