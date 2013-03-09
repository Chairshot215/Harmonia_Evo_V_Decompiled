.class public Lcom/google/android/finsky/widget/consumption/NowPlayingTrampoline;
.super Lcom/google/android/finsky/widget/TrampolineActivity;
.source "NowPlayingTrampoline.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected enableMultiCorpus()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method protected getCorpusName(I)Ljava/lang/String;
    .locals 3
    .parameter "backend"

    .prologue
    .line 32
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    .line 33
    .local v1, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v1, p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    .line 35
    .local v0, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryName()Ljava/lang/String;

    move-result-object v2

    .line 39
    .end local v0           #corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :goto_0
    return-object v2

    :cond_0
    const v2, 0x7f070246

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingTrampoline;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getDialogTitle()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f070245

    return v0
.end method

.method protected getWidgetClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    const-class v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    return-object v0
.end method

.method protected isBackendEnabled(I)Z
    .locals 1
    .parameter "backend"

    .prologue
    .line 27
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
