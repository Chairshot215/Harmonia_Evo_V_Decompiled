.class public Lgnu/kawa/xml/DescendantAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "DescendantAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/DescendantAxis;
    .locals 1
    .parameter "type"

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/xml/DescendantAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/DescendantAxis;-><init>()V

    .line 14
    .local v0, axis:Lgnu/kawa/xml/DescendantAxis;
    iput-object p0, v0, Lgnu/kawa/xml/DescendantAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 4
    .parameter "seq"
    .parameter "ipos"
    .parameter "out"

    .prologue
    .line 20
    instance-of v2, p1, Lgnu/lists/TreeList;

    if-nez v2, :cond_1

    .line 22
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result p2

    .line 23
    :goto_0
    if-eqz p2, :cond_2

    .line 25
    iget-object v2, p0, Lgnu/kawa/xml/DescendantAxis;->type:Lgnu/lists/NodePredicate;

    invoke-interface {v2, p1, p2}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/xml/DescendantAxis;->scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V

    .line 28
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result p2

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v1

    .line 33
    .local v1, limit:I
    move v0, p2

    .line 36
    .local v0, child:I
    :goto_1
    iget-object v2, p0, Lgnu/kawa/xml/DescendantAxis;->type:Lgnu/lists/NodePredicate;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v1, v3}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 41
    .end local v0           #child:I
    .end local v1           #limit:I
    :cond_2
    return-void

    .line 39
    .restart local v0       #child:I
    .restart local v1       #limit:I
    :cond_3
    invoke-interface {p3, p1, v0}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_1
.end method
