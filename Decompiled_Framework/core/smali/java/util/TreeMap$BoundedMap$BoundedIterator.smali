.class abstract Ljava/util/TreeMap$BoundedMap$BoundedIterator;
.super Ljava/util/TreeMap$MapIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$BoundedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BoundedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap",
        "<TK;TV;>.MapIterator<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/TreeMap$BoundedMap;


# direct methods
.method protected constructor <init>(Ljava/util/TreeMap$BoundedMap;Ljava/util/TreeMap$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->this$1:Ljava/util/TreeMap$BoundedMap;

    iget-object v0, p1, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0, v0, p2}, Ljava/util/TreeMap$MapIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Node;)V

    return-void
.end method


# virtual methods
.method protected stepBackward()Ljava/util/TreeMap$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/TreeMap$MapIterator;->stepBackward()Ljava/util/TreeMap$Node;

    move-result-object v0

    iget-object v1, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->this$1:Ljava/util/TreeMap$BoundedMap;

    iget-object v2, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    iget-object v2, v2, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->this$1:Ljava/util/TreeMap$BoundedMap;

    #getter for: Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;
    invoke-static {v3}, Ljava/util/TreeMap$BoundedMap;->access$600(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;

    move-result-object v3

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #calls: Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z
    invoke-static {v1, v2, v3, v4}, Ljava/util/TreeMap$BoundedMap;->access$500(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    :cond_0
    return-object v0
.end method

.method protected stepForward()Ljava/util/TreeMap$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/TreeMap$MapIterator;->stepForward()Ljava/util/TreeMap$Node;

    move-result-object v0

    iget-object v1, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->this$1:Ljava/util/TreeMap$BoundedMap;

    iget-object v2, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    iget-object v2, v2, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    sget-object v3, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->this$1:Ljava/util/TreeMap$BoundedMap;

    #getter for: Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;
    invoke-static {v4}, Ljava/util/TreeMap$BoundedMap;->access$400(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;

    move-result-object v4

    #calls: Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z
    invoke-static {v1, v2, v3, v4}, Ljava/util/TreeMap$BoundedMap;->access$500(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    :cond_0
    return-object v0
.end method
