.class Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper$1;
.super Ljava/lang/Object;
.source "QueryDedupingSourceWrapper.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;->getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
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
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;

.field final synthetic val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;Lcom/google/android/googlequicksearchbox/util/Consumer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper$1;->this$0:Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper$1;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z
    .locals 3
    .parameter "list"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper$1;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper$1;->this$0:Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper$1;->val$query:Ljava/lang/String;

    #calls: Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;->removeQueryFrom(Lcom/google/android/googlequicksearchbox/SuggestionList;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-static {v1, p1, v2}, Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;->access$000(Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;Lcom/google/android/googlequicksearchbox/SuggestionList;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper$1;->consume(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z

    move-result v0

    return v0
.end method
