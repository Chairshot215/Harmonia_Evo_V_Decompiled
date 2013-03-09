.class final Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;
.super Ljava/util/concurrent/ConcurrentSkipListMap$Index;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HeadIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final level:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    iput p4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    return-void
.end method
