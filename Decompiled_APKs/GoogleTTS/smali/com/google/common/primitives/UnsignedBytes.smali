.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(BB)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 82
    and-int/lit16 v0, p0, 0xff

    and-int/lit16 v1, p1, 0xff

    sub-int/2addr v0, v1

    return v0
.end method
