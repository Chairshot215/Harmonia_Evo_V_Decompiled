.class public Lcom/htc/album/AlbumUtility/UntagListener;
.super Ljava/lang/Object;
.source "UntagListener.java"

# interfaces
.implements Lcom/htc/album/AlbumUtility/IUntagListener;


# instance fields
.field private mIsUntagged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/AlbumUtility/UntagListener;->mIsUntagged:Z

    return-void
.end method


# virtual methods
.method public isUntagged()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/htc/album/AlbumUtility/UntagListener;->mIsUntagged:Z

    return v0
.end method

.method public onBegin()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/AlbumUtility/UntagListener;->mIsUntagged:Z

    .line 11
    return-void
.end method

.method public onEnd()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/AlbumUtility/UntagListener;->mIsUntagged:Z

    .line 16
    return-void
.end method
