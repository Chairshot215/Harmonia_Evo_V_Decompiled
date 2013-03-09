.class public Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;
.super Lcom/htc/music/widget/MusicListActivity;
.source "DlnaBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;,
        Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;,
        Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;
    }
.end annotation


# static fields
.field private static final BROWSE:I = 0xb

.field private static final DIALOG_LOADING:I = 0x0

.field public static final DLNA_CALLER_ALBUM:I = 0x0

.field public static final DLNA_CALLER_MUSIC:I = 0x1

.field private static final GETCURSOR:I = 0x3

.field private static final INSERT_NOMUSIC:I = 0xa

.field public static final INTENT_BROWSERLAYER:I = 0x0

.field public static final INTENT_UPPER:I = 0x1

.field public static final MENU_PLAYING:I = 0xd

.field public static final MENU_REFRESH:I = 0xa

.field public static final MENU_ROOT:I = 0xb

.field public static final MENU_UP:I = 0xc

.field private static final MUSIC_FOLDER:I = 0xb

.field private static final NO_MUSIC:I = 0xc

.field private static final QUERY_TIMER:I = 0x3

.field private static final REFRESH:I = 0x0

.field private static final REMOVE_DIALOG:I = 0x1

.field private static final REMOVE_SPINNER:I = 0x8

.field public static final RESULT_FINISH:I = 0x0

.field public static final RESULT_ROOT:I = 0x1

.field public static final RESULT_SERVER:I = 0x3

.field public static final RESULT_UPPER:I = 0x2

.field private static final SERVERLIST_ADD:I = 0x4

.field private static final SERVERLIST_REMOVE:I = 0x5

.field private static final SERVERLIST_UPDATE:I = 0x6

.field private static final SETSELECTION:I = 0x9

.field private static final SHOW_ERRDIALOG:I = 0x7

.field private static final ServiceError_ServerNotFound:I = -0x1f5

.field private static final TAG:Ljava/lang/String; = "DLNA"

.field private static final TIME_SHOWSPINNER:I = 0x7530

.field private static final UPnPError_AuthorizationFail:I = 0x321

.field private static final WIFI_ERROR:I = 0x2

.field private static final kUPnPError_ConnectionFailed:I = -0x1

.field private static mTime:J


# instance fields
.field public BROWSE_TYPE:I

.field private mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

.field private mBrowseEnd:J

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCurContainID:Ljava/lang/String;

.field private mCurContainName:Ljava/lang/String;

.field private mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

.field private mCurServerID:Ljava/lang/String;

.field private mCurServerImg:Ljava/lang/String;

.field private mCurServerName:Ljava/lang/String;

.field private mCurStartIdx:J

.field mCursorCols:[Ljava/lang/String;

.field private mDestroy:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitial:Z

.field private mListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field private mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;

.field private mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

.field private mServerList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mWifiListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    iput v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->BROWSE_TYPE:I

    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerImg:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainName:Ljava/lang/String;

    iput-wide v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurStartIdx:J

    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mDestroy:Z

    iput-wide v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mBrowseEnd:J

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$12;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$12;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mWifiListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$14;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$14;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$17;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$17;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "content_id"

    aput-object v1, v0, v2

    const-string v1, "content_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "thumbnail_uri"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurStartIdx:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mInitial:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mInitial:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mDestroy:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;

    return-object v0
.end method

.method static synthetic access$1500()J
    .locals 2

    sget-wide v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mTime:J

    return-wide v0
.end method

.method static synthetic access$1502(J)J
    .locals 0

    sput-wide p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mTime:J

    return-wide p0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mBrowseEnd:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mBrowseEnd:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;)Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerImg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerImg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    return-object v0
.end method


# virtual methods
.method public GetCursor(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/database/Cursor;
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serve_id = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "index_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "index_id COLLATE NOCASE ASC"

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    move-object v2, v7

    goto :goto_0
.end method

.method public GetCursorInfo(Landroid/database/Cursor;)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "DLNA"

    const-string v6, "GetCursorInfo"

    invoke-static {v3, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x0

    const/16 v24, -0x1

    new-instance v25, Ljava/util/LinkedList;

    invoke-direct/range {v25 .. v25}, Ljava/util/LinkedList;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetCursorInfo: Cursor length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x0

    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->getChildrenCount()I

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    move-object/from16 v0, v25

    invoke-virtual {v3, v6, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "content_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "content_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v3, "file_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v3, "serve_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "container"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "index_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v9, v3

    if-nez v23, :cond_4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_4

    const/16 v23, 0x1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainName:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v22

    int-to-long v11, v0

    const/4 v13, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v3, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filetype = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    const/16 v17, 0x0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const/16 v21, 0x1

    move-object v11, v2

    move-object/from16 v12, p0

    move-object v13, v4

    move-object v14, v5

    invoke-direct/range {v11 .. v21}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    move-object/from16 v0, v25

    invoke-virtual {v3, v6, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    goto/16 :goto_3
.end method

.method public browse(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "DLNA"

    const-string v1, "Browse"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "browse server = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "browse container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurStartIdx:J

    sput-wide v4, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mTime:J

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showSpinner(Z)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mBrowseEnd:J

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    const/16 v6, 0x1e

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelBrowse(Ljava/lang/Long;)V
    .locals 8

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "DLNA"

    const-string v1, "cancelBrowse"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public categoryRightAction()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->collapseAll()V

    const/4 v0, 0x1

    return v0
.end method

.method public clearData()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    :cond_1
    return-void
.end method

.method public collapseAll()V
    .locals 2

    const-string v0, "DLNA"

    const-string v1, "menu root"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurStartIdx:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->cancelBrowse(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->collapseAll()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showSpinner(Z)V

    return-void
.end method

.method public getFilePath(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object p1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_2
    if-ltz v1, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return file path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertNoMusicView()V
    .locals 11

    const/16 v10, 0xc

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v3, v9, 0x1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetFileType()I

    move-result v1

    if-ne v1, v10, :cond_0

    const-string v1, "DLNA"

    const-string v2, "find empty view"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {v0, v10}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->SetFileType(I)V

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v1, v2, v8}, Lcom/htc/widget/MoreExpandableHtcListView;->appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    const-string v1, "DLNA"

    const-string v2, "no music file"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public moveToTop()V
    .locals 3

    const-string v1, "DLNA"

    const-string v2, "press top of the folder"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpandedPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/MusicListActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->requestWindowFeature(I)Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->setVolumeControlStream(I)V

    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->setContentView(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->setTitle(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showLoading()V

    const v0, 0x7f0700bd

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showEmptyView(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mInitial:Z

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupCollapseListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->setFastScrollEnabled(Z)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const v6, 0x20c0163

    const v2, 0x20c0162

    const v5, 0x20c013d

    const v4, 0x20c013c

    const v3, 0x1080027

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :sswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x20c009e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c5

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$4;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$4;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$3;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$3;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v6, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$2;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$2;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700c3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$6;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$6;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$5;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$5;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$8;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$8;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$7;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$7;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c5

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$11;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$11;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$10;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$10;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v6, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$9;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$9;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1f5 -> :sswitch_2
        -0x1 -> :sswitch_3
        0x2 -> :sswitch_0
        0x321 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/16 v0, 0xd

    const v1, 0x7f07001b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a3f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xb

    const v1, 0x7f0700d1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080329

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xa

    const v1, 0x20c0202

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xc

    const v1, 0x7f0700d2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a95

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showLoading()V

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->browse(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    const-string v5, "DLNA"

    const-string v6, "Play all, check DLNA mode first"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {p0, v5, v6, v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v2

    const-string v4, "DLNA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DLNA mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->collapseAll()V

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v4, -0x2

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->moveToTop()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    move v3, v2

    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    return v2

    :cond_3
    move v1, v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {p0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showDialog(I)V

    :cond_0
    const-string v2, "DLNA"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "collapse"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "collapse"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->collapseAll()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStart()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showDialog(I)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mWifiListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStop()V

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mWifiListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DLNA"

    const-string v4, "activity is paused, do not set category right button status"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    instance-of v3, v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnVisible(Z)V

    goto :goto_0
.end method

.method public showLoading()V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showSpinner(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->clearData()V

    const v0, 0x7f0700bd

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showEmptyView(I)V

    :cond_1
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$1;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$1;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;JJ)V

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$1;->start()Landroid/os/CountDownTimer;

    return-void
.end method
