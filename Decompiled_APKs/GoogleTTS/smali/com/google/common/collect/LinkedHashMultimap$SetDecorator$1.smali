.class Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;
.super Ljava/lang/Object;
.source "LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;

.field final synthetic val$delegateIterator:Ljava/util/Iterator;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;,"Lcom/google/common/collect/LinkedHashMultimap$SetDecorator.1;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->this$1:Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;

    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->val$delegateIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 221
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;,"Lcom/google/common/collect/LinkedHashMultimap$SetDecorator.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->val$delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;,"Lcom/google/common/collect/LinkedHashMultimap$SetDecorator.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->val$delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->value:Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 228
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;,"Lcom/google/common/collect/LinkedHashMultimap$SetDecorator.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->val$delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 229
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->this$1:Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;

    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->this$1:Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->createEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method
