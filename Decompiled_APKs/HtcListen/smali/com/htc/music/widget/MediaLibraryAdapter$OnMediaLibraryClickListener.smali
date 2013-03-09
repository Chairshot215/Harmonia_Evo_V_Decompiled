.class public Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;
.super Ljava/lang/Object;
.source "MediaLibraryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MediaLibraryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnMediaLibraryClickListener"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mSource:Lcom/htc/music/util/SourceItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/SourceItem;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mSource:Lcom/htc/music/util/SourceItem;

    iput-object p1, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mSource:Lcom/htc/music/util/SourceItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mSource:Lcom/htc/music/util/SourceItem;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mSource:Lcom/htc/music/util/SourceItem;

    iget-object v3, v3, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v4, "StartNewActivity"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mSource:Lcom/htc/music/util/SourceItem;

    iget-object v3, v3, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v4, "ShowActivityTitle"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mSource:Lcom/htc/music/util/SourceItem;

    iget-object v4, v4, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mContext:Landroid/content/Context;

    instance-of v3, v3, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/htc/music/widget/IMusicTabActivityInterface;

    iget-object v4, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mSource:Lcom/htc/music/util/SourceItem;

    iget-object v4, v4, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mSource:Lcom/htc/music/util/SourceItem;

    iget-object v5, v5, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5}, Lcom/htc/music/widget/IMusicTabActivityInterface;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mContext:Landroid/content/Context;

    instance-of v3, v3, Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_4

    instance-of v3, v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mSource:Lcom/htc/music/util/SourceItem;

    iget-object v3, v3, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mSource:Lcom/htc/music/util/SourceItem;

    iget-object v4, v4, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-interface {v2, v3, v4}, Lcom/htc/music/widget/IMusicTabActivityInterface;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mSource:Lcom/htc/music/util/SourceItem;

    iget-object v4, v4, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mSource:Lcom/htc/music/util/SourceItem;

    iget-object v4, v4, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
