.class public Lcom/htc/music/widget/CategorySwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategorySwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/CategorySwitcherAdapter$1;,
        Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;,
        Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CATEGORY_ALBUM_BROWSE_TAG:Ljava/lang/String; = "AlbumBrowserTabPlugin"

.field public static final CATEGORY_ARTIST_BROWSE_TAG:Ljava/lang/String; = "ArtistBrowserTabPlugin"

.field public static final CATEGORY_GENRES_BROWSE_TAG:Ljava/lang/String; = "genreBrowserTabPlugin"

.field public static final CATEGORY_PLAYLISTS_BROWSE_TAG:Ljava/lang/String; = "PlaylistBrowserTabPlugin"

.field public static final CATEGORY_SONGS_BROWSE_TAG:Ljava/lang/String; = "TrackBrowserTabPlugin"

.field private static final TAG:Ljava/lang/String; = "[CategorySwitcherAdapter]"


# instance fields
.field protected mEditModePlaylistUri:Ljava/lang/String;

.field protected mLayoutInflator:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/util/SourceItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/widget/CategorySwitcherAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    invoke-direct {p0, p1}, Lcom/htc/music/widget/CategorySwitcherAdapter;->initialSourceItems(Landroid/content/Context;)V

    return-void
.end method

.method private initialSourceItems(Landroid/content/Context;)V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v7

    if-ne v9, v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-nez v7, :cond_2

    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/artistalbumexp"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "playlisturi"

    iget-object v8, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/htc/music/util/SourceItem;

    const-string v7, "ArtistBrowserTabPlugin"

    invoke-direct {v1, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v7, 0x7f07001d

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.htc.media/album"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-class v7, Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "playlisturi"

    iget-object v8, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Lcom/htc/music/util/SourceItem;

    const-string v7, "AlbumBrowserTabPlugin"

    invoke-direct {v0, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v7, 0x7f07001e

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "playlisturi"

    iget-object v8, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-eqz v7, :cond_0

    const-string v7, "pickermode"

    invoke-virtual {v4, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    new-instance v6, Lcom/htc/music/util/SourceItem;

    const-string v7, "TrackBrowserTabPlugin"

    invoke-direct {v6, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v7, 0x7f07001f

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-nez v7, :cond_1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v7, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v5, Lcom/htc/music/util/SourceItem;

    const-string v7, "PlaylistBrowserTabPlugin"

    invoke-direct {v5, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v7, 0x7f070021

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-nez v7, :cond_3

    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/genreexp"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "playlisturi"

    iget-object v8, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Lcom/htc/music/util/SourceItem;

    const-string v7, "genreBrowserTabPlugin"

    invoke-direct {v3, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v7, 0x7f070024

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/dlnaexp"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string v7, "ShowActivityTitle"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "InnerActivityType"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v2, Lcom/htc/music/util/SourceItem;

    const-string v7, "DlnaBrowserTabPlugin"

    invoke-direct {v2, v7, v4}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v7, 0x7f070026

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-nez v7, :cond_5

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/htc/music/util/SourceItem;

    aput-object v1, v7, v10

    aput-object v0, v7, v9

    aput-object v6, v7, v12

    aput-object v5, v7, v11

    aput-object v3, v7, v13

    iput-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    :goto_3
    return-void

    :cond_2
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/artistalbum"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_3
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/genre"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_4
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/dlna"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    new-array v7, v13, [Lcom/htc/music/util/SourceItem;

    aput-object v1, v7, v10

    aput-object v0, v7, v9

    aput-object v6, v7, v12

    aput-object v3, v7, v11

    iput-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

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

.method public getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ArtistBrowserTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "AlbumBrowserTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "TrackBrowserTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "PlaylistBrowserTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    :cond_4
    const-string v0, "genreBrowserTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v4, v4

    if-gt v4, p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    if-nez p2, :cond_2

    iget-object v4, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v5, 0x7f030066

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter$1;)V

    const v3, 0x7f0800fc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0800fd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v3, v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;

    iget-object v3, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v3, p1

    iget-object v3, v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v4, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object v3, p2

    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 0

    return-void
.end method
