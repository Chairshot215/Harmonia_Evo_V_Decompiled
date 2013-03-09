.class final Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SubMapValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
        "<TK;TV;>.SubMapIter<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;->advance()V

    return-object v0
.end method
