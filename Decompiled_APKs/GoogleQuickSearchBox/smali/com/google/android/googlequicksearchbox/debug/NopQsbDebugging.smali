.class public Lcom/google/android/googlequicksearchbox/debug/NopQsbDebugging;
.super Ljava/lang/Object;
.source "NopQsbDebugging.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activityStart()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public activityStop()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public addPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 0
    .parameter "s"
    .parameter "info"

    .prologue
    .line 51
    return-void
.end method

.method public boundSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 67
    return-void
.end method

.method public debugPromotion()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public finishPromotion(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 0
    .parameter "suggestions"

    .prologue
    .line 55
    return-void
.end method

.method public getGlobalDebugInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, ""

    return-object v0
.end method

.method public getGlobalDebugInfoObservable()Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 93
    const-string v0, ""

    return-object v0
.end method

.method public getSuggestionDebugInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 98
    const-string v0, ""

    return-object v0
.end method

.method public inflatedListEntryView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 71
    return-void
.end method

.method public listAdapterNotified()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public recycledListEntryView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 75
    return-void
.end method

.method public showGlobalDebugInfo()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public showSuggestionDebugInfo()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public startPromotion(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 0
    .parameter "suggestions"

    .prologue
    .line 47
    return-void
.end method
