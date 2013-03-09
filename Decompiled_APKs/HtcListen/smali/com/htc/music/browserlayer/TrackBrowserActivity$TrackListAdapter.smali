.class Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

.field private mAlbumArtIndex:I

.field mAlbumIdIdx:I

.field mAlbumIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDisableNowPlayingIndicator:Z

.field private mDlnaMode:I

.field private mDrmLockIconResId:I

.field private mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

.field mIsNowPlaying:Z

.field private mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field private mcurContent:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
    .locals 12

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;Lcom/htc/music/browserlayer/TrackBrowserActivity$1;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    iput-object p2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    const v1, 0x7f070043

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    const v1, 0x7f070044

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020057

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v1, 0x20d008b

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const v1, 0x20d008f

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    mul-int/lit8 v1, v9, 0x2

    sub-int v4, v10, v1

    new-instance v1, Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    move v5, v4

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    const v1, 0x7f020001

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDrmLockIconResId:I

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1502(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    return p1
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumArtIndex:I

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    :goto_0
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdIdx:I

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/music/widget/MusicAlphabetIndexer;

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    const-string v2, " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v0, p1, v1, v2}, Lcom/htc/music/widget/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 33

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v5, v5, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v6, 0x0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v1, v4, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4100(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v10, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextVisibility()I

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_0

    const-string v1, "<unknown>"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, " - "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1

    const-string v1, "<unknown>"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v1, v1

    move/from16 v0, v18

    if-ge v1, v0, :cond_2

    move/from16 v0, v18

    new-array v1, v0, [C

    move-object/from16 v0, v30

    iput-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v5, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v1, v0, v4, v5}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-static {v1, v4, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v16, :cond_7

    const/4 v15, -0x1

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_11

    :try_start_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_10

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v27

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move/from16 v0, v27

    invoke-interface {v1, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    if-nez v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v1, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-eq v1, v15, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-nez v1, :cond_12

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    if-nez v1, :cond_12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v15, :cond_12

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_6
    const v1, 0x7f02004b

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    :cond_7
    :goto_4
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "common_rearrange_selector"

    const v5, 0x7f020069

    invoke-static {v1, v4, v5}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    :cond_8
    :goto_5
    move-object/from16 v0, v30

    iget-object v11, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    :cond_9
    :goto_6
    move-object/from16 v0, v30

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v1, "mime_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    if-eqz v23, :cond_a

    const-string v1, "<unknown>"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_a
    const/16 v29, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    if-nez v29, :cond_b

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    const-string v1, "_data"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_1e

    const-string v1, "content://drm/"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    :goto_9
    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v1, :cond_c

    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v25

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v1, "audioid"

    invoke-virtual {v12, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "position"

    move/from16 v0, v25

    invoke-virtual {v12, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v1, v12}, Lcom/htc/widget/HtcListItemImageButton;->setTag(Ljava/lang/Object;)V

    :cond_c
    return-void

    :cond_d
    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v1, v4, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_10
    :try_start_2
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v15

    goto/16 :goto_3

    :catch_0
    move-exception v14

    :try_start_3
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_3

    :cond_11
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v15

    goto/16 :goto_3

    :cond_12
    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    if-ltz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    move/from16 v0, v28

    if-ne v1, v0, :cond_14

    const v1, 0x7f02004b

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    :cond_14
    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v4

    const-wide/16 v31, 0x0

    cmp-long v1, v4, v31

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCheckedView(Landroid/view/View;JZ)V

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCheckedView(Landroid/view/View;JZ)V

    goto/16 :goto_5

    :cond_17
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto/16 :goto_6

    :cond_18
    const/16 v29, 0x0

    goto/16 :goto_7

    :cond_19
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v17

    if-nez v17, :cond_1b

    const/4 v9, 0x0

    :goto_a
    if-nez v17, :cond_1c

    const/4 v13, 0x0

    :goto_b
    if-eqz v9, :cond_1a

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1a

    if-eqz v9, :cond_1d

    invoke-static {v13, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v6, v4

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    :cond_1b
    invoke-virtual/range {v17 .. v17}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_a

    :cond_1c
    invoke-virtual/range {v17 .. v17}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v13

    goto :goto_b

    :cond_1d
    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_8

    :cond_1e
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v1

    if-eqz v1, :cond_1f

    if-eqz v22, :cond_1f

    const-string v1, "audio/x-wma-drm"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    goto/16 :goto_9

    :cond_1f
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_9
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1402(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    :cond_3
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v2, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "track"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f080071

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V

    const v4, 0x7f080043

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const v4, 0x7f080075

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    new-instance v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$1;

    invoke-direct {v5, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$1;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isPickerMode()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_1
    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    :goto_0
    const v4, 0x7f080042

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const v4, 0x202001a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    const v4, 0x7f080044

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isPickerMode()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    :cond_4
    :goto_1
    new-instance v4, Landroid/database/CharArrayBuffer;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    const/16 v4, 0xc8

    new-array v4, v4, [C

    iput-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2

    :cond_5
    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0

    :cond_6
    const-string v4, "common_arrow"

    const v5, 0x20807c9

    invoke-static {p1, v4, v5}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$2;

    invoke-direct {v5, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$2;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 10

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v9}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    if-eqz p5, :cond_3

    array-length v9, p5

    if-lez v9, :cond_3

    const/4 v9, 0x0

    aget-object v9, p5, v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    aget-object v9, p5, v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    aget-object v8, p5, v9

    check-cast v8, Ljava/lang/String;

    :cond_3
    new-instance v2, Lcom/htc/music/util/MBitmap;

    invoke-direct {v2, p2, v8}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    sget-object v9, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v9, p1, v2, p3, p4}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    const v9, 0x7f080042

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p1, :cond_4

    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1200(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    return-void
.end method
