.class public Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
.super Ljava/lang/Object;
.source "FilterableAndSortableApplicationInfoList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;
    }
.end annotation


# static fields
.field public static final ALL_APPS:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier; = null

.field public static COUNT_PER_PAGE:I = 0x0

.field public static final CUST_PRIORITY:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CAPACITY:I = 0x60

.field public static final DOWNLOADED:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier; = null

.field private static final LOG_TAG:Ljava/lang/String; = "FilterableAndSortableApplicationInfoList"

.field public static final ONE_PAGE:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

.field public static final ORIGINAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REAL_ALPHABET:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REAL_FREQUENTLY_USED_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REAL_NEWEST_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REAL_OLDEST_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final classifiedSortedData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

.field private classifierChanged:Z

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private comparatorChanged:Z

.field private final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dataChanged:Z

.field private keywords:Ljava/lang/String;

.field private keywordsChanged:Z

.field private final searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 356
    sput-object v1, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->ORIGINAL_ORDER:Ljava/util/Comparator;

    .line 358
    new-instance v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$1;

    invoke-direct {v0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$1;-><init>()V

    sput-object v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_ALPHABET:Ljava/util/Comparator;

    .line 366
    new-instance v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$2;

    invoke-direct {v0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$2;-><init>()V

    sput-object v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_NEWEST_FIRST:Ljava/util/Comparator;

    .line 381
    new-instance v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$3;

    invoke-direct {v0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$3;-><init>()V

    sput-object v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_OLDEST_FIRST:Ljava/util/Comparator;

    .line 396
    new-instance v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$4;

    invoke-direct {v0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$4;-><init>()V

    sput-object v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_FREQUENTLY_USED_FIRST:Ljava/util/Comparator;

    .line 411
    new-instance v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$5;

    invoke-direct {v0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$5;-><init>()V

    sput-object v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->CUST_PRIORITY:Ljava/util/Comparator;

    .line 427
    sput-object v1, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->ALL_APPS:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    .line 429
    new-instance v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$6;

    invoke-direct {v0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$6;-><init>()V

    sput-object v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->DOWNLOADED:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    .line 442
    const/16 v0, 0x14

    sput v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->COUNT_PER_PAGE:I

    .line 444
    new-instance v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$7;

    invoke-direct {v0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$7;-><init>()V

    sput-object v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->ONE_PAGE:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x60

    const/4 v1, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->sortedData:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifiedSortedData:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->searchResult:Ljava/util/ArrayList;

    .line 30
    sget-object v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->ORIGINAL_ORDER:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparator:Ljava/util/Comparator;

    .line 31
    sget-object v0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->ALL_APPS:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    iput-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywords:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparatorChanged:Z

    .line 36
    iput-boolean v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifierChanged:Z

    .line 37
    iput-boolean v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywordsChanged:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    const/4 v1, 0x1

    const/16 v3, 0x60

    const/4 v0, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->sortedData:Ljava/util/ArrayList;

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifiedSortedData:Ljava/util/ArrayList;

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->searchResult:Ljava/util/ArrayList;

    .line 30
    sget-object v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->ORIGINAL_ORDER:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparator:Ljava/util/Comparator;

    .line 31
    sget-object v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->ALL_APPS:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    iput-object v2, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    .line 32
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywords:Ljava/lang/String;

    .line 34
    iput-boolean v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    .line 35
    iput-boolean v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparatorChanged:Z

    .line 36
    iput-boolean v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifierChanged:Z

    .line 37
    iput-boolean v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywordsChanged:Z

    .line 54
    const-string v2, "data should not be null"

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v0}, Lcom/htc/launcher/TFC;->assertTrue(Ljava/lang/String;Z)V

    .line 55
    const-string v0, "VivoWCTGBS_246"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FASAIL: warning, underlying data structure is created by someone else. data.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    .line 58
    iput-boolean v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    .line 59
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->notifyDataSetChanged()V

    .line 60
    return-void
.end method

.method private declared-synchronized getFinalList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywords:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->searchResult:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifiedSortedData:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private match(Lcom/htc/launcher/ApplicationInfo;Ljava/lang/String;)Z
    .locals 3
    .parameter "app"
    .parameter "keywords"

    .prologue
    .line 288
    iget-object v1, p1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, string:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 290
    const/4 v1, -0x1

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 291
    const/4 v1, 0x1

    .line 293
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyDataSetChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 200
    iget-boolean v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->sortedData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 202
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->sortedData:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    :cond_0
    iget-boolean v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparatorChanged:Z

    if-eqz v3, :cond_2

    .line 206
    :cond_1
    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->ORIGINAL_ORDER:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparator:Ljava/util/Comparator;

    if-ne v3, v4, :cond_8

    .line 207
    iget-boolean v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    if-eqz v3, :cond_7

    .line 209
    const-string v3, "VivoWCTGBS_246"

    const-string v4, "FASAIL.notifyDataSetChanged: original order. (do nothing)"

    invoke-static {v3, v4}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparatorChanged:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifierChanged:Z

    if-eqz v3, :cond_4

    .line 247
    :cond_3
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifiedSortedData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 249
    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->ALL_APPS:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    iget-object v4, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    if-ne v3, v4, :cond_e

    .line 250
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifiedSortedData:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->sortedData:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    :cond_4
    iget-boolean v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparatorChanged:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifierChanged:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywordsChanged:Z

    if-eqz v3, :cond_6

    .line 262
    :cond_5
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywords:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 274
    :cond_6
    const-string v3, "VivoWCTGBS_246"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FASAIL.notifyDataSetChanged: classifiedSortedData.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifiedSortedData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " keywords="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywords:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " searchResult.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-boolean v6, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    .line 278
    iput-boolean v6, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparatorChanged:Z

    .line 279
    iput-boolean v6, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifierChanged:Z

    .line 280
    iput-boolean v6, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywordsChanged:Z

    .line 285
    return-void

    .line 211
    :cond_7
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->sortedData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->sortedData:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    const-string v3, "VivoWCTGBS_246"

    const-string v4, "FASAIL.notifyDataSetChanged: original order. (reset data)"

    invoke-static {v3, v4}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_8
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->sortedData:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 218
    const-string v1, "Unknown"

    .line 219
    .local v1, comparatorName:Ljava/lang/String;
    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_NEWEST_FIRST:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparator:Ljava/util/Comparator;

    if-ne v3, v4, :cond_a

    .line 220
    const-string v1, "REAL_NEWEST_FIRST"

    .line 230
    :cond_9
    :goto_1
    const-string v3, "VivoWCTGBS_246"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FASAIL.notifyDataSetChanged: sort by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_a
    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_OLDEST_FIRST:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparator:Ljava/util/Comparator;

    if-ne v3, v4, :cond_b

    .line 222
    const-string v1, "REAL_OLDEST_FIRST"

    goto :goto_1

    .line 223
    :cond_b
    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_ALPHABET:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparator:Ljava/util/Comparator;

    if-ne v3, v4, :cond_c

    .line 224
    const-string v1, "REAL_ALPHABET"

    goto :goto_1

    .line 225
    :cond_c
    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->ORIGINAL_ORDER:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparator:Ljava/util/Comparator;

    if-ne v3, v4, :cond_d

    .line 226
    const-string v1, "ORIGINAL_ORDER"

    goto :goto_1

    .line 227
    :cond_d
    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_FREQUENTLY_USED_FIRST:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparator:Ljava/util/Comparator;

    if-ne v3, v4, :cond_9

    .line 228
    const-string v1, "REAL_FREQUENTLY_USED_FIRST"

    goto :goto_1

    .line 252
    .end local v1           #comparatorName:Ljava/lang/String;
    :cond_e
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    invoke-interface {v3}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;->reset()V

    .line 253
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->sortedData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_f
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 254
    .local v0, app:Lcom/htc/launcher/ApplicationInfo;
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    invoke-interface {v3, v0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;->classified(Lcom/htc/launcher/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 255
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifiedSortedData:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 265
    .end local v0           #app:Lcom/htc/launcher/ApplicationInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_10
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 266
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifiedSortedData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_11
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 267
    .restart local v0       #app:Lcom/htc/launcher/ApplicationInfo;
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywords:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->match(Lcom/htc/launcher/ApplicationInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 268
    iget-object v3, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized add(ILcom/htc/launcher/ApplicationInfo;)Z
    .locals 6
    .parameter "index"
    .parameter "app"

    .prologue
    const/4 v3, 0x1

    .line 70
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 71
    invoke-virtual {p2}, Lcom/htc/launcher/ApplicationInfo;->getItemName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/ApplicationInfo;

    invoke-virtual {v2}, Lcom/htc/launcher/ApplicationInfo;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/htc/launcher/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/ApplicationInfo;

    invoke-virtual {v2}, Lcom/htc/launcher/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v3, "FilterableAndSortableApplicationInfoList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon Duplicate!\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/ApplicationInfo;

    invoke-virtual {v2}, Lcom/htc/launcher/ApplicationInfo;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    const/4 v2, 0x0

    .line 82
    :goto_1
    monitor-exit p0

    return v2

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    const-string v4, "VivoWCTGBS_246"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FASAIL.add: i="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " app="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/htc/launcher/ApplicationInfo;->toDebugString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    .line 81
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 82
    goto :goto_1

    .line 79
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 70
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized add(Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 1
    .parameter "app"

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->add(ILcom/htc/launcher/ApplicationInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, collect:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/htc/launcher/ApplicationInfo;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 98
    .local v0, modified:Z
    if-eqz v0, :cond_0

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    .line 100
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    monitor-exit p0

    return v0

    .line 90
    .end local v0           #modified:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, collect:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/htc/launcher/ApplicationInfo;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized classify(Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;)V
    .locals 1
    .parameter "classifier"

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    if-eq v0, p1, :cond_0

    .line 320
    iput-object p1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifierChanged:Z

    .line 322
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_0
    monitor-exit p0

    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    const-string v0, "VivoWCTGBS_246"

    const-string v1, "FASAIL.clear"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    .line 111
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 1
    .parameter "app"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->getFinalList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized forceNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 45
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    .line 46
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(I)Lcom/htc/launcher/ApplicationInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->getFinalList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    return-object v0
.end method

.method public getClassifier()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    return-object v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public indexOf(Lcom/htc/launcher/ApplicationInfo;)I
    .locals 1
    .parameter "app"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->getFinalList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Lcom/htc/launcher/ApplicationInfo;)I
    .locals 1
    .parameter "app"

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->getFinalList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized originalGet(I)Lcom/htc/launcher/ApplicationInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized originalSize()I
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(I)Lcom/htc/launcher/ApplicationInfo;
    .locals 4
    .parameter "index"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 117
    .local v0, app:Lcom/htc/launcher/ApplicationInfo;
    const-string v2, "VivoWCTGBS_246"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FASAIL.remove: i="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " app="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/launcher/ApplicationInfo;->toDebugString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    .line 119
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-object v0

    .line 117
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 116
    .end local v0           #app:Lcom/htc/launcher/ApplicationInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 4
    .parameter "app"

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 125
    .local v0, modified:Z
    if-eqz v0, :cond_0

    .line 126
    const-string v2, "VivoWCTGBS_246"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FASAIL.remove: app="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/launcher/ApplicationInfo;->toDebugString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    .line 128
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    monitor-exit p0

    return v0

    .line 126
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    .end local v0           #modified:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    const/4 v3, 0x1

    .line 134
    monitor-enter p0

    const/4 v2, 0x0

    .line 135
    .local v2, modified:I
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 136
    .local v0, app:Lcom/htc/launcher/ApplicationInfo;
    iget-object v4, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v0           #app:Lcom/htc/launcher/ApplicationInfo;
    :cond_1
    if-lez v2, :cond_2

    .line 141
    const-string v4, "VivoWCTGBS_246"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FASAIL.remove: modified="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    .line 143
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_2
    if-lez v2, :cond_3

    :goto_1
    monitor-exit p0

    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 134
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized search(Ljava/lang/String;)V
    .locals 1
    .parameter "keywords"

    .prologue
    .line 337
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/4 p1, 0x0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywords:Ljava/lang/String;

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 344
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywords:Ljava/lang/String;

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->keywordsChanged:Z

    .line 346
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(ILcom/htc/launcher/ApplicationInfo;)Lcom/htc/launcher/ApplicationInfo;
    .locals 4
    .parameter "index"
    .parameter "app"

    .prologue
    const/4 v1, 0x1

    .line 149
    monitor-enter p0

    :try_start_0
    const-string v2, "app should not be null"

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {v2, v1}, Lcom/htc/launcher/TFC;->assertTrue(Ljava/lang/String;Z)V

    .line 150
    iget-object v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 151
    .local v0, ret:Lcom/htc/launcher/ApplicationInfo;
    const-string v2, "VivoWCTGBS_246"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FASAIL.set: i="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " app="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/htc/launcher/ApplicationInfo;->toDebugString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->dataChanged:Z

    .line 153
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-object v0

    .line 149
    .end local v0           #ret:Lcom/htc/launcher/ApplicationInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 151
    .restart local v0       #ret:Lcom/htc/launcher/ApplicationInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 149
    .end local v0           #ret:Lcom/htc/launcher/ApplicationInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->getFinalList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized sort(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-Lcom/htc/launcher/ApplicationInfo;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparator:Ljava/util/Comparator;

    if-eq v0, p1, :cond_0

    .line 308
    iput-object p1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparator:Ljava/util/Comparator;

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->comparatorChanged:Z

    .line 310
    invoke-direct {p0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_0
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
