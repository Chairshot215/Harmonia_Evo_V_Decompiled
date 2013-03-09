.class Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "EditPlaylistActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$QueryHandler;,
        Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

.field private mAlbumArtIndex:I

.field mAlbumIdIdx:I

.field mAlbumIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDisableNowPlayingIndicator:Z

.field private mDrmLockIconResId:I

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field mIsNowPlaying:Z

.field private mListViewHeight:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mTitleIdx:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/EditPlaylistActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
    .locals 12

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mConstraintIsValid:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mListViewHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    iput-object p2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mIsNowPlaying:Z

    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    new-instance v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020057

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v1, 0x20d008b

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const v1, 0x20d008f

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    mul-int/lit8 v1, v9, 0x2

    sub-int v1, v10, v1

    iput v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mListViewHeight:I

    new-instance v1, Lcom/htc/music/util/AsyncImageDecoder;

    iget v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mListViewHeight:I

    iget v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mListViewHeight:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    const v1, 0x7f020001

    iput v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDrmLockIconResId:I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/EditPlaylistActivity;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mTitleIdx:I

    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mArtistIdx:I

    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mAlbumIdx:I

    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mAlbumIdIdx:I

    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mAlbumArtIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v1, v4, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v12}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v8, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string v1, "<unknown>"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    if-nez v18, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const-string v1, "_data"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v1, "mime_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v15, :cond_a

    const-string v1, "content://drm/"

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, v16

    if-le v1, v0, :cond_2

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    iget-boolean v1, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mChecked:Z

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    :cond_2
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "common_rearrange_selector"

    const v5, 0x7f020069

    invoke-static {v1, v4, v5}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    :cond_3
    return-void

    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v10

    if-nez v10, :cond_7

    const/4 v7, 0x0

    :goto_3
    if-nez v10, :cond_8

    const/4 v9, 0x0

    :goto_4
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v6, v4

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v10}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_3

    :cond_8
    invoke-virtual {v10}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_9
    invoke-virtual {v11, v7}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v13, :cond_b

    const-string v1, "audio/x-wma-drm"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    goto/16 :goto_2

    :cond_b
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$600(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #setter for: Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$602(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 2

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)V

    const v2, 0x7f080075

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    new-instance v3, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$1;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$1;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080042

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f080043

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    :cond_0
    const v2, 0x202001a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 13

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v11}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    array-length v11, v0

    const/4 v12, 0x1

    if-ge v11, v12, :cond_4

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, p5, v11

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    aget-object v11, p5, v11

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    aget-object v10, p5, v11

    check-cast v10, Ljava/lang/String;

    :cond_5
    new-instance v4, Lcom/htc/music/util/MBitmap;

    invoke-direct {v4, p2, v10}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    sget-object v11, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-wide/from16 v0, p3

    invoke-virtual {v11, p1, v4, v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    invoke-virtual {v8, v6}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_7

    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    const v11, 0x7f080042

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, p1, :cond_6

    invoke-virtual {v3, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #calls: Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$700(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    return-void
.end method
