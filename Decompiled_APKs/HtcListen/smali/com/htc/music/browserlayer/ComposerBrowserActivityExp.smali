.class public Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;
.super Lcom/htc/music/widget/HTCListActivity;
.source "ComposerBrowserActivityExp.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field private static final COMPOSER_DEFAULT_SORT_ORDER:Ljava/lang/String; = "composer COLLATE NOCASE ASC"

.field private static final DELETE_ALBUM:I = 0x2

.field private static final DELETE_ARTIST:I = 0x1

.field private static final DELETE_COMPOSER:I = 0x0

.field private static NODE_INDEX_ALBUMS:I = 0x0

.field private static NODE_INDEX_ARTIST:I = 0x0

.field private static NODE_INDEX_SONGS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[ComposerBrowserActivityExp]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field albumTitleLen:I

.field private mActivityResultBacked:Z

.field mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

.field private mAdapterSent:Z

.field mAlbumCols:[Ljava/lang/String;

.field private mAlbumId:Ljava/lang/String;

.field mArtistCols:[Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field mAsyncQuerying:Z

.field mBusy:Z

.field private mComposerName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDeleteType:I

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mFilter:Ljava/lang/String;

.field private mIsDestroy:Z

.field mLayoutlist:[I

.field private mListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mMenuTitle:Ljava/lang/String;

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

.field mSongCols:[Ljava/lang/String;

.field private preSearchTime:J

.field scanning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->NODE_INDEX_SONGS:I

    const/4 v0, 0x1

    sput v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->NODE_INDEX_ALBUMS:I

    const/4 v0, 0x2

    sput v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->NODE_INDEX_ARTIST:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/HTCListActivity;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "number_of_albums"

    aput-object v1, v0, v6

    const-string v1, "number_of_tracks"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistCols:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v5

    const-string v1, "artist"

    aput-object v1, v0, v6

    const-string v1, "numsongs"

    aput-object v1, v0, v7

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

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "title_key"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "album_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSongCols:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mBusy:Z

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mActivityResultBacked:Z

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mLayoutlist:[I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mNodeList:Ljava/util/LinkedList;

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mIsDestroy:Z

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->scanning:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->albumTitleLen:I

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAsyncQuerying:Z

    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$1;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$2;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDeleteType:I

    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$5;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$6;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mFilter:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->preSearchTime:J

    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$7;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 0x4
        0x84t 0x0t 0x9t 0x2t
        0x85t 0x0t 0x9t 0x2t
        0x85t 0x0t 0x9t 0x2t
        0x85t 0x0t 0x9t 0x2t
        0x75t 0x0t 0x9t 0x2t
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->hideHtcContextMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setTitle()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setActivitTitle(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDeleteType:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method private afterDeleting()V
    .locals 8

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v0, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    iget v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    invoke-virtual {v4, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    iget v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v6, v6, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getParentNode(II)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->delRootNode(I)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v1

    iget v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    iget v4, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-eq v4, v7, :cond_6

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    iget v4, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-eq v4, v7, :cond_6

    :cond_5
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->delRootNode(I)V

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->delChildNode(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18

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

    const-string v1, "is_music>=1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND composer is not null"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND composer != \'\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND composer != \'<unknown>\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    if-nez p2, :cond_2

    const/4 v13, 0x1

    :goto_0
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DISTINCT composer"

    aput-object v2, v5, v1

    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const v1, 0x7f070045

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

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

    aget-object v1, v14, v10

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v13, 0x1

    :cond_1
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

    const-string v1, "composer LIKE ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAsyncQuerying:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "composer COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-object v11

    :cond_6
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "composer COLLATE NOCASE ASC"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getUnknownComposer()Landroid/database/Cursor;

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
    .locals 11

    const v8, 0x7f070019

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v7, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v5, v7, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v5, :pswitch_data_0

    :cond_1
    const-string v3, ""

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/HtcListNode;

    iget v7, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v7, v9, :cond_6

    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v2, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v7, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v7, "<unknown>"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const v7, 0x7f070044

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x7f070018

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    const v7, 0x7f070017

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_6
    iget v7, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v2, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v7, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v7, "<unknown>"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    const v7, 0x7f070043

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v7

    if-eqz v7, :cond_9

    const v7, 0x7f070016

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_9
    const v7, 0x7f070015

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDeleteType()I
    .locals 7

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v0, v6, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v2, v3

    goto :goto_0

    :pswitch_1
    move v2, v3

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    iget v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v3, v5, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    iget v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v3, v4, :cond_0

    move v2, v5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSelectList(ZLcom/htc/music/NpCategory;)[I
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v6, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v2, v6, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v1, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-eqz v2, :cond_2

    if-ne v2, v8, :cond_5

    :cond_2
    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForComposerAndPrepare(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v3

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v5, "<unknown>"

    :cond_3
    if-eqz p2, :cond_0

    invoke-virtual {p2, v5}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForComposer(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_0

    :cond_5
    if-ne v2, v9, :cond_0

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    iget v6, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v6, v8, :cond_7

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v0, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v6, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;I)[I

    move-result-object v3

    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v3

    goto :goto_0

    :cond_7
    iget v6, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v6, v9, :cond_0

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v0, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v6, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForArtistAndPrepare(Landroid/content/Context;I)[I

    move-result-object v3

    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v3

    goto/16 :goto_0
.end method

.method private setActivitTitle(I)V
    .locals 2

    const-string v0, ""

    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setContextMenuInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V
    .locals 7

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    iget v5, p1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v1, p1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p1, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string v5, "<unknown>"

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iput-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v4, v2, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const-string v5, "<unknown>"

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    :goto_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iput-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    goto :goto_4

    :pswitch_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v5, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v6, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v4, v3, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_8
    const-string v5, "<unknown>"

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    :goto_5
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_9
    iget-object v5, v2, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    const v6, 0x7f070099

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const v5, 0x7f070044

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    iput-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    goto :goto_5

    :cond_b
    const v5, 0x7f070043

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    goto/16 :goto_0

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

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setActivitTitle(I)V

    return-void
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->playAllAction(Z)Z

    move-result v0

    return v0
.end method

.method public delChildNode(I)V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v8, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v8, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v9, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v1, 0x0

    iget-object v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    const v9, 0x7f070099

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    iget-object v9, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;
    invoke-static {v8, v9, v10}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$1000(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v8, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v8, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$1100(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget v6, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    const/4 v2, 0x0

    add-int/lit8 v3, v6, 0x2

    :goto_2
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/HtcListNode;

    iget v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v8, v10}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setDatasetChanged(Z)V

    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)V

    goto :goto_1

    :cond_4
    iget v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-ne v7, v8, :cond_6

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    :cond_7
    iput-object v1, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iput v2, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public delRootNode(I)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v5, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    invoke-direct {p0, v7, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->init(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_1
    if-eqz v2, :cond_5

    iput-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getCount()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_5

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    iget v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v5, :cond_2

    iget-object v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

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
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setDatasetChanged(Z)V

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)V

    goto :goto_0
.end method

.method getUnknownComposer()Landroid/database/Cursor;
    .locals 8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is_music>=1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    const-string v5, "random() desc limit 1"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "composer"

    aput-object v1, v2, v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showDatabaseError()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->closeContextMenu()V

    iget-boolean v1, p0, Lcom/htc/music/widget/HTCListActivity;->mIsExpActivityPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showDatabaseError()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->closeContextMenu()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setTitle()V

    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->hideEmptyErrorView()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setFastScrollEnabled(Z)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setTextFilterEnabled(Z)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->init(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const-string v2, "Composer"

    iput-object v2, v1, Lcom/htc/music/browserlayer/HTCCursorAdapter;->tag:Ljava/lang/String;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setTitle()V

    goto :goto_0
.end method

.method isAsyncQuerying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mActivityResultBacked:Z

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

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

    const/4 v4, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    :sswitch_0
    new-instance v2, Lcom/htc/music/NpCategory;

    invoke-direct {v2, v7}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v4, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v1

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :cond_1
    if-eqz v1, :cond_0

    invoke-static {p0, v1, v7, v2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v5, "pickermode"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "playlist"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x0

    invoke-direct {p0, v7, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    int-to-long v5, v3

    invoke-static {p0, v1, v5, v6}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getDeleteType()I

    move-result v5

    iput v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDeleteType:I

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getDeleteDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showDeleteDialog(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_0
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "[ComposerBrowserActivityExp]"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->requestWindowFeature(I)Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setVolumeControlStream(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    iput-boolean v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mIsDestroy:Z

    iput-object p0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-nez v0, :cond_1

    const-string v0, "####"

    const-string v1, "start query"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mNodeList:Ljava/util/LinkedList;

    const/16 v6, 0x10

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/content/Context;Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/database/Cursor;Ljava/util/LinkedList;I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0, v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setActivitTitle(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setActivity(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setSearchHint(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->enableSearch()V

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setActivity(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setDatesetUpdateCount(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->init(Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setTitle()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x5

    const v6, 0x7f07004e

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v5, 0x1

    const v6, 0x7f07004f

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 v5, 0xa

    const v6, 0x20c01fc

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget v4, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v5, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v3

    iput v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-eqz v3, :cond_0

    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setContextMenuInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v5, "ArtistBrowserActivity"

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

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

    const v1, 0x20809ea

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onDeletionCompleted()V
    .locals 2

    invoke-super {p0}, Lcom/htc/music/widget/HTCListActivity;->onDeletionCompleted()V

    const-string v0, "ComposerBrowserActivityExp"

    const-string v1, "call onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDeleteType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->afterDeleting()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapterSent:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->destroy()V

    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mIsDestroy:Z

    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    :cond_3
    invoke-super {p0}, Lcom/htc/music/widget/HTCListActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 5

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onHtcContextItemSelected(I)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    :sswitch_0
    new-instance v2, Lcom/htc/music/NpCategory;

    const/16 v4, 0x12

    invoke-direct {v2, v4}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v3, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v1

    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :cond_1
    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-static {p0, v1, v4, v2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "pickermode"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getDeleteType()I

    move-result v4

    iput v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDeleteType:I

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getDeleteDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showDeleteDialog(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v3, p3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v2

    iput p3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    iput-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-eqz v2, :cond_0

    invoke-direct {p0, v2, p3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setContextMenuInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V

    new-array v1, v6, [Ljava/lang/CharSequence;

    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const/4 v3, 0x1

    const v4, 0x7f07004f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const v4, 0x20c01fc

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    invoke-virtual {p0, v3, v1, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    :cond_0
    return v5

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->notifyDataSetInvalidated()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->isDatesetChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setDatasetChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setAutoRequery(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/htc/music/widget/HTCListActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

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
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/htc/music/widget/HTCListActivity;->onResume()V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setTitle()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v1, v5, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setAutoRequery(ZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mActivityResultBacked:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->isDatesetChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->init(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v1, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setDatasetChanged(Z)V

    :cond_1
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mActivityResultBacked:Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showSpinner(Z)V

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showSpinner(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setAutoRequeryOffAndAutoOn()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setAutoRequery(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setAutoRequeryOffAndAutoOn()V

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

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->preSearchTime:J

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mFilter:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public playAllAction(Z)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "album_id"

    aput-object v0, v2, v8

    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const-string v5, "composer COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v7, Lcom/htc/music/NpCategory;

    const/16 v0, 0x13

    invoke-direct {v7, v0}, Lcom/htc/music/NpCategory;-><init>(S)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p0, v6, v7}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_1
    return v8

    :cond_2
    invoke-static {p0, v6, v7}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_0
.end method

.method protected showDeleteDialog(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

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

    new-instance v3, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$3;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$3;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    return-void
.end method
