.class public Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;
.super Ljava/lang/Object;
.source "WebStorageSizeManager.java"

# interfaces
.implements Lcom/android/browser/WebStorageSizeManager$DiskInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/WebStorageSizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatFsDiskInfo"
.end annotation


# instance fields
.field private mFs:Landroid/os/StatFs;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;->mFs:Landroid/os/StatFs;

    .line 141
    return-void
.end method


# virtual methods
.method public getFreeSpaceSizeBytes()J
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;->mFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;->mFs:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalSizeBytes()J
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;->mFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;->mFs:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method
