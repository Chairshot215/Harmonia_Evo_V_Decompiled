.class public Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$ViewType;
.super Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;
.source "WebSearchSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 183
    const-string v0, "web_search"

    const v1, 0x7f040013

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;-><init>(Ljava/lang/String;I)V

    .line 184
    return-void
.end method


# virtual methods
.method public canHandleEntry(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getLayoutId()I
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->getLayoutId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getViewType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->getViewType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic prepareView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->prepareView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;)V

    return-void
.end method
