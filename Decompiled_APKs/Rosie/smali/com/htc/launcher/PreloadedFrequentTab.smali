.class public Lcom/htc/launcher/PreloadedFrequentTab;
.super Lcom/htc/launcher/OperatorTab;
.source "PreloadedFrequentTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/PreloadedFrequentTab$1;,
        Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabAppComparator;,
        Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabClassifier;
    }
.end annotation


# instance fields
.field private final CAPACITY:I

.field private classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/String;IILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/HashMap;Ljava/util/List;I)V
    .locals 0
    .parameter "minorNb"
    .parameter "id"
    .parameter "initOrder"
    .parameter "initPlace"
    .parameter "restIconPath"
    .parameter "onIconPath"
    .parameter "overlayIconPath"
    .parameter
    .parameter
    .parameter "capacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/OperatorTabCore$Application;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p8, labelMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/util/Locale;Ljava/lang/String;>;"
    .local p9, appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/OperatorTabCore$Application;>;"
    invoke-direct/range {p0 .. p9}, Lcom/htc/launcher/OperatorTab;-><init>(ILjava/lang/String;IILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/HashMap;Ljava/util/List;)V

    .line 25
    iput p10, p0, Lcom/htc/launcher/PreloadedFrequentTab;->CAPACITY:I

    .line 26
    return-void
.end method

.method static synthetic access$200(Lcom/htc/launcher/PreloadedFrequentTab;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/htc/launcher/PreloadedFrequentTab;->CAPACITY:I

    return v0
.end method


# virtual methods
.method public declared-synchronized getAppComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/PreloadedFrequentTab;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabAppComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabAppComparator;-><init>(Lcom/htc/launcher/PreloadedFrequentTab;Lcom/htc/launcher/PreloadedFrequentTab$1;)V

    iput-object v0, p0, Lcom/htc/launcher/PreloadedFrequentTab;->comparator:Ljava/util/Comparator;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/PreloadedFrequentTab;->comparator:Ljava/util/Comparator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClassifier()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/PreloadedFrequentTab;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabClassifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabClassifier;-><init>(Lcom/htc/launcher/PreloadedFrequentTab;Lcom/htc/launcher/PreloadedFrequentTab$1;)V

    iput-object v0, p0, Lcom/htc/launcher/PreloadedFrequentTab;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/PreloadedFrequentTab;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/htc/launcher/OperatorTab;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
