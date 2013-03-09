.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$3;
.super Ljava/lang/Object;
.source "RecentSuggestionsProvider.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

.field final synthetic val$rListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$3;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$3;->val$rListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$3;->val$rListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->onComplete()V

    .line 442
    return-void
.end method
