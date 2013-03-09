.class public Lcom/htc/music/widget/HTCListActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "HTCListActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[HTCListActivity]"


# instance fields
.field protected mIsExpActivityPaused:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/HTCListActivity;->mIsExpActivityPaused:Z

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/HTCListActivity;->mIsExpActivityPaused:Z

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/HTCListActivity;->mIsExpActivityPaused:Z

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    return-void
.end method
