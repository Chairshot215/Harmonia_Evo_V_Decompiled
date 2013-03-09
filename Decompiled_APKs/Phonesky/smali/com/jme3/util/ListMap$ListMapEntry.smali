.class final Lcom/jme3/util/ListMap$ListMapEntry;
.super Ljava/lang/Object;
.source "ListMap.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/ListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/jme3/util/ListMap$ListMapEntry;,"Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/jme3/util/ListMap$ListMapEntry;->key:Ljava/lang/Object;

    .line 72
    iput-object p2, p0, Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/jme3/util/ListMap$ListMapEntry;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jme3/util/ListMap$ListMapEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jme3/util/ListMap$ListMapEntry;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jme3/util/ListMap$ListMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/jme3/util/ListMap$ListMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/ListMap$ListMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/jme3/util/ListMap$ListMapEntry;,"Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    new-instance v0, Lcom/jme3/util/ListMap$ListMapEntry;

    iget-object v1, p0, Lcom/jme3/util/ListMap$ListMapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/jme3/util/ListMap$ListMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/jme3/util/ListMap$ListMapEntry;,"Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/jme3/util/ListMap$ListMapEntry;->clone()Lcom/jme3/util/ListMap$ListMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/jme3/util/ListMap$ListMapEntry;,"Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/jme3/util/ListMap$ListMapEntry;->key:Ljava/lang/Object;

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
    .line 80
    .local p0, this:Lcom/jme3/util/ListMap$ListMapEntry;,"Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;

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
    .line 84
    .local p0, this:Lcom/jme3/util/ListMap$ListMapEntry;,"Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    .local p1, v:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
