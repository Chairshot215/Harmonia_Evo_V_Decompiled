.class final Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;
.super Ljava/util/concurrent/ConcurrentHashMap$HashIterator;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry()Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$WriteThroughEntry;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$WriteThroughEntry;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
