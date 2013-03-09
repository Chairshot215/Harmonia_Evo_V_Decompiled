.class public Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "LocalMusicSearchActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$AlbumQueryHandler;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListInfoItems;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListSubTitle;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$OnlineSearchItem;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchTextWatcher;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field public static final INTENT_MSG_DEFAULT_SEARCH_KEY:Ljava/lang/String; = "default_search_key"

.field private static final TAG:Ljava/lang/String; = "[LocalMusicSearchActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"

.field private static final TYPE_ALBUM:I = 0x4

.field private static final TYPE_ARTIST:I = 0x3

.field private static final TYPE_NO_RESULT:I = 0x6

.field private static final TYPE_SEPARATOR:I = 0x2

.field private static final TYPE_STORE:I = 0x1

.field private static final TYPE_TRACK:I = 0x5

.field private static final TYPE_UNKNOWN:I


# instance fields
.field private final ALBUM_LIST:I

.field private final ARTIST_LIST:I

.field private final DELAY_REFRESH_LIST_VIEW:I

.field private final MSG_DO_ALL_SEARCH:I

.field private final MSG_HANDLE_PROGRESS:I

.field private final MSG_REFRESH_LISTVIEW:I

.field private final MSG_UPDATE_SEARCH_LIST:I

.field private final QUERY_TYPE_CATEGORY_COUNT:I

.field private final TRACK_LIST:I

.field mAlbumCols:[Ljava/lang/String;

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mAlbumCursorAlbumIndex:I

.field private mAlbumCursorArtIndex:I

.field private mAlbumCursorIdIndex:I

.field private mAlbumNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

.field private mAlbumNoResultItemIndex:I

.field private mAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mAlbumResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumSubTitleIndex:I

.field private mAlbumSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

.field mArtistCols:[Ljava/lang/String;

.field private mArtistCursor:Landroid/database/Cursor;

.field private mArtistCursorArtistIndex:I

.field private mArtistCursorIdIndex:I

.field private mArtistNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

.field private mArtistNoResultItemIndex:I

.field private mArtistQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mArtistResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mArtistSubTitleIndex:I

.field private mArtistSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

.field private mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field mAsyncQuerying:Z

.field private mCurrentSearchToken:I

.field private mDefaultSearchKey:Ljava/lang/String;

.field mInputBox:Lcom/htc/widget/HeaderBarInput;

.field private mIsSearchingCount:I

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

.field private mNoResultCount:I

.field private mOnlineSearchIndex:I

.field private mOnlineSearchItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

.field mRes:Landroid/content/res/Resources;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

.field private mSearchCount:I

.field private mSearchList:Lcom/htc/widget/HtcListView;

.field private mSearchResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchStr:Landroid/widget/AutoCompleteTextView;

.field mTrackCols:[Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackCursorArtIndex:I

.field private mTrackCursorArtistIndex:I

.field private mTrackCursorIdIndex:I

.field private mTrackCursorTitleIndex:I

.field private mTrackNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

.field private mTrackNoResultItemIndex:I

.field private mTrackQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mTrackResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackSubTitleIndex:I

.field private mTrackSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;

    iput v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    iput v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->QUERY_TYPE_CATEGORY_COUNT:I

    iput v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNoResultCount:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->DELAY_REFRESH_LIST_VIEW:I

    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    new-instance v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$1;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    iput v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->MSG_REFRESH_LISTVIEW:I

    iput v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->MSG_UPDATE_SEARCH_LIST:I

    iput v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->MSG_DO_ALL_SEARCH:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->MSG_HANDLE_PROGRESS:I

    iput v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->ARTIST_LIST:I

    iput v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->ALBUM_LIST:I

    iput v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->TRACK_LIST:I

    new-instance v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorIdIndex:I

    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorArtistIndex:I

    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorIdIndex:I

    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I

    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorArtIndex:I

    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorIdIndex:I

    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorTitleIndex:I

    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtistIndex:I

    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtIndex:I

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCols:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v5

    const-string v1, "album_art"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCols:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "title_key"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCols:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncQuerying:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorIdIndex:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorIdIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorArtIndex:I

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorArtIndex:I

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorIdIndex:I

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorIdIndex:I

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorTitleIndex:I

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorTitleIndex:I

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtistIndex:I

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtistIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtIndex:I

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtIndex:I

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchIndex:I

    return p1
.end method

.method static synthetic access$2402(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleIndex:I

    return p1
.end method

.method static synthetic access$2502(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    return p1
.end method

.method static synthetic access$2602(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleIndex:I

    return p1
.end method

.method static synthetic access$2702(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItemIndex:I

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItemIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItemIndex:I

    return p1
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->initOnlineSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNoResultCount:I

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$408(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 2

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNoResultCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNoResultCount:I

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/widget/HtcListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mCurrentSearchToken:I

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->handleProgress(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorIdIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorIdIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorArtistIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorArtistIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private clickTrackItem(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    const/4 v2, 0x1

    new-array v1, v2, [I

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getId()J
    invoke-static {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v1, v4

    const/4 v2, 0x0

    invoke-static {p0, v1, v4, v2}, Lcom/htc/music/util/MusicUtils;->playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    return-void
.end method

.method private doLocalSearch(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;J)V

    return-void
.end method

.method private doLocalSearch(Ljava/lang/String;J)V
    .locals 3

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    const/4 v2, 0x0

    const/4 v11, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "album != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "album = \'<unknown>\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    new-array v6, v11, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "album LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    iput-boolean v11, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncQuerying:Z

    iget v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mCurrentSearchToken:I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "album COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->handleProgress(Z)V

    :goto_0
    return-object v8

    :cond_1
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncQuerying:Z

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "album COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0
.end method

.method private getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const/4 v10, 0x1

    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "@@@@ getArtistCursor() - start"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "artist != \'\' "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND artist != \'<unknown>\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-array v6, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "artist LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "getArtistCursor() - 1"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    if-eqz p1, :cond_2

    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "getArtistCursor() - 2"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v10, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncQuerying:Z

    iget v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mCurrentSearchToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCols:[Ljava/lang/String;

    const-string v7, "artist COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v10}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->handleProgress(Z)V

    :goto_0
    return-object v8

    :cond_2
    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "getArtistCursor() - 3"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCols:[Ljava/lang/String;

    const-string v7, "artist COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0
.end method

.method private getItemViewType(I)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchIndex:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleIndex:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleIndex:I

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItemIndex:I

    if-eq p1, v0, :cond_3

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItemIndex:I

    if-eq p1, v0, :cond_3

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItemIndex:I

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleIndex:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleIndex:I

    if-le p1, v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    if-le p1, v0, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleIndex:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleIndex:I

    if-le p1, v0, :cond_7

    const/4 v0, 0x3

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    move v0, v10

    :goto_0
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncQuerying:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "title != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-array v6, v10, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "title LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, " AND is_music>=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mCurrentSearchToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v10}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->handleProgress(Z)V

    const/4 v8, 0x0

    :goto_1
    return-object v8

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1
.end method

.method private goToAlbumDetail(I)V
    .locals 6

    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getId()J
    invoke-static {v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "[LocalMusicSearchActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Going to launch album detail view. albumId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "com.htc.media/albumtrack"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "albumid"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private goToArtistDetail(I)V
    .locals 5

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "artistid"

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getId()J
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private goToOnlineSearch(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "default_search_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleProgress(Z)V
    .locals 3

    const-string v0, "[LocalMusicSearchActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProgress, startSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    goto :goto_0

    :cond_1
    const-string v0, "[LocalMusicSearchActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProgress, mIsSearchingCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initInOnCreate()V
    .locals 4

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchCount:I

    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$OnlineSearchItem;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f07019b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$OnlineSearchItem;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListSubTitle;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f07001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListSubTitle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListSubTitle;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f07001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListSubTitle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListSubTitle;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f07001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListSubTitle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f070108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListInfoItems;

    invoke-direct {v1, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListInfoItems;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListInfoItems;

    invoke-direct {v1, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListInfoItems;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListInfoItems;

    invoke-direct {v1, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListInfoItems;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistQueryHandler:Landroid/content/AsyncQueryHandler;

    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$AlbumQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$AlbumQueryHandler;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    return-void
.end method

.method private initOnlineSearch(Ljava/lang/String;)V
    .locals 3

    const-string v0, "[LocalMusicSearchActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do initOnlineSearch(key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mCurrentSearchToken:I

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, v0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-direct {p0, v0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-direct {p0, v0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    return-void
.end method

.method private setTitle()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const v2, 0x7f080037

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    const v2, 0x7f020036

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    new-instance v2, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$3;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$3;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080040

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    const v2, 0x7f08008e

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarInput;

    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/HeaderBarInput;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    const v3, 0x7f0700ba

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchTextWatcher;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchTextWatcher;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    return-void
.end method


# virtual methods
.method DumpQueryItemIndex()V
    .locals 0

    return-void
.end method

.method clear()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchIndex:I

    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleIndex:I

    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleIndex:I

    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItemIndex:I

    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItemIndex:I

    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItemIndex:I

    iput v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    iput v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNoResultCount:I

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    :cond_5
    return-void
.end method

.method isAsyncQuerying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncQuerying:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "default_search_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->setVolumeControlStream(I)V

    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->setContentView(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->setTitle()V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->initInOnCreate()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->setActivity(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V

    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    return-void

    :cond_0
    const-string v0, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "default_search_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

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

.method protected onDestroy()V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->clear()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[LocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy, fail to unregisterReceiver(mScanListener), ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p5}, Lcom/htc/music/widget/MusicListActivity;->onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->goToOnlineSearch(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->goToArtistDetail(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->goToAlbumDetail(I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->clickTrackItem(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/16 v1, 0x16

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "default_search_key"

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4

    move v1, p2

    add-int v0, p2, p3

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->setPosition(I)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3

    const-string v0, "[LocalMusicSearchActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "onServiceDisconnected, Service is disconnected abnormally."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStop()V

    return-void
.end method
