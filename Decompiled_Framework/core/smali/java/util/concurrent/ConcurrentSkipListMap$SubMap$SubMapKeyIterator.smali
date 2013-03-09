.class final Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SubMapKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
        "<TK;TV;>.SubMapIter<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;->advance()V

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method
