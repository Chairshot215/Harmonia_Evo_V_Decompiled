.class public Lcom/coremobility/app/vnotes/CM_VnoteSearchSuggestionProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    const-string v0, "com.coremobility.app.vnotes.SuggestionProvider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSearchSuggestionProvider;->setupSuggestions(Ljava/lang/String;I)V

    return-void
.end method
