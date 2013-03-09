.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "AlbumTrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArtistAlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;,
        Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private final mBuffer:Ljava/lang/StringBuilder;

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mChildLayoutResId:I

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mFormatArgs:[Ljava/lang/Object;

.field private mGroupLayoutResId:I

.field private mListViewThumbHeight:I

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 13

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mListViewThumbHeight:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    move/from16 v0, p4

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    move/from16 v0, p7

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v1, 0x7f02004b

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020057

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070214

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    const v1, 0x7f070044

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    const v1, 0x7f070043

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x20d008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x20d008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    mul-int/lit8 v1, v10, 0x2

    sub-int v1, v11, v1

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mListViewThumbHeight:I

    return-void
.end method


# virtual methods
.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 5

    iget v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    const-string v3, "title"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v2, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v3, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    iget-object v3, v2, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const-string v4, "title"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v3, "artist"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v3, v2, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_b

    :cond_0
    const-string v18, "album"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object v10, v15

    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    :cond_1
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v15, :cond_2

    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    :cond_2
    const/16 v16, 0x1

    :goto_0
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v18, "album_art"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v16, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_4
    const/16 v16, 0x0

    goto :goto_0

    :cond_5
    sget-object v18, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v11

    if-nez v11, :cond_7

    const/4 v6, 0x0

    :goto_2
    if-nez v11, :cond_8

    const/4 v9, 0x0

    :goto_3
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_6

    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mListViewThumbHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mListViewThumbHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v4, v1, v2}, Lcom/htc/music/util/MusicUtils;->getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_9

    new-instance v14, Lcom/htc/music/util/MBitmap;

    invoke-direct {v14, v5, v3}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    sget-object v18, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v14}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;)Z

    invoke-virtual {v12, v5}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v11}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_2

    :cond_8
    invoke-virtual {v11}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_a
    invoke-virtual {v12, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_b
    const-string v18, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v18, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v18, "artist"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_c

    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v13, :cond_d

    new-array v0, v13, [C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v7, v0, v13, v1, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v13}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const-string v18, "album_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1}, Lcom/htc/music/util/MusicUtils;->getCachedArtwork(Landroid/content/Context;ILandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$402(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/SimpleCursorTreeAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_0

    new-instance v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;

    invoke-direct {v1, p0, v3, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;ZZ)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;

    invoke-direct {v1, p0, v2, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;ZZ)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v11, v10

    :goto_0
    return-object v11

    :cond_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title_key"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "album_id"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "artist_id"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "duration"

    aput-object v1, v2, v0

    const-string v5, "title COLLATE NOCASE ASC"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "track, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "title != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND album_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_1

    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :goto_1
    move-object v11, v10

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const-string v1, "external"

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND artist_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v0, " AND "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND composer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;ZZ)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)V

    const v2, 0x7f080042

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    const v2, 0x7f080043

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x202001a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkBoxButton:Lcom/htc/widget/HtcListItemImageButton;

    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkBoxButton:Lcom/htc/widget/HtcListItemImageButton;

    const v3, 0x208019d

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkBoxButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    const/high16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v0
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)V

    const v2, 0x7f080042

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const v2, 0x7f080043

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x202001a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkBoxButton:Lcom/htc/widget/HtcListItemImageButton;

    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkBoxButton:Lcom/htc/widget/HtcListItemImageButton;

    const v3, 0x208019d

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkBoxButton:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    iget v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
