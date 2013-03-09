.class public Lcom/htc/music/widget/StoreSwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "StoreSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/StoreSwitcherAdapter$1;,
        Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;,
        Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;,
        Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[StoreSwitcherAdapter]"


# instance fields
.field protected mLayoutInflator:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

.field private switchIconResId:I

.field private switchTagResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchIconResId:I

    iput v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchTagResId:I

    iput-object v1, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    iput-object v1, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    invoke-direct {p0, p1}, Lcom/htc/music/widget/StoreSwitcherAdapter;->initialSourceItems(Landroid/content/Context;)V

    return-void
.end method

.method private initialSourceItems(Landroid/content/Context;)V
    .locals 13

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v11, "com.htc.music.online.strorefont"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "InnerActivityType"

    const/4 v12, 0x5

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v3, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    const-string v11, "FrontStoreTagPlugin"

    const v12, 0xc351

    invoke-direct {v3, v11, v2, v12}, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;I)V

    const v11, 0x7f0701ac

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "vfmusic://"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v11, 0x1000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v5, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    const-string v11, "MMCStore"

    invoke-direct {v5, v11, v2}, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v11, 0x7f0701ac

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isOrangeStoreCase()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v12, 0xb

    if-eq v11, v12, :cond_2

    sget-object v11, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v4, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v11, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v4, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_2
    const-string v7, "http://m.musicstore.orange.fr"

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v11, 0x1000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v6, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    const-string v11, "OrangeStore"

    invoke-direct {v6, v11, v2}, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v11, 0x7f0701ac

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isTelstraStoreCase()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v8, "http://waprd.telstra.com/redirect?target=music-g"

    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v11, 0x1000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v9, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    const-string v11, "TelstraStore"

    invoke-direct {v9, v11, v2}, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v11, 0x7f0701ac

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p1}, Lcom/htc/music/util/CustomizeSetting;->isAmazonStoreCase(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchAmazonIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v0, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    const-string v11, "AmazonStore"

    invoke-direct {v0, v11, v2}, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v11, 0x7f0701ac

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {p1}, Lcom/htc/music/util/CustomizeSetting;->isVerizonStoreCase(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVerizonMODIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v10, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    const-string v11, "VerizonStore"

    invoke-direct {v10, v11, v2}, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const v11, 0x7f0701ad

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    iput-object v11, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    iget-object v11, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    iput-object v11, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_a

    :cond_7
    const v11, 0x208097e

    iput v11, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchIconResId:I

    const v11, 0x7f0700f5

    iput v11, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchTagResId:I

    :goto_1
    return-void

    :cond_8
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v12, 0x9

    if-ne v11, v12, :cond_9

    const-string v7, "http://mobile.orange.ch/MusicStore"

    goto/16 :goto_0

    :cond_9
    const-string v7, "http://m.musicstore.orange.co.uk"

    goto/16 :goto_0

    :cond_a
    invoke-static {p1}, Lcom/htc/music/util/CustomizeSetting;->getGlanceMusicStoreImageResId(Landroid/content/Context;)I

    move-result v11

    iput v11, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchIconResId:I

    invoke-static {p1}, Lcom/htc/music/util/CustomizeSetting;->getGlanceMusicStoreStringResId(Landroid/content/Context;)I

    move-result v11

    iput v11, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchTagResId:I

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

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

.method public getSwitchIconResId()I
    .locals 1

    iget v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchIconResId:I

    return v0
.end method

.method public getSwitchTagResId()I
    .locals 1

    iget v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchTagResId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    array-length v4, v4

    if-gt v4, p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    if-nez p2, :cond_2

    iget-object v4, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v5, 0x7f030066

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v4, 0x7f0800fc

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/StoreSwitcherAdapter;Lcom/htc/music/widget/StoreSwitcherAdapter$1;)V

    const v3, 0x7f0800fd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v3, v0, Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v0, Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;

    iget-object v3, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    aget-object v2, v3, p1

    iget-object v3, v0, Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v4, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object v3, p2

    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 0

    return-void
.end method
