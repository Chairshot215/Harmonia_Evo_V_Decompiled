.class Lcom/google/common/collect/LinkedListMultimap$4$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$4$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/LinkedListMultimap$4$1;

.field final synthetic val$node:Lcom/google/common/collect/LinkedListMultimap$Node;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$4$1;Lcom/google/common/collect/LinkedListMultimap$Node;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 783
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$4$1$1;,"Lcom/google/common/collect/LinkedListMultimap$4$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->this$2:Lcom/google/common/collect/LinkedListMultimap$4$1;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->val$node:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

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
    .line 785
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$4$1$1;,"Lcom/google/common/collect/LinkedListMultimap$4$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->val$node:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

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
    .line 788
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$4$1$1;,"Lcom/google/common/collect/LinkedListMultimap$4$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->val$node:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 791
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$4$1$1;,"Lcom/google/common/collect/LinkedListMultimap$4$1.1;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->val$node:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 792
    .local v0, oldValue:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$4$1$1;->val$node:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object p1, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 793
    return-object v0
.end method
