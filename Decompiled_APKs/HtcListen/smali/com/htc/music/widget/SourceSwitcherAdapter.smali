.class public Lcom/htc/music/widget/SourceSwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;,
        Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;,
        Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;,
        Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CATEGORY_DLNA_TAG:Ljava/lang/String; = "DlnaBrowserTabPlugin"

.field public static final CATEGORY_LISTEN_BROWSE_TAG:Ljava/lang/String; = "ListenBrowseTabPlugin"

.field public static final CATEGORY_VMM_TAG:Ljava/lang/String; = "VMMBrowserTabPlugin"

.field private static final TAG:Ljava/lang/String; = "[SourceSwitcherAdapter]"


# instance fields
.field protected mLayoutInflator:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

.field private mUIhandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/htc/music/widget/SourceSwitcherAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/SourceSwitcherAdapter$1;-><init>(Lcom/htc/music/widget/SourceSwitcherAdapter;)V

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mUIhandler:Landroid/os/Handler;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    invoke-direct {p0, p1, p2}, Lcom/htc/music/widget/SourceSwitcherAdapter;->initialSourceItems(Landroid/content/Context;Z)V

    return-void
.end method

.method private initialSourceItems(Landroid/content/Context;Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    const-string v4, "android.intent.action.listenpage"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    const-string v4, "ListenBrowseTabPlugin"

    invoke-direct {v3, v4, v2, v7}, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    :goto_0
    const-string v4, "ShowActivityTitle"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "InnerActivityType"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "LaunchFromSwitcher"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v4, 0x7f0700ed

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    const v4, 0x7f020036

    iput v4, v3, Lcom/htc/music/util/SourceItem;->mIconRes:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.PICK"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/dlnaexp"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v4, "ShowActivityTitle"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "InnerActivityType"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "LaunchFromSwitcher"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    const-string v4, "DlnaBrowserTabPlugin"

    invoke-direct {v1, v4, v2, v7}, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    const v4, 0x7f070026

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    const v4, 0x7f020038

    iput v4, v1, Lcom/htc/music/util/SourceItem;->mIconRes:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/widget/SourceSwitcherAdapter;->loadVMMTab(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    iput-object v4, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    iget-object v4, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    iput-object v4, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    return-void

    :cond_1
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v4

    if-ne v6, v4, :cond_2

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/artistalbumexp"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string v4, "android.intent.action.PICK"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    const-string v4, "ArtistBrowserTabPlugin"

    invoke-direct {v3, v4, v2, v6}, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    goto/16 :goto_0

    :cond_2
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/artistalbum"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/dlna"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private loadVMMTab(Landroid/content/Context;)V
    .locals 3

    new-instance v1, Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;

    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mUIhandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v2}, Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

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

    const-string v0, "ListenBrowseTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DlnaBrowserTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v3, v3

    if-gt v3, p1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v4, 0x7f030066

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;

    invoke-direct {v0, p0, v2}, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/SourceSwitcherAdapter$1;)V

    const v2, 0x7f0800fc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->image:Lcom/htc/widget/HtcListItemColorIcon;

    const v2, 0x7f0800fd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;

    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v1, v2, p1

    iget-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->image:Lcom/htc/widget/HtcListItemColorIcon;

    iget v3, v1, Lcom/htc/music/util/SourceItem;->mIconRes:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    iget-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object v2, p2

    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 0

    return-void
.end method
