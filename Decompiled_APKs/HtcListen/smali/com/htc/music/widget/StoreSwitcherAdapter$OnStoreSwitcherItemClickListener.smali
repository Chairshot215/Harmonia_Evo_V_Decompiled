.class public Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;
.super Ljava/lang/Object;
.source "StoreSwitcherAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/StoreSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnStoreSwitcherItemClickListener"
.end annotation


# instance fields
.field mContext:Landroid/app/Activity;

.field mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/htc/music/widget/StoreSwitcherAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    iput-object v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    iput-object p1, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    iput-object p2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v2, :cond_0

    if-ltz p3, :cond_2

    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    iget-object v2, v2, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    array-length v2, v2

    if-gt v2, p3, :cond_3

    :cond_2
    const-string v2, "[StoreSwitcherAdapter]"

    const-string v3, "click position out of bound!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    iget-object v2, v2, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    aget-object v1, v2, p3

    const/4 v2, -0x1

    :try_start_0
    iget v3, v1, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;->mRequestCode:I

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/music/util/OnlineMusicUtils;->isNoNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    const v3, 0xaae61

    invoke-virtual {v2, v3}, Landroid/app/Activity;->showDialog(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[StoreSwitcherAdapter]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    const/4 v3, 0x0

    const v4, 0xc351

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/OnlineMusicUtils;->showSplashScreen(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
