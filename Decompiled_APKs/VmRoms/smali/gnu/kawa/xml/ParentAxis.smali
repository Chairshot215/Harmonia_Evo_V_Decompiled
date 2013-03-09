.class public Lgnu/kawa/xml/ParentAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "ParentAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/ParentAxis;
    .locals 1
    .parameter "type"

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/xml/ParentAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/ParentAxis;-><init>()V

    .line 14
    .local v0, axis:Lgnu/kawa/xml/ParentAxis;
    iput-object p0, v0, Lgnu/kawa/xml/ParentAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 2
    .parameter "seq"
    .parameter "ipos"
    .parameter "out"

    .prologue
    .line 20
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->parentPos(I)I

    move-result p2

    .line 21
    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v0

    .line 22
    .local v0, end:I
    if-eq p2, v0, :cond_0

    iget-object v1, p0, Lgnu/kawa/xml/ParentAxis;->type:Lgnu/lists/NodePredicate;

    invoke-interface {v1, p1, p2}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 24
    :cond_0
    return-void
.end method
