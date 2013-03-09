.class Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;
.super Ljava/lang/Object;
.source "SuggestionsProviderImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionListReceiver"
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
.field private final mCommitPublishedResultsDelayMillis:J

.field private final mCommitPublishedResultsTask:Ljava/lang/Runnable;

.field private mCountAtWhichToPublishImmediately:I

.field private final mExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

.field private mNumQueriesInProgress:I

.field private mNumQueriesStarted:I

.field private final mPendingResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingShortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;

.field private mPendingWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field private final mPublishResultsDelayMillis:J

.field private final mPublishResultsTask:Ljava/lang/Runnable;

.field private final mStartNewQueryTask:Ljava/lang/Runnable;

.field private final mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;Lcom/google/android/googlequicksearchbox/Suggestions;IJJ)V
    .locals 1
    .parameter
    .parameter "executor"
    .parameter "suggestions"
    .parameter "countAtWhichToPublishImmediately"
    .parameter "publishResultsDelayMillis"
    .parameter "commitPublishedResultsDelayMillis"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$1;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPublishResultsTask:Ljava/lang/Runnable;

    .line 287
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$2;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$2;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mCommitPublishedResultsTask:Ljava/lang/Runnable;

    .line 294
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$3;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$3;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mStartNewQueryTask:Ljava/lang/Runnable;

    .line 316
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    .line 317
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    .line 318
    iput p4, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mCountAtWhichToPublishImmediately:I

    .line 319
    iput-wide p5, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPublishResultsDelayMillis:J

    .line 320
    iput-wide p7, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mCommitPublishedResultsDelayMillis:J

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingResults:Ljava/util/ArrayList;

    .line 322
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->publishPendingResults()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->commitPublishedResults()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->executeNextBatch(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->handleNewResultAdded()V

    return-void
.end method

.method static synthetic access$902(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;Lcom/google/android/googlequicksearchbox/ShortcutList;)Lcom/google/android/googlequicksearchbox/ShortcutList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingShortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;

    return-object p1
.end method

.method private commitPublishedResults()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->setTentativeDisplay(Z)V

    .line 453
    return-void
.end method

.method private executeNextBatch(I)V
    .locals 4
    .parameter "batchSize"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$400(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getMaxConcurrentSourceQueries()I

    move-result v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mNumQueriesInProgress:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 333
    if-lez p1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mStartNewQueryTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->executeNextBatch(I)I

    move-result p1

    .line 336
    iget v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mNumQueriesInProgress:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mNumQueriesInProgress:I

    .line 337
    iget v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mNumQueriesStarted:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mNumQueriesStarted:I

    .line 338
    iget v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mNumQueriesStarted:I

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getExpectedSourceResultCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mStartNewQueryTask:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;
    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$400(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getNewConcurrentSourceQueryDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    :cond_0
    return-void
.end method

.method private handleNewResultAdded()V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mCommitPublishedResultsTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 391
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPublishResultsDelayMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->shouldDelayPublish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPublishResultsTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPublishResultsTask:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPublishResultsDelayMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 404
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPublishResultsTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 402
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->publishPendingResults()V

    goto :goto_0
.end method

.method private publishPendingResults()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 438
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->setTentativeDisplay(Z)V

    .line 439
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingResults:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingShortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestions;->addResults(Ljava/util/List;Lcom/google/android/googlequicksearchbox/SuggestionList;Lcom/google/android/googlequicksearchbox/ShortcutList;)V

    .line 440
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->setTentativeDisplay(Z)V

    .line 446
    :goto_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 447
    iput-object v4, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 448
    iput-object v4, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingShortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;

    .line 449
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mCommitPublishedResultsTask:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mCommitPublishedResultsDelayMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private shouldDelayPublish()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 380
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/2addr v5, v2

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingShortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v5, v2

    .line 384
    .local v0, pendingResultCount:I
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->getResultCount()I

    move-result v1

    .line 386
    .local v1, publishedResultCount:I
    add-int v2, v0, v1

    iget v5, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mCountAtWhichToPublishImmediately:I

    if-ge v2, v5, :cond_2

    :goto_2
    return v4

    .end local v0           #pendingResultCount:I
    .end local v1           #publishedResultCount:I
    :cond_0
    move v2, v4

    .line 380
    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    .restart local v0       #pendingResultCount:I
    .restart local v1       #publishedResultCount:I
    :cond_2
    move v4, v3

    .line 386
    goto :goto_2
.end method


# virtual methods
.method public consume(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z
    .locals 2
    .parameter "list"

    .prologue
    const/4 v0, 0x1

    .line 355
    iget v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mNumQueriesInProgress:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mNumQueriesInProgress:I

    .line 356
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->executeNextBatch(I)V

    .line 358
    if-nez p1, :cond_0

    .line 359
    const-string v0, "QSB.SuggestionsProviderImpl"

    const-string v1, "Source returned a null list."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v0, 0x0

    .line 376
    :goto_0
    return v0

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #calls: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->updateShouldQueryStrategy(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    invoke-static {v1, p1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$500(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 369
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingResults:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mLogger:Lcom/google/android/googlequicksearchbox/Logger;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$600(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mLogger:Lcom/google/android/googlequicksearchbox/Logger;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$600(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/googlequicksearchbox/Logger;->logLatency(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 374
    :cond_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->handleNewResultAdded()V

    goto :goto_0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    check-cast p1, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->consume(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z

    move-result v0

    return v0
.end method

.method public getShortcutsConsumer()Lcom/google/android/googlequicksearchbox/util/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/ShortcutList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$5;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$5;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V

    return-object v0
.end method

.method public getWebResultConsumer()Lcom/google/android/googlequicksearchbox/util/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$4;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$4;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V

    return-object v0
.end method

.method public publishWebResultsImmediately(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 2
    .parameter "results"

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0, v1, p1, v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->addResults(Ljava/util/List;Lcom/google/android/googlequicksearchbox/SuggestionList;Lcom/google/android/googlequicksearchbox/ShortcutList;)V

    .line 351
    return-void
.end method

.method public startFirstBatch()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$400(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getConcurrentSourceQueries()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->executeNextBatch(I)V

    .line 326
    return-void
.end method
