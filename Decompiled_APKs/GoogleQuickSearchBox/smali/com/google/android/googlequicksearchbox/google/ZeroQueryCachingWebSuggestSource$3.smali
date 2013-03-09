.class Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$3;
.super Ljava/lang/Object;
.source "ZeroQueryCachingWebSuggestSource.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Lcom/google/android/googlequicksearchbox/SuggestionList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;

.field final synthetic val$originalConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$3;->this$0:Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$3;->val$originalConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z
    .locals 1
    .parameter "results"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$3;->this$0:Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;

    #calls: Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->cacheResults(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    invoke-static {v0, p1}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->access$100(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$3;->val$originalConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    check-cast p1, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$3;->consume(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z

    move-result v0

    return v0
.end method
