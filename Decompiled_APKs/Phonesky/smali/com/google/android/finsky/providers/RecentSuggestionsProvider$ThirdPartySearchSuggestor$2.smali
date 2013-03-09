.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$2;
.super Ljava/lang/Object;
.source "RecentSuggestionsProvider.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;->makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;

.field final synthetic val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;

    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$2;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$2;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-interface {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    .line 214
    return-void
.end method
