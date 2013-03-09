.class public abstract Lcom/google/android/finsky/previews/SongSnippetStatusListener;
.super Lcom/google/android/finsky/previews/StatusListener;
.source "SongSnippetStatusListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/finsky/previews/StatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/previews/SongSnippetStatusListener;->update(IZ)V

    .line 26
    return-void
.end method

.method public error()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/previews/SongSnippetStatusListener;->update(IZ)V

    .line 46
    return-void
.end method

.method public paused()V
    .locals 2

    .prologue
    .line 20
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/previews/SongSnippetStatusListener;->update(IZ)V

    .line 21
    return-void
.end method

.method public playing()V
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/previews/SongSnippetStatusListener;->update(IZ)V

    .line 16
    return-void
.end method

.method public prepared()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/previews/SongSnippetStatusListener;->update(IZ)V

    .line 36
    return-void
.end method

.method public preparing()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0, v0}, Lcom/google/android/finsky/previews/SongSnippetStatusListener;->update(IZ)V

    .line 31
    return-void
.end method

.method public unrolling()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, v0, v0}, Lcom/google/android/finsky/previews/SongSnippetStatusListener;->update(IZ)V

    .line 41
    return-void
.end method

.method protected abstract update(IZ)V
.end method
