.class Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;
.super Ljava/lang/Object;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2$Diff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditList"
.end annotation


# instance fields
.field mDiffs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/android/talk/AnimatedAdapter2$Diff;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;)V
    .locals 1
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;->this$1:Lcom/google/android/talk/AnimatedAdapter2$Diff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;->mDiffs:Ljava/util/List;

    .line 759
    return-void
.end method


# virtual methods
.method public getDelta(I)Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;
    .locals 1
    .parameter "i"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;->mDiffs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;

    return-object v0
.end method

.method public insert(Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;)V
    .locals 1
    .parameter "delta"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;->mDiffs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;->mDiffs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
