.class public Lcom/google/android/finsky/widget/recommendation/RecommendedTrampoline;
.super Lcom/google/android/finsky/widget/TrampolineActivity;
.source "RecommendedTrampoline.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected enableMultiCorpus()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method protected getCorpusName(I)Ljava/lang/String;
    .locals 1
    .parameter "backend"

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 29
    const v0, 0x7f07025a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedTrampoline;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/widget/TrampolineActivity;->getCorpusName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDialogTitle()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f07024f

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
    .line 23
    const-class v0, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    return-object v0
.end method
