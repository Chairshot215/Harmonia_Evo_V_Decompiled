.class Ljava/nio/MemoryBlock$UnmanagedBlock;
.super Ljava/nio/MemoryBlock;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/MemoryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmanagedBlock"
.end annotation


# direct methods
.method private constructor <init>(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/MemoryBlock;-><init>(IJLjava/nio/MemoryBlock$1;)V

    return-void
.end method

.method synthetic constructor <init>(IJLjava/nio/MemoryBlock$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/MemoryBlock$UnmanagedBlock;-><init>(IJ)V

    return-void
.end method
