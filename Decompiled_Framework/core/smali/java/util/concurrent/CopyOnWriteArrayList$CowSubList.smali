.class Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;
.super Ljava/util/AbstractList;
.source "CopyOnWriteArrayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CowSubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private volatile slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

.field final synthetic this$0:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;[Ljava/lang/Object;II)V
    .locals 1

    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    invoke-direct {v0, p2, p3, p4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkPositionIndex(I)V

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v0

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkPositionIndex(I)V

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    array-length v0, v2

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v2, v4, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v1

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v6

    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v7

    array-length v7, v7

    sub-int/2addr v7, v0

    add-int/2addr v6, v7

    invoke-direct {v2, v4, v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    monitor-exit v3

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 5

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v2

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    #calls: Ljava/util/concurrent/CopyOnWriteArrayList;->removeRange(II)V
    invoke-static {v0, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$500(Ljava/util/concurrent/CopyOnWriteArrayList;II)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v2

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->containsAll(Ljava/util/Collection;[Ljava/lang/Object;II)Z

    move-result v2

    return v2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkElementIndex(I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v2

    add-int/2addr v2, p1

    aget-object v2, v1, v2

    return-object v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 6

    const/4 v3, -0x1

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    invoke-static {p1, v2, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v0

    if-eq v0, v3, :cond_0

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    sub-int v3, v0, v3

    :cond_0
    return v3
.end method

.method public isEmpty()Z
    .locals 3

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v1

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 6

    const/4 v3, -0x1

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    invoke-static {p1, v2, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v0

    if-eq v0, v3, :cond_0

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    sub-int v3, v0, v3

    :cond_0
    return v3
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkPositionIndex(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;-><init>([Ljava/lang/Object;II)V

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    add-int/2addr v3, p1

    #setter for: Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I
    invoke-static {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->access$002(Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;I)I

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkElementIndex(I)V

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v6

    #calls: Ljava/util/concurrent/CopyOnWriteArrayList;->removeOrRetain(Ljava/util/Collection;ZII)I
    invoke-static {v3, p1, v4, v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$600(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Collection;ZII)I

    move-result v0

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x1

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v6

    #calls: Ljava/util/concurrent/CopyOnWriteArrayList;->removeOrRetain(Ljava/util/Collection;ZII)I
    invoke-static {v3, p1, v4, v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$600(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Collection;ZII)I

    move-result v0

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkElementIndex(I)V

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->checkConcurrentModification([Ljava/lang/Object;)V

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v1, v3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;-><init>([Ljava/lang/Object;II)V

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 3

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v1

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->slice:Ljava/util/concurrent/CopyOnWriteArrayList$Slice;

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->size()I

    move-result v1

    if-le p2, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", list size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;->this$0:Ljava/util/concurrent/CopyOnWriteArrayList;

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->expectedElements:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$400(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)[Ljava/lang/Object;

    move-result-object v3

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v4

    add-int/2addr v4, p1

    #getter for: Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I
    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->access$200(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I

    move-result v5

    add-int/2addr v5, p2

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;[Ljava/lang/Object;II)V

    return-object v1
.end method
