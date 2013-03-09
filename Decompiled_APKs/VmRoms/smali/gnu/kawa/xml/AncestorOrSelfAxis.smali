.class public Lgnu/kawa/xml/AncestorOrSelfAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "AncestorOrSelfAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/AncestorOrSelfAxis;
    .locals 1
    .parameter "type"

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/xml/AncestorOrSelfAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/AncestorOrSelfAxis;-><init>()V

    .line 14
    .local v0, axis:Lgnu/kawa/xml/AncestorOrSelfAxis;
    iput-object p0, v0, Lgnu/kawa/xml/AncestorOrSelfAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    return-object v0
.end method

.method private static scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V
    .locals 1
    .parameter "seq"
    .parameter "ipos"
    .parameter "end"
    .parameter "type"
    .parameter "out"

    .prologue
    .line 21
    if-eq p1, p2, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->parentPos(I)I

    move-result v0

    invoke-static {p0, v0, p2, p3, p4}, Lgnu/kawa/xml/AncestorOrSelfAxis;->scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V

    .line 24
    invoke-interface {p3, p0, p1}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {p4, p0, p1}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 2
    .parameter "seq"
    .parameter "ipos"
    .parameter "out"

    .prologue
    .line 31
    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v0

    .line 32
    .local v0, end:I
    iget-object v1, p0, Lgnu/kawa/xml/AncestorOrSelfAxis;->type:Lgnu/lists/NodePredicate;

    invoke-static {p1, p2, v0, v1, p3}, Lgnu/kawa/xml/AncestorOrSelfAxis;->scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V

    .line 33
    return-void
.end method
