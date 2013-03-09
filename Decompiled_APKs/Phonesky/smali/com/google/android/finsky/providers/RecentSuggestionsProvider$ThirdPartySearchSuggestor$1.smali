.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$1;
.super Ljava/lang/Object;
.source "RecentSuggestionsProvider.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;->makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
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
    .line 196
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$1;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;

    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$1;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    check-cast p1, Lorg/json/JSONArray;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$1;->onResponse(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONArray;)V
    .locals 4
    .parameter "responseArray"

    .prologue
    .line 200
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$1;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;

    const v2, 0x108004f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;->addRow(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$1;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-interface {v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    .line 209
    .end local v0           #i:I
    :goto_1
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 207
    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$1;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-interface {v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor$1;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-interface {v2}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    throw v1
.end method
