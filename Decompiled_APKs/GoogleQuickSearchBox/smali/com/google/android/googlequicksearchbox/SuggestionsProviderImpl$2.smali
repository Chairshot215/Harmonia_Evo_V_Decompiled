.class Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$2;
.super Ljava/lang/Object;
.source "SuggestionsProviderImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/NamedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->createEmptySourceResultsTask(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/NamedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

.field final synthetic val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$source:Lcom/google/android/googlequicksearchbox/Source;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$2;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$2;->val$source:Lcom/google/android/googlequicksearchbox/Source;

    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$2;->val$query:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$2;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$2;->val$source:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 242
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$2;->val$source:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$2;->val$query:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .local v0, list:Lcom/google/android/googlequicksearchbox/SuggestionListImpl;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->setRequestMade(Z)V

    .line 244
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$2;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$2;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-static {v1, v2, v0}, Lcom/google/android/googlequicksearchbox/util/Consumers;->consumeAsync(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;Ljava/lang/Object;)V

    .line 245
    return-void
.end method
