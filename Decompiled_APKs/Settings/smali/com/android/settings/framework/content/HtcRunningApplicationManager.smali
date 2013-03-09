.class public Lcom/android/settings/framework/content/HtcRunningApplicationManager;
.super Ljava/lang/Object;
.source "HtcRunningApplicationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRunningAppProcessesArrayList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 40
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 42
    .local v1, processList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v1, :cond_0

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static getRunningAppProcessesSortedArrayList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/settings/framework/content/HtcRunningApplicationManager;->getRunningAppProcessesArrayList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 62
    .local v1, processList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v0, Lcom/android/settings/framework/content/HtcRunningAppProcessInfoComparator;

    invoke-direct {v0}, Lcom/android/settings/framework/content/HtcRunningAppProcessInfoComparator;-><init>()V

    .line 66
    .local v0, comparator:Lcom/android/settings/framework/content/HtcRunningAppProcessInfoComparator;
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    return-object v1
.end method

.method public static getRunningPackagesTreeSet(Landroid/content/Context;)Ljava/util/TreeSet;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/settings/framework/content/HtcRunningApplicationManager;->getRunningAppProcessesArrayList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    .line 87
    .local v7, processList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 90
    .local v5, packageSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 91
    .local v6, processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 103
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 104
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #packageName:Ljava/lang/String;
    .end local v6           #processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return-object v5
.end method
