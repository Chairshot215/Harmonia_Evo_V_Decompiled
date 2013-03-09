.class public Lcom/htc/music/widget/HtcListenAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcListenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/HtcListenAdapter$1;,
        Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;,
        Lcom/htc/music/widget/HtcListenAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CATEGORY_ALBUM_CHART_TAG:Ljava/lang/String; = "ListenAlbumChartTab"

.field public static final CATEGORY_GENRE_SINGLE_TAG:Ljava/lang/String; = "ListenGenreSingleTab"

.field public static final CATEGORY_NEW_RELEASE_ALBUM_TAG:Ljava/lang/String; = "ListenNewReleaseAlbumTab"

.field public static final CATEGORY_NEW_RELEASE_SINGLE_TAG:Ljava/lang/String; = "ListenNewReleaseSingleTab"

.field public static final CATEGORY_SINGLE_CHART_TAG:Ljava/lang/String; = "ListenSingleChartTab"

.field private static final TAG:Ljava/lang/String; = "[HtcListenAdapter]"


# instance fields
.field protected mHeaderCount:I

.field protected mLayoutInflator:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/util/SourceItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/HtcListenAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    iput-object v0, p0, Lcom/htc/music/widget/HtcListenAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/HtcListenAdapter;->mHeaderCount:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/widget/HtcListenAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    invoke-direct {p0, p1}, Lcom/htc/music/widget/HtcListenAdapter;->initialSourceItems(Landroid/content/Context;)V

    return-void
.end method

.method private initialSourceItems(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x1

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.music.album_chart"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "ShowActivityTitle"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "StartNewActivity"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "InnerActivityType"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v0, Lcom/htc/music/util/SourceItem;

    const-string v6, "ListenAlbumChartTab"

    invoke-direct {v0, v6, v2}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v6, 0x7f0700ef

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.music.singles_chart"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "ShowActivityTitle"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "StartNewActivity"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "InnerActivityType"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v5, Lcom/htc/music/util/SourceItem;

    const-string v6, "ListenSingleChartTab"

    invoke-direct {v5, v6, v2}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v6, 0x7f0700f0

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.music.new_releases_albums"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "ShowActivityTitle"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "StartNewActivity"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "InnerActivityType"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v3, Lcom/htc/music/util/SourceItem;

    const-string v6, "ListenNewReleaseAlbumTab"

    invoke-direct {v3, v6, v2}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v6, 0x7f0700f1

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.music.new_releases_singles"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "ShowActivityTitle"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "StartNewActivity"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "InnerActivityType"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v4, Lcom/htc/music/util/SourceItem;

    const-string v6, "ListenNewReleaseSingleTab"

    invoke-direct {v4, v6, v2}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v6, 0x7f0700f2

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.music.genre_singles"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "ShowActivityTitle"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "StartNewActivity"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "InnerActivityType"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Lcom/htc/music/util/SourceItem;

    const-string v6, "ListenGenreSingleTab"

    invoke-direct {v1, v6, v2}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v6, 0x7f0700f4

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/htc/music/util/SourceItem;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v5, v6, v8

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    aput-object v1, v6, v9

    iput-object v6, p0, Lcom/htc/music/widget/HtcListenAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/HtcListenAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/HtcListenAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/HtcListenAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/HtcListenAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/music/widget/HtcListenAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v3, v3

    if-gt v3, p1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/htc/music/widget/HtcListenAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v4, 0x7f03002e

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/htc/music/widget/HtcListenAdapter$ViewHolder;

    invoke-direct {v0, p0, v2}, Lcom/htc/music/widget/HtcListenAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/HtcListenAdapter;Lcom/htc/music/widget/HtcListenAdapter$1;)V

    const v2, 0x7f080095

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/music/widget/HtcListenAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, v0, Lcom/htc/music/widget/HtcListenAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/HtcListenAdapter$ViewHolder;

    iget-object v2, p0, Lcom/htc/music/widget/HtcListenAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v2, p1

    iget-object v2, v0, Lcom/htc/music/widget/HtcListenAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object v2, p2

    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 0

    return-void
.end method

.method public setHeaderCount(I)V
    .locals 0

    iput p1, p0, Lcom/htc/music/widget/HtcListenAdapter;->mHeaderCount:I

    return-void
.end method
