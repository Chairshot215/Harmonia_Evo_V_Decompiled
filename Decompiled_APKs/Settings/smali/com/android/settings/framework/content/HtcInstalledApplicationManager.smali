.class public Lcom/android/settings/framework/content/HtcInstalledApplicationManager;
.super Ljava/lang/Object;
.source "HtcInstalledApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/content/HtcInstalledApplicationManager$1;,
        Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/settings/framework/content/HtcRunningApplicationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/HtcInstalledApplicationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static filterApplicationList(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;)Ljava/util/ArrayList;
    .locals 3
    .parameter "context"
    .parameter
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, installedList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :goto_0
    return-object v1

    .line 101
    :cond_1
    sget-object v1, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$1;->$SwitchMap$com$android$settings$framework$content$HtcInstalledApplicationManager$Filter:[I

    invoke-virtual {p2}, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 112
    const-string v0, "Unknown filter"

    .line 113
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/framework/content/HtcInstalledApplicationManager;->filterWithAll(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/settings/framework/content/HtcInstalledApplicationManager;->filterWithRunning(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-static {p1}, Lcom/android/settings/framework/content/HtcInstalledApplicationManager;->filterWithThirdParty(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static filterWithAll(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, installedList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static filterWithRunning(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, installedList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {p0}, Lcom/android/settings/framework/content/HtcRunningApplicationManager;->getRunningPackagesTreeSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v3

    .line 152
    .local v3, packagesTreeSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v1, filterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 155
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return-object v1
.end method

.method private static filterWithThirdParty(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, installedList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v1, filteredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 181
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    .line 183
    .local v3, remained:Z
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2

    .line 188
    const/4 v3, 0x1

    .line 197
    :cond_1
    :goto_1
    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_2
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 194
    const/4 v3, 0x1

    goto :goto_1

    .line 202
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #remained:Z
    :cond_3
    return-object v1
.end method

.method public static getInstalledApplicationList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;->ALL:Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    invoke-static {p0, v0}, Lcom/android/settings/framework/content/HtcInstalledApplicationManager;->getInstalledApplicationList(Landroid/content/Context;Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledApplicationList(Landroid/content/Context;Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;)Ljava/util/ArrayList;
    .locals 4
    .parameter "context"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const-string v1, "The context can not be null."

    .line 63
    .local v1, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 75
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, installedList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {p0, v0, p1}, Lcom/android/settings/framework/content/HtcInstalledApplicationManager;->filterApplicationList(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method
