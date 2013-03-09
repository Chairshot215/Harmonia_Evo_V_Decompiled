.class public Lcom/htc/launcher/OperatorTab;
.super Lcom/htc/launcher/OperatorTabCore;
.source "OperatorTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/OperatorTab$1;,
        Lcom/htc/launcher/OperatorTab$OperatorTabAppComparator;,
        Lcom/htc/launcher/OperatorTab$OperatorTabClassifier;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String;


# instance fields
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

.field private intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/htc/launcher/CarouselDummyActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/OperatorTab;->ACTION:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 1
    .parameter "minorNb"
    .parameter "id"
    .parameter "initOrder"
    .parameter "initPlace"
    .parameter "restIconPath"
    .parameter "onIconPath"
    .parameter "overlayIconPath"
    .parameter
    .parameter
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
            ">;)V"
        }
    .end annotation

    .prologue
    .local p8, labelMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/util/Locale;Ljava/lang/String;>;"
    .local p9, appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/OperatorTabCore$Application;>;"
    const/4 v0, 0x0

    .line 25
    invoke-direct/range {p0 .. p9}, Lcom/htc/launcher/OperatorTabCore;-><init>(ILjava/lang/String;IILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/HashMap;Ljava/util/List;)V

    .line 19
    iput-object v0, p0, Lcom/htc/launcher/OperatorTab;->intent:Landroid/content/Intent;

    .line 20
    iput-object v0, p0, Lcom/htc/launcher/OperatorTab;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    .line 28
    return-void
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
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/OperatorTab;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/htc/launcher/OperatorTab$OperatorTabAppComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/launcher/OperatorTab$OperatorTabAppComparator;-><init>(Lcom/htc/launcher/OperatorTab;Lcom/htc/launcher/OperatorTab$1;)V

    iput-object v0, p0, Lcom/htc/launcher/OperatorTab;->comparator:Ljava/util/Comparator;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/OperatorTab;->comparator:Ljava/util/Comparator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClassifier()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;
    .locals 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/OperatorTab;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/htc/launcher/OperatorTab$OperatorTabClassifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/launcher/OperatorTab$OperatorTabClassifier;-><init>(Lcom/htc/launcher/OperatorTab;Lcom/htc/launcher/OperatorTab$1;)V

    iput-object v0, p0, Lcom/htc/launcher/OperatorTab;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/OperatorTab;->classifier:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/OperatorTab;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/htc/launcher/OperatorTab;->ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/launcher/OperatorTab;->intent:Landroid/content/Intent;

    .line 50
    iget-object v0, p0, Lcom/htc/launcher/OperatorTab;->intent:Landroid/content/Intent;

    const-string v1, "extra_tab"

    invoke-virtual {p0}, Lcom/htc/launcher/OperatorTab;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/OperatorTab;->intent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
