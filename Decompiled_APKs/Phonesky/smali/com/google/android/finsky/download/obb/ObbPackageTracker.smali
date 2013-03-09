.class public Lcom/google/android/finsky/download/obb/ObbPackageTracker;
.super Ljava/lang/Object;
.source "ObbPackageTracker.java"

# interfaces
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# instance fields
.field private final GINGERBREAD_MR1:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/finsky/download/obb/ObbPackageTracker;->GINGERBREAD_MR1:I

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 20
    return-void
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .locals 0
    .parameter "packageNames"
    .parameter "available"

    .prologue
    .line 28
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 24
    return-void
.end method

.method public onPackageFirstLaunch(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 46
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 7
    .parameter "packageName"
    .parameter "replacing"

    .prologue
    .line 33
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xa

    if-gt v5, v6, :cond_1

    if-nez p2, :cond_1

    .line 34
    invoke-static {p1}, Lcom/google/android/finsky/download/obb/ObbFactory;->getParentDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 35
    .local v4, parentDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 36
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 37
    .local v3, obbFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v3           #obbFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 42
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #parentDir:Ljava/io/File;
    :cond_1
    return-void
.end method
