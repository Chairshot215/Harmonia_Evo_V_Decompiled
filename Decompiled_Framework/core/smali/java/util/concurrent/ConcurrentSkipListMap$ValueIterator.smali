.class final Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$Iter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap",
        "<TK;TV;>.Iter<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentSkipListMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

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

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->nextValue:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;->advance()V

    return-object v0
.end method
