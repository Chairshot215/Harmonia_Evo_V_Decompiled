.class public Lcom/google/android/finsky/library/SumHasher;
.super Ljava/lang/Object;
.source "SumHasher.java"

# interfaces
.implements Lcom/google/android/finsky/library/LibraryHasher;


# instance fields
.field private mHash:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 2
    .parameter "documentHash"

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/google/android/finsky/library/SumHasher;->mHash:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/finsky/library/SumHasher;->mHash:J

    .line 16
    return-void
.end method

.method public compute()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/google/android/finsky/library/SumHasher;->mHash:J

    return-wide v0
.end method

.method public remove(J)V
    .locals 2
    .parameter "documentHash"

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/google/android/finsky/library/SumHasher;->mHash:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/finsky/library/SumHasher;->mHash:J

    .line 21
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/library/SumHasher;->mHash:J

    .line 31
    return-void
.end method
