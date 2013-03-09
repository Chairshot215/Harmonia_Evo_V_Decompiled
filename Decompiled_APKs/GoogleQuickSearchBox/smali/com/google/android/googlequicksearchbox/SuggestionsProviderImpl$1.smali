.class Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;
.super Ljava/lang/Object;
.source "SuggestionsProviderImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/NamedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->createSourceQueryTask(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;ILcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/NamedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

.field final synthetic val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$queryLimit:I

.field final synthetic val$source:Lcom/google/android/googlequicksearchbox/Source;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;ILcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;->val$source:Lcom/google/android/googlequicksearchbox/Source;

    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;->val$query:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;->val$queryLimit:I

    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;->val$source:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 227
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;->val$source:Lcom/google/android/googlequicksearchbox/Source;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;->val$query:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;->val$queryLimit:I

    invoke-interface {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestions(Ljava/lang/String;I)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    .line 229
    .local v0, list:Lcom/google/android/googlequicksearchbox/SuggestionList;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-static {v1, v2, v0}, Lcom/google/android/googlequicksearchbox/util/Consumers;->consumeAsync(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;Ljava/lang/Object;)V

    .line 230
    return-void
.end method
