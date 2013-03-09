.class Lcom/android/settings/applications/HtcPackageBlocker;
.super Ljava/lang/Object;
.source "HtcPackageBlocker.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "Settings"

.field public static final EXTRA_PACKAGE_BLOCKED:Ljava/lang/String; = "android.intent.extra.PACKAGE_BLOCKED"

.field private static final FUNCTION_NAME:Ljava/lang/String; = "blocked_applications"

.field private static final MODULE_NAME:Ljava/lang/String; = "list"

.field private static final TAG:Ljava/lang/String;

.field private static mBlockedSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static supportBlockedApplications:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/settings/applications/HtcPackageBlocker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/HtcPackageBlocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 180
    sget-object v0, Lcom/android/settings/applications/HtcPackageBlocker;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method public static applyBlockedFilter(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, origEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v2, newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 103
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 104
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 106
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v3}, Lcom/android/settings/applications/HtcPackageBlocker;->isInBlockedSet(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_2
    return-object v2
.end method

.method public static isInBlockedSet(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "context"
    .parameter "appInfo"

    .prologue
    .line 126
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/settings/applications/HtcPackageBlocker;->isInBlockedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInBlockedSet(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 139
    invoke-static {p0}, Lcom/android/settings/applications/HtcPackageBlocker;->prepareBlockedSet(Landroid/content/Context;)V

    .line 140
    sget-object v0, Lcom/android/settings/applications/HtcPackageBlocker;->mBlockedSet:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static prepareBlockedSet(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 148
    sget-object v3, Lcom/android/settings/applications/HtcPackageBlocker;->mBlockedSet:Ljava/util/TreeSet;

    if-eqz v3, :cond_1

    .line 177
    :cond_0
    return-void

    .line 151
    :cond_1
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    sput-object v3, Lcom/android/settings/applications/HtcPackageBlocker;->mBlockedSet:Ljava/util/TreeSet;

    .line 154
    const-string v3, "Settings"

    const-string v4, "list"

    invoke-static {p0, v3, v4}, Lcom/android/settings/framework/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    move-result-object v0

    .line 156
    .local v0, data:Lcom/android/settings/framework/storage/customize/HtcCustomizedData;
    const-string v3, "blocked_applications"

    invoke-virtual {v0, v3}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 160
    .local v2, subData:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 164
    .local v1, keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    sget-object v4, Lcom/android/settings/applications/HtcPackageBlocker;->mBlockedSet:Ljava/util/TreeSet;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static supportBlockedPackage(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings/applications/HtcPackageBlocker;->supportBlockedApplications:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/android/settings/applications/HtcPackageBlocker;->supportBlockedApplications:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 81
    :goto_0
    return v0

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/android/settings/applications/HtcPackageBlocker;->prepareBlockedSet(Landroid/content/Context;)V

    .line 79
    sget-object v0, Lcom/android/settings/applications/HtcPackageBlocker;->mBlockedSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/HtcPackageBlocker;->supportBlockedApplications:Ljava/lang/Boolean;

    .line 81
    sget-object v0, Lcom/android/settings/applications/HtcPackageBlocker;->supportBlockedApplications:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
