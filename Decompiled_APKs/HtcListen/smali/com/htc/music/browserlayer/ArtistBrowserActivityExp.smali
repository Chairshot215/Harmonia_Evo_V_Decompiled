.class public Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "ArtistBrowserActivityExp.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final ARTIST_ALBUM_TRACK_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC, album COLLATE NOCASE ASC, track"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field private static final TAG:Ljava/lang/String; = "[ArtistBrowserActivityExp]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"

.field private static final TYPE_ALBUM:I = 0x2

.field private static final TYPE_ARTIST:I = 0x1


# instance fields
.field albumTitleLen:I

.field private mActivityResultBacked:Z

.field mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

.field private mAdapterSent:Z

.field mAlbumCols:[Ljava/lang/String;

.field mArtistCols:[Ljava/lang/String;

.field mAsyncQuerying:Z

.field mBusy:Z

.field mContext:Landroid/content/Context;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistId:Ljava/lang/String;

.field private mCurrentArtistName:Ljava/lang/String;

.field mCursor:Landroid/database/Cursor;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDeleteType:I

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mFilter:Ljava/lang/String;

.field private mIsDestroy:Z

.field mLayoutlist:[I

.field private mListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mNodeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/HtcListNode;",
            ">;"
        }
    .end annotation
.end field

.field private mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

.field private mSelectPosition:I

.field private preSearchTime:J

.field scanning:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "number_of_albums"

    aput-object v2, v0, v1

    const-string v1, "number_of_tracks"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mArtistCols:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    const-string v1, "numsongs"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "minyear"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "maxyear"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_art"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mBusy:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mNodeList:Ljava/util/LinkedList;

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mIsDestroy:Z

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mLayoutlist:[I

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->scanning:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->albumTitleLen:I

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAsyncQuerying:Z

    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$1;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$2;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$3;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$4;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iput v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iput v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDeleteType:I

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mFilter:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->preSearchTime:J

    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$7;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x84t 0x0t 0x9t 0x2t
        0x75t 0x0t 0x9t 0x2t
        0x85t 0x0t 0x9t 0x2t
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->hideHtcContextMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDeleteType:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setTitle()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setActivitTitle(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method private afterDeleting()V
    .locals 7

    const/4 v6, 0x2

    const-string v4, "[ArtistBrowserActivityExp]"

    const-string v5, "@@@@ afterDeleting()"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v0, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    if-eqz v2, :cond_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    iget v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    invoke-virtual {v4, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    iget v3, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    iget v3, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->delRootNode(I)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v1

    iget v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    iget v4, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-eq v4, v6, :cond_5

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    iget v4, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-eq v4, v6, :cond_5

    :cond_4
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->delRootNode(I)V

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->delChildNode(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18

    const-string v1, "[ArtistBrowserActivityExp]"

    const-string v2, "@@@@ getArtistCursor() - start"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p2, 0x0

    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist != \'\' "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND artist != \'<unknown>\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    if-nez p2, :cond_2

    const/4 v13, 0x1

    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const v1, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v1, v14

    new-array v7, v1, [Ljava/lang/String;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v9

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/text/Collator;->setStrength(I)V

    const/4 v10, 0x0

    :goto_1
    array-length v1, v14

    if-ge v10, v1, :cond_3

    aget-object v1, v14, v10

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v13, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v14, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    :goto_2
    array-length v1, v14

    if-ge v10, v1, :cond_4

    const-string v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "artist LIKE ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v1, "[ArtistBrowserActivityExp]"

    const-string v2, "getArtistCursor() - 1"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    if-eqz p1, :cond_7

    const-string v1, "[ArtistBrowserActivityExp]"

    const-string v2, "getArtistCursor() - 2"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAsyncQuerying:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mArtistCols:[Ljava/lang/String;

    const-string v8, "artist COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    if-eqz v11, :cond_6

    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->init(Landroid/database/Cursor;)V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setTitle()V

    :cond_6
    return-object v11

    :cond_7
    const-string v1, "[ArtistBrowserActivityExp]"

    const-string v2, "getArtistCursor() - 3"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mArtistCols:[Ljava/lang/String;

    const-string v8, "artist COLLATE NOCASE ASC"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getUnknownArtist()Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_5

    new-instance v12, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    const/4 v2, 0x1

    aput-object v15, v1, v2

    invoke-direct {v12, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v11, v12

    goto :goto_3
.end method

.method private getDeleteDesc()Ljava/lang/String;
    .locals 12

    const v11, 0x7f070016

    const v10, 0x7f070015

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v6, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const v6, 0x7f070043

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v5, v6, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v5, :pswitch_data_0

    :cond_2
    const-string v2, ""

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :pswitch_2
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v1, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v6, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v6, "<unknown>"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    const v6, 0x7f070044

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_8

    const v6, 0x7f070018

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const v6, 0x7f070017

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSelectList(ZLcom/htc/music/NpCategory;)[I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v0, v3, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    :cond_3
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForArtistAndPrepare(Landroid/content/Context;I)[I

    move-result-object v1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    if-nez v3, :cond_6

    move-object v1, v2

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;I)[I

    move-result-object v1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    goto :goto_0
.end method

.method private getSelectedItemType()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v0, v3, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setActivitTitle(I)V
    .locals 2

    const-string v0, ""

    const v1, 0x7f07001d

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setArtistAlbumInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget v4, p1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v1, p1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    const v4, 0x7f070043

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    iget-object v4, p1, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    iget-object v4, p1, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v4, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v4, v2, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    iget-object v4, v2, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v4, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v4, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    iget-object v4, p1, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v4, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setTitle()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setActivitTitle(I)V

    return-void
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->playAllAction(Z)Z

    move-result v0

    return v0
.end method

.method public delChildNode(I)V
    .locals 12

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v8, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v8, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v9, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v8, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    iget-object v9, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getArtistAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v8, v9, v10, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$1600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    iget v6, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    const/4 v2, 0x0

    add-int/lit8 v3, v6, 0x2

    :goto_1
    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/HtcListNode;

    iget v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v8, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v8, v11}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setDatasetChanged(Z)V

    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v8}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)V

    goto :goto_0

    :cond_3
    iget v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-ne v7, v8, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    :cond_6
    iput-object v1, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iput v2, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public delRootNode(I)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v5, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    invoke-direct {p0, v7, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->init(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_1
    if-eqz v2, :cond_5

    iput-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getCount()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_5

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    iget v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v5, :cond_2

    iget-object v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    iput-object v7, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    :cond_4
    iput-object v2, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iput v0, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setDatasetChanged(Z)V

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)V

    goto :goto_0
.end method

.method getUnknownArtist()Landroid/database/Cursor;
    .locals 7

    const/4 v4, 0x0

    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mArtistCols:[Ljava/lang/String;

    const-string v3, "artist = \'<unknown>\'"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showDatabaseError()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->closeContextMenu()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->closeContextMenu()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showDatabaseError()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->hideEmptyErrorView()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setFastScrollEnabled(Z)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setTextFilterEnabled(Z)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->init(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    const-string v2, "Artist"

    iput-object v2, v1, Lcom/htc/music/browserlayer/HTCCursorAdapter;->tag:Ljava/lang/String;

    const-string v1, "[ArtistBrowserActivityExp]"

    const-string v2, "@@@@ init(Cursor c) ok"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method isAsyncQuerying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mActivityResultBacked:Z

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "playlist"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    :sswitch_0
    new-instance v3, Lcom/htc/music/NpCategory;

    invoke-direct {v3, v6}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v4, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v2

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-eqz v2, :cond_0

    invoke-static {p0, v2, v6, v3}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v6, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v5, "pickermode"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "AddToPlaylistData"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v6, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectedItemType()I

    move-result v5

    iput v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDeleteType:I

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getDeleteDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showDeleteDialog(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xa -> :sswitch_3
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->requestWindowFeature(I)Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setVolumeControlStream(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    iput-boolean v9, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mIsDestroy:Z

    iput-object p0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const-string v0, "[ArtistBrowserActivityExp]"

    const-string v1, "start query"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mNodeList:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mLayoutlist:[I

    const/16 v7, 0x10

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;Landroid/content/Context;Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;Landroid/database/Cursor;Ljava/util/LinkedList;[II)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0, v9}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setActivitTitle(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setActivity(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    const v0, 0x7f07009b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setSearchHint(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->enableSearch()V

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x5

    const v7, 0x7f07004e

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v6, 0x1

    const v7, 0x7f07004f

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 v6, 0xa

    const v7, 0x20c01fc

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    iget v5, v3, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v6, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v4

    iput v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-eqz v4, :cond_0

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setArtistAlbumInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V

    iget v6, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v6, "ArtistBrowserActivity"

    const-string v7, "bad menuInfo"

    invoke-static {v6, v7, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :pswitch_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const v6, 0x7f070044

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/16 v0, 0x9

    const v1, 0x7f070008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xc

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809d2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    const v1, 0x20c0200

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDeletionCompleted()V
    .locals 2

    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDeletionCompleted()V

    const-string v0, "ArtistBrowserActivityExp"

    const-string v1, "call onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDeleteType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->afterDeleting()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapterSent:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->destroy()V

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mIsDestroy:Z

    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    :cond_4
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 12

    const/4 v8, 0x0

    const/4 v11, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return v11

    :sswitch_0
    new-instance v5, Lcom/htc/music/NpCategory;

    invoke-direct {v5, v8}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v11, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v4

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 v5, 0x0

    :cond_1
    if-eqz v4, :cond_0

    invoke-static {p0, v4, v8, v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v7, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v2, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v7, "pickermode"

    invoke-virtual {v2, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v11}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectedItemType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v8, v9}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v7, "[ArtistBrowserActivityExp]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ADD_TO_QUEUE, long click artist item, NumberFormatException e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v7, "[ArtistBrowserActivityExp]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ADD_TO_QUEUE, long click artist item, RemoteException e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v8, v9, v10}, Lcom/htc/music/IMediaPlaybackService;->addToQueueForMultiConditions(III)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const-string v7, "[ArtistBrowserActivityExp]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ADD_TO_QUEUE, long click album item, NumberFormatException e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    const-string v7, "[ArtistBrowserActivityExp]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ADD_TO_QUEUE, long click album item, RemoteException e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectedItemType()I

    move-result v7

    iput v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDeleteType:I

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getDeleteDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showDeleteDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v7, :cond_2

    const-string v7, "[ArtistBrowserActivityExp]"

    const-string v8, "select node is null in Search. return "

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v3, v7, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->searchViaArtistName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->searchViaArtistName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xa -> :sswitch_3
        0xd -> :sswitch_2
        0x11 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v6, p3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v5

    iput p3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    iput-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-eqz v5, :cond_1

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    invoke-direct {p0, v5, p3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setArtistAlbumInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V

    const/4 v3, 0x0

    iget v6, v5, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    if-nez v3, :cond_5

    if-nez v0, :cond_4

    const/4 v6, 0x5

    new-array v4, v6, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const v7, 0x7f07004e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const v7, 0x7f07004f

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const v7, 0x7f070050

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const v7, 0x20c01fc

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const v7, 0x20c0138

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x5

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->hideHtcContextMenu()V

    invoke-virtual {p0, v1, v4, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    :cond_1
    const/4 v6, 0x0

    return v6

    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    const v6, 0x7f070043

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-ne v1, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const v6, 0x7f070044

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const v7, 0x7f07004e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const v7, 0x7f07004f

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const v7, 0x20c01fc

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const v7, 0x20c0138

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    new-array v2, v6, [I

    fill-array-data v2, :array_1

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const v7, 0x7f07004e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const v7, 0x7f07004f

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const v7, 0x7f070050

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const v7, 0x20c01fc

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    new-array v2, v6, [I

    fill-array-data v2, :array_2

    goto/16 :goto_1

    :cond_6
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const v7, 0x7f07004e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const v7, 0x7f07004f

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const v7, 0x20c01fc

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    new-array v2, v6, [I

    fill-array-data v2, :array_3

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->notifyDataSetInvalidated()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xc -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->isDatesetChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setDatasetChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setAutoRequery(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setTitle()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v1, v5, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setAutoRequery(ZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mActivityResultBacked:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->isDatesetChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->init(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v1, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setDatasetChanged(Z)V

    :cond_1
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mActivityResultBacked:Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showSpinner(Z)V

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showSpinner(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setAutoRequeryOffAndAutoOn()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setAutoRequery(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->preSearchTime:J

    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mFilter:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public playAllAction(Z)Z
    .locals 12

    const/4 v7, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is_music>=1"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND artist != \'\' "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND artist != \'<unknown>\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "artist COLLATE NOCASE ASC, album COLLATE NOCASE ASC, track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v9, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is_music>=1"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND artist= \'<unknown>\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    new-instance v8, Landroid/database/MergeCursor;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    invoke-direct {v8, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v7, v8

    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v6, Lcom/htc/music/NpCategory;

    const/4 v0, 0x5

    invoke-direct {v6, v0}, Lcom/htc/music/NpCategory;-><init>(S)V

    :cond_1
    if-eqz p1, :cond_4

    invoke-static {p0, v7, v6}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    if-eqz v9, :cond_0

    move-object v7, v9

    goto :goto_0

    :cond_4
    invoke-static {p0, v7, v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_1
.end method

.method protected showDeleteDialog(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x20c01fc

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$6;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$6;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$5;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$5;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    return-void
.end method
