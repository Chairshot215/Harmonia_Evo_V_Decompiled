.class public Lcom/htc/music/browserlayer/ComposerBrowserActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "ComposerBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerCursor;,
        Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;
    }
.end annotation


# static fields
.field private static final COMPOSER_DEFAULT_SORT_ORDER:Ljava/lang/String; = "composer COLLATE NOCASE ASC"

.field public static final DIALOG_FOR_DELETE:I = 0x1

.field public static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field mActivityTitle:Ljava/lang/String;

.field private mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

.field private mAdapterSent:Z

.field private mArtistId:Ljava/lang/String;

.field mAsyncQuerying:Z

.field private mComposerCursor:Landroid/database/Cursor;

.field private mCountTemplate:Ljava/lang/String;

.field private mCurrentComposerName:Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mFilter:Ljava/lang/String;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mPlaylistUri:Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mActivityTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mFilter:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->preSearchTime:J

    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAsyncQuerying:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/ComposerBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/ComposerBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/browserlayer/ComposerBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_music>=1"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND composer is not null"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND composer != \'\'"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND composer != \'<unknown>\'"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    if-nez p2, :cond_1

    const/4 v11, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const-string v1, " AND "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "composer LIKE ?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v11, 0x1

    :cond_0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DISTINCT composer"

    aput-object v2, v5, v1

    const/4 v9, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAsyncQuerying:Z

    const/4 v2, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "composer COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    :goto_1
    if-eqz v11, :cond_3

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getUnknownComposer()Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_3

    new-instance v9, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    aput-object v12, v1, v2

    invoke-direct {v9, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    :goto_2
    return-object v9

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "composer COLLATE NOCASE ASC"

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    move-object v10, v9

    goto :goto_1

    :cond_3
    move-object v9, v10

    goto :goto_2
.end method

.method private setTitle()V
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    const v1, 0x7f07006b

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->playAllAction(Z)Z

    move-result v0

    return v0
.end method

.method public getUnknownComposer()Landroid/database/Cursor;
    .locals 8

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "composer"

    aput-object v1, v2, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is_music>=1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "random() desc limit 1"

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->showDatabaseError()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->closeContextMenu()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mActivityTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mActivityTitle:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->showEmptyView(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->hideEmptyErrorView()V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method isAsyncQuerying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    :sswitch_1
    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForComposer(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    const-string v2, "playlist"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    :sswitch_2
    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    :sswitch_3
    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_0
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCountTemplate:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "artistid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mArtistId:Ljava/lang/String;

    const-string v0, "playlisturi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setVolumeControlStream(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

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

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    invoke-virtual {v10, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v4, 0x7f030012

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    new-array v6, v1, [Ljava/lang/String;

    new-array v7, v1, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;Landroid/content/Context;Lcom/htc/music/browserlayer/ComposerBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setTitle()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v11}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setSearchHint(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->enableSearch()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v0, "artistid"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mArtistId:Ljava/lang/String;

    const-string v0, "playlisturi"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->setActivity(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v11}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    const v9, 0x7f070045

    const v8, 0x20c01fc

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_0
    return-object v5

    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/CharSequence;

    const v5, 0x7f07004e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const v5, 0x7f07004f

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    const/4 v5, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f07000f

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    new-instance v7, Lcom/htc/music/browserlayer/ComposerBrowserActivity$5;

    invoke-direct {v7, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    new-instance v7, Lcom/htc/music/browserlayer/ComposerBrowserActivity$4;

    invoke-direct {v7, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_0

    :cond_2
    const v5, 0x7f07000e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_0
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

    goto :goto_0
.end method

.method public onDeletionCompleted()V
    .locals 2

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDeletionCompleted()V

    const-string v0, "ComposerBrowserActivity"

    const-string v1, "call onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    invoke-interface {v2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "<unknown>"

    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/albumtrack"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "playlisturi"

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "composer"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pickermode"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0xf

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "ComposerBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemLongClick, position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    const-string v3, "composer"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->showDialog(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->playAllAction(Z)Z

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
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->setAutoRequery(ZZ)V

    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 7

    const v6, 0x7f070045

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v3, 0x7f070012

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;

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
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setTitle()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->setAutoRequery(ZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->showSpinner(Z)V

    :cond_2
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapterSent:Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->setAutoRequery(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    nop

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

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->preSearchTime:J

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mFilter:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

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

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mFilter:Ljava/lang/String;

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
