.class Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;
.super Ljava/lang/Object;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2$Diff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Chunk"
.end annotation


# instance fields
.field private mCount:I

.field private mData:[J

.field private mStart:I

.field final synthetic this$1:Lcom/google/android/talk/AnimatedAdapter2$Diff;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;[JII)V
    .locals 0
    .parameter
    .parameter "iseq"
    .parameter "pos"
    .parameter "count"

    .prologue
    .line 789
    iput-object p1, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->this$1:Lcom/google/android/talk/AnimatedAdapter2$Diff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput p3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->mStart:I

    .line 791
    if-ltz p4, :cond_0

    .end local p4
    :goto_0
    iput p4, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->mCount:I

    .line 792
    iput-object p2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->mData:[J

    .line 793
    return-void

    .line 791
    .restart local p4
    :cond_0
    const/4 p4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 800
    iget v0, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->mCount:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->mStart:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 812
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getStart()I

    move-result v0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->mData:[J

    aget-wide v3, v3, v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public valueAt(I)J
    .locals 2
    .parameter "offset"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->mData:[J

    invoke-virtual {p0}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getStart()I

    move-result v1

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    return-wide v0
.end method
