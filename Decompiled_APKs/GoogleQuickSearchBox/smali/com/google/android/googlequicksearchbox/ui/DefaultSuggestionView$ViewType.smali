.class public Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$ViewType;
.super Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;
.source "DefaultSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 327
    const-string v0, "default"

    const v1, 0x7f040011

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;-><init>(Ljava/lang/String;I)V

    .line 328
    return-void
.end method


# virtual methods
.method public canHandleEntry(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getLayoutId()I
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->getLayoutId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getViewType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->getViewType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic prepareView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->prepareView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;)V

    return-void
.end method
