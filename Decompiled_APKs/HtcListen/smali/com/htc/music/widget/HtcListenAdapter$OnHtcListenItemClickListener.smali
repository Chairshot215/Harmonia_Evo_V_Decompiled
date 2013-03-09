.class public Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;
.super Ljava/lang/Object;
.source "HtcListenAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/HtcListenAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnHtcListenItemClickListener"
.end annotation


# instance fields
.field mContext:Landroid/app/Activity;

.field mListenAdapter:Lcom/htc/music/widget/HtcListenAdapter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/htc/music/widget/HtcListenAdapter;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    iput-object v0, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mListenAdapter:Lcom/htc/music/widget/HtcListenAdapter;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context and HtcListenAdapter shouldn\'t be null!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    iput-object p2, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mListenAdapter:Lcom/htc/music/widget/HtcListenAdapter;

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mListenAdapter:Lcom/htc/music/widget/HtcListenAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mListenAdapter:Lcom/htc/music/widget/HtcListenAdapter;

    iget v8, v8, Lcom/htc/music/widget/HtcListenAdapter;->mHeaderCount:I

    sub-int v5, p3, v8

    if-ltz v5, :cond_2

    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mListenAdapter:Lcom/htc/music/widget/HtcListenAdapter;

    iget-object v8, v8, Lcom/htc/music/widget/HtcListenAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v8, v8

    if-gt v8, v5, :cond_3

    :cond_2
    const-string v8, "[HtcListenAdapter]"

    const-string v9, "click position out of bound!!"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/htc/music/util/OnlineMusicUtils;->isNoNetworkConnection(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mListenAdapter:Lcom/htc/music/widget/HtcListenAdapter;

    iget-object v8, v8, Lcom/htc/music/widget/HtcListenAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v7, v8, v5

    iget-object v8, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v9, "StartNewActivity"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v2, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v8, "ShowActivityTitle"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "InnerActivityType"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    const v9, 0xc351

    invoke-static {v8, v2, v9}, Lcom/htc/music/util/OnlineMusicUtils;->showSplashScreen(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v8, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    instance-of v8, v8, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v8, :cond_8

    iget-object v8, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v9, "ShowActivityTitle"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    check-cast v8, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v9, v7, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v10, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9, v10}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    instance-of v8, v8, Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v8, :cond_a

    iget-object v0, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_9

    instance-of v8, v6, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v8, :cond_9

    iget-object v8, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v9, "ShowActivityTitle"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    check-cast v6, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v8, v7, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v9, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v6, v8, v9}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    iget-object v8, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v9, "ShowActivityTitle"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    iget-object v9, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    iget-object v8, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v9, "ShowActivityTitle"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    iget-object v9, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
