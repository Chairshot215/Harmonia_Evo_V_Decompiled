.class public Lcom/google/android/talk/SuggestionsProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "SuggestionsProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 31
    const-string v0, "com.google.android.talk.SuggestionProvider"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/talk/SuggestionsProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 32
    return-void
.end method
