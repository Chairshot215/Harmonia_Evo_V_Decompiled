.class public Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;
.super Ljava/lang/Object;
.source "SuggestionsProviderImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SuggestionsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;
    }
.end annotation


# static fields
.field private static final NO_OP_CONSUMER:Lcom/google/android/googlequicksearchbox/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mLogger:Lcom/google/android/googlequicksearchbox/Logger;

.field private final mPublishThread:Landroid/os/Handler;

.field private final mQueryExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private final mShouldQueryStrategy:Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/NoOpConsumer;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/util/NoOpConsumer;-><init>()V

    sput-object v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->NO_OP_CONSUMER:Lcom/google/android/googlequicksearchbox/util/Consumer;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/Logger;)V
    .locals 0
    .parameter "config"
    .parameter "shouldQueryStrategy"
    .parameter "queryExecutor"
    .parameter "publishThread"
    .parameter "logger"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 73
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mShouldQueryStrategy:Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;

    .line 74
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mQueryExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 75
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;

    .line 76
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mLogger:Lcom/google/android/googlequicksearchbox/Logger;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Lcom/google/android/googlequicksearchbox/Config;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->updateShouldQueryStrategy(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Lcom/google/android/googlequicksearchbox/Logger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mLogger:Lcom/google/android/googlequicksearchbox/Logger;

    return-object v0
.end method

.method private createEmptySourceResultsTask(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/NamedTask;
    .locals 1
    .parameter "query"
    .parameter "source"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/Source;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)",
            "Lcom/google/android/googlequicksearchbox/util/NamedTask;"
        }
    .end annotation

    .prologue
    .line 236
    .local p3, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$2;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    return-object v0
.end method

.method private createGoogleSourceQueryTask(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/NamedTask;
    .locals 1
    .parameter "query"
    .parameter "googleSource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)",
            "Lcom/google/android/googlequicksearchbox/util/NamedTask;"
        }
    .end annotation

    .prologue
    .line 251
    .local p3, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$3;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$3;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    return-object v0
.end method

.method private createSourceQueryTask(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;ILcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/NamedTask;
    .locals 6
    .parameter "query"
    .parameter "source"
    .parameter "queryLimit"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/Source;",
            "I",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)",
            "Lcom/google/android/googlequicksearchbox/util/NamedTask;"
        }
    .end annotation

    .prologue
    .line 221
    .local p4, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$1;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;ILcom/google/android/googlequicksearchbox/util/Consumer;)V

    return-object v0
.end method

.method private fetchShortcuts(Ljava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V
    .locals 3
    .parameter "query"
    .parameter
    .parameter "webSource"
    .parameter "shortcutRepository"
    .parameter "listReceiver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            "Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;",
            "Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    .local p2, sourcesToQuery:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;

    invoke-virtual {p5}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->getShortcutsConsumer()Lcom/google/android/googlequicksearchbox/util/Consumer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/util/Consumers;->createAsyncConsumer(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/Consumer;

    move-result-object v0

    .line 216
    .local v0, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/ShortcutList;>;"
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p4, p1, p2, v1, v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;->getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZLcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 217
    return-void

    .line 216
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private fetchWebResults(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V
    .locals 4
    .parameter "query"
    .parameter "webSource"
    .parameter "listReceiver"

    .prologue
    .line 191
    invoke-interface {p2, p1}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    .line 192
    .local v0, cachedResults:Lcom/google/android/googlequicksearchbox/SuggestionList;
    sget-object v1, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->NO_OP_CONSUMER:Lcom/google/android/googlequicksearchbox/util/Consumer;

    .line 193
    .local v1, webReceiver:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    if-eqz v0, :cond_1

    .line 197
    if-eqz p3, :cond_0

    .line 198
    invoke-virtual {p3, v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->publishWebResultsImmediately(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 208
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mQueryExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->createGoogleSourceQueryTask(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/NamedTask;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    .line 209
    return-void

    .line 203
    :cond_1
    if-eqz p3, :cond_0

    .line 204
    invoke-virtual {p3}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->getWebResultConsumer()Lcom/google/android/googlequicksearchbox/util/Consumer;

    move-result-object v1

    goto :goto_0
.end method

.method private filterSource(Ljava/lang/String;Ljava/util/List;)Ljava/util/Set;
    .locals 5
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, sources:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 111
    :cond_0
    :goto_0
    return-object v2

    .line 100
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    .line 101
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 102
    .local v2, sourcesToQuery:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/Source;

    .line 103
    .local v1, source:Lcom/google/android/googlequicksearchbox/Source;
    invoke-virtual {p0, v1, p1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->shouldQuerySource(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private shouldDisplayResults(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->showSuggestionsForZeroQuery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateShouldQueryStrategy(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 3
    .parameter "list"

    .prologue
    .line 119
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->wasRequestMade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mShouldQueryStrategy:Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->onZeroResults(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelOngoingQuery()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->cancelPendingTasks()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mQueryExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->cancelPendingTasks()V

    .line 92
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->cancelOngoingQuery()V

    .line 81
    return-void
.end method

.method public getSuggestions(Ljava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;)Lcom/google/android/googlequicksearchbox/Suggestions;
    .locals 25
    .parameter "query"
    .parameter
    .parameter "webSource"
    .parameter "shortcutRepository"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            "Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;",
            ")",
            "Lcom/google/android/googlequicksearchbox/Suggestions;"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, enabledSources:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    invoke-direct/range {p0 .. p2}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->filterSource(Ljava/lang/String;Ljava/util/List;)Ljava/util/Set;

    move-result-object v24

    .line 130
    .local v24, sourcesToQuery:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Lcom/google/android/googlequicksearchbox/Suggestions;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestions;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;)V

    .line 136
    .local v8, suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    if-nez p3, :cond_1

    .line 137
    invoke-virtual {v8}, Lcom/google/android/googlequicksearchbox/Suggestions;->done()V

    .line 186
    :cond_0
    :goto_0
    return-object v8

    .line 141
    :cond_1
    new-instance v6, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mQueryExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-direct {v6, v7}, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;-><init>(Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    .line 143
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/Config;->getPublishResultDelayMillis()J

    move-result-wide v10

    .line 144
    .local v10, publishResultDelayMillis:J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/Config;->getCommitPublishedResultsDelayMillis()J

    move-result-wide v12

    .line 147
    .local v12, commitPublishedResultsDelayMillis:J
    const/4 v5, 0x0

    .line 148
    .local v5, listReceiver:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;
    invoke-direct/range {p0 .. p1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->shouldDisplayResults(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 151
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->size()I

    move-result v7

    if-eqz p4, :cond_4

    const/4 v6, 0x1

    :goto_1
    add-int/2addr v7, v6

    if-eqz p3, :cond_5

    const/4 v6, 0x1

    :goto_2
    add-int v9, v7, v6

    .line 154
    .local v9, countAtWhichToPublishImmediately:I
    new-instance v5, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;

    .end local v5           #listReceiver:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;Lcom/google/android/googlequicksearchbox/Suggestions;IJJ)V

    .line 157
    .restart local v5       #listReceiver:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;
    move-object/from16 v22, v5

    .line 164
    .end local v9           #countAtWhichToPublishImmediately:I
    .local v22, receiver:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/Config;->getMaxZeroQueryResultsPerSource()I

    move-result v21

    .line 167
    .local v21, maxResultsPerSource:I
    :goto_4
    if-eqz p3, :cond_2

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v5}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->fetchWebResults(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V

    .line 170
    :cond_2
    if-eqz p4, :cond_3

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, v5

    .line 171
    invoke-direct/range {v14 .. v19}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->fetchShortcuts(Ljava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V

    .line 173
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/android/googlequicksearchbox/Source;

    .line 174
    .local v23, source:Lcom/google/android/googlequicksearchbox/Source;
    invoke-interface/range {v23 .. v23}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 175
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->createSourceQueryTask(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;ILcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/NamedTask;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    goto :goto_5

    .line 151
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #maxResultsPerSource:I
    .end local v22           #receiver:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    .end local v23           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 160
    :cond_6
    sget-object v22, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->NO_OP_CONSUMER:Lcom/google/android/googlequicksearchbox/util/Consumer;

    .line 161
    .restart local v22       #receiver:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    invoke-virtual {v8}, Lcom/google/android/googlequicksearchbox/Suggestions;->done()V

    goto :goto_3

    .line 164
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/Config;->getMaxResultsPerSource()I

    move-result v21

    goto :goto_4

    .line 179
    .restart local v20       #i$:Ljava/util/Iterator;
    .restart local v21       #maxResultsPerSource:I
    .restart local v23       #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->createEmptySourceResultsTask(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/NamedTask;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    goto :goto_5

    .line 182
    .end local v23           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_9
    if-eqz v5, :cond_0

    .line 183
    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->startFirstBatch()V

    goto/16 :goto_0
.end method

.method protected shouldQuerySource(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z
    .locals 1
    .parameter "source"
    .parameter "query"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mShouldQueryStrategy:Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->shouldQuerySource(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
