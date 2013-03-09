.class final Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$Iter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap",
        "<TK;TV;>.Iter<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentSkipListMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

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

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;->advance()V

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method
