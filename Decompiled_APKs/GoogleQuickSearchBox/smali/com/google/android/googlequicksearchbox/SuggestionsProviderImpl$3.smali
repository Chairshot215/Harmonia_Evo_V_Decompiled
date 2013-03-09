.class Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$3;
.super Ljava/lang/Object;
.source "SuggestionsProviderImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/NamedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->createGoogleSourceQueryTask(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/NamedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

.field final synthetic val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

.field final synthetic val$googleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$3;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$3;->val$googleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$3;->val$query:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$3;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$3;->val$googleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$3;->val$googleSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$3;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$3;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$3;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-static {v2, v3}, Lcom/google/android/googlequicksearchbox/util/Consumers;->createAsyncConsumer(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/Consumer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 258
    return-void
.end method
