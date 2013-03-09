.class public Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
.super Ljava/lang/ref/WeakReference;
.source "AbstractWeakHashTable.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/util/AbstractWeakHashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TV;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field public hash:I

.field htable:Lgnu/kawa/util/AbstractWeakHashTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/AbstractWeakHashTable",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgnu/kawa/util/AbstractWeakHashTable;I)V
    .locals 1
    .parameter
    .parameter
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lgnu/kawa/util/AbstractWeakHashTable",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;,"Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    .local p2, htable:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    iget-object v0, p2, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 160
    iput-object p2, p0, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->htable:Lgnu/kawa/util/AbstractWeakHashTable;

    .line 161
    iput p3, p0, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->hash:I

    .line 162
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;,"Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->get()Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, v:Ljava/lang/Object;,"TV;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->htable:Lgnu/kawa/util/AbstractWeakHashTable;

    invoke-virtual {v1, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;,"Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->get()Ljava/lang/Object;

    move-result-object v0

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
    .line 181
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;,"Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
