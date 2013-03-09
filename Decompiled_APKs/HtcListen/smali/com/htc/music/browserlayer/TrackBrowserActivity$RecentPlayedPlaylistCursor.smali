.class Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;
.super Landroid/database/CursorWrapper;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecentPlayedPlaylistCursor"
.end annotation


# instance fields
.field private currPosition:I

.field private final mCursor:Landroid/database/Cursor;

.field private final mCursorCount:I

.field private final mRecentMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentPlayed:[I


# direct methods
.method private constructor <init>(Landroid/database/Cursor;[I)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    iput v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursorCount:I

    new-instance v5, Ljava/util/HashMap;

    iget v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursorCount:I

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mRecentMapping:Ljava/util/Map;

    iget v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursorCount:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mRecentPlayed:[I

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mRecentMapping:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 v2, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    array-length v5, p2

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mRecentMapping:Ljava/util/Map;

    aget v6, p2, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mRecentPlayed:[I

    add-int/lit8 v2, v1, 0x1

    aget v6, p2, v0

    aput v6, v5, v1

    move v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    iget v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->moveToPosition(I)Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;[ILcom/htc/music/browserlayer/TrackBrowserActivity$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;-><init>(Landroid/database/Cursor;[I)V

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    return v0
.end method

.method public isAfterLast()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "[PluginNowPlayingListActivity]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAfterLast="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    iget v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursorCount:I

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";currPosition="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    iget v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursorCount:I

    if-ne v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isBeforeFirst()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    const-string v3, "[PluginNowPlayingListActivity]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBeforeFirst="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";currPosition="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    if-ne v0, v5, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isFirst()Z
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursorCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public move(I)Z
    .locals 3

    const-string v0, "[PluginNowPlayingListActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move:offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";currPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursorCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 4

    const-string v0, "[PluginNowPlayingListActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToPosition:position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";currPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursorCount:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursorCount:I

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mRecentMapping:Ljava/util/Map;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->mRecentPlayed:[I

    iget v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->currPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
