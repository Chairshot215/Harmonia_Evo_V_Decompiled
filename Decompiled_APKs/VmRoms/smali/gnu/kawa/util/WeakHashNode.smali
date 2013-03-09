.class public Lgnu/kawa/util/WeakHashNode;
.super Ljava/lang/ref/WeakReference;
.source "WeakHashNode.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TK;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field public hash:I

.field public next:Lgnu/kawa/util/WeakHashNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;I)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, this:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, q:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<TK;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 25
    iput p3, p0, Lgnu/kawa/util/WeakHashNode;->hash:I

    .line 26
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, this:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    invoke-virtual {p0}, Lgnu/kawa/util/WeakHashNode;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    iget-object v0, p0, Lgnu/kawa/util/WeakHashNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lgnu/kawa/util/WeakHashNode;->value:Ljava/lang/Object;

    .line 45
    .local v0, old:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lgnu/kawa/util/WeakHashNode;->value:Ljava/lang/Object;

    .line 46
    return-object v0
.end method
