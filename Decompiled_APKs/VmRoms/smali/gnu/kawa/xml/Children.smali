.class public Lgnu/kawa/xml/Children;
.super Lgnu/mapping/MethodProc;
.source "Children.java"


# static fields
.field public static final children:Lgnu/kawa/xml/Children;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lgnu/kawa/xml/Children;

    invoke-direct {v0}, Lgnu/kawa/xml/Children;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Children;->children:Lgnu/kawa/xml/Children;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V
    .locals 7
    .parameter "tlist"
    .parameter "index"
    .parameter "consumer"

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->gotoChildrenStart(I)I

    move-result v1

    .line 17
    .local v1, child:I
    if-gez v1, :cond_1

    .line 37
    :cond_0
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v3

    .line 22
    .local v3, limit:I
    :goto_0
    shl-int/lit8 v2, v1, 0x1

    .line 24
    .local v2, ipos:I
    invoke-virtual {p0, v1, v3}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v4

    .line 26
    .local v4, next:I
    move v5, v4

    .line 27
    .local v5, next0:I
    if-ne v4, v1, :cond_2

    .line 28
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v4

    .line 29
    :cond_2
    if-ltz v4, :cond_0

    .line 31
    instance-of v6, p2, Lgnu/lists/PositionConsumer;

    if-eqz v6, :cond_3

    .line 32
    move-object v0, p2

    check-cast v0, Lgnu/lists/PositionConsumer;

    move-object v6, v0

    invoke-interface {v6, p0, v2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 35
    :goto_1
    move v1, v4

    .line 36
    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {p0, v1, v4, p2}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    goto :goto_1
.end method

.method public static children(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 3
    .parameter "node"
    .parameter "consumer"

    .prologue
    .line 41
    instance-of v2, p0, Lgnu/lists/TreeList;

    if-eqz v2, :cond_1

    .line 43
    check-cast p0, Lgnu/lists/TreeList;

    .end local p0
    const/4 v2, 0x0

    invoke-static {p0, v2, p1}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 45
    .restart local p0
    :cond_1
    instance-of v2, p0, Lgnu/lists/SeqPosition;

    if-eqz v2, :cond_0

    instance-of v2, p0, Lgnu/lists/TreePosition;

    if-nez v2, :cond_0

    .line 47
    move-object v0, p0

    check-cast v0, Lgnu/lists/SeqPosition;

    move-object v1, v0

    .line 48
    .local v1, pos:Lgnu/lists/SeqPosition;
    iget-object v2, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v2, v2, Lgnu/lists/TreeList;

    if-eqz v2, :cond_0

    .line 49
    iget-object p0, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .end local p0
    check-cast p0, Lgnu/lists/TreeList;

    iget v2, v1, Lgnu/lists/SeqPosition;->ipos:I

    shr-int/lit8 v2, v2, 0x1

    invoke-static {p0, v2, p1}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 7
    .parameter "ctx"

    .prologue
    .line 55
    iget-object v1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 56
    .local v1, consumer:Lgnu/lists/Consumer;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v4

    .line 57
    .local v4, node:Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 58
    instance-of v6, v4, Lgnu/mapping/Values;

    if-eqz v6, :cond_2

    .line 60
    move-object v0, v4

    check-cast v0, Lgnu/lists/TreeList;

    move-object v5, v0

    .line 61
    .local v5, tlist:Lgnu/lists/TreeList;
    const/4 v2, 0x0

    .line 64
    .local v2, index:I
    :goto_0
    shl-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v3

    .line 65
    .local v3, kind:I
    if-nez v3, :cond_0

    .line 76
    .end local v2           #index:I
    .end local v3           #kind:I
    .end local v5           #tlist:Lgnu/lists/TreeList;
    :goto_1
    return-void

    .line 67
    .restart local v2       #index:I
    .restart local v3       #kind:I
    .restart local v5       #tlist:Lgnu/lists/TreeList;
    :cond_0
    const/16 v6, 0x20

    if-ne v3, v6, :cond_1

    .line 68
    shl-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v1}, Lgnu/kawa/xml/Children;->children(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 71
    :goto_2
    invoke-virtual {v5, v2}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v2

    .line 72
    goto :goto_0

    .line 70
    :cond_1
    invoke-static {v5, v2, v1}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    goto :goto_2

    .line 75
    .end local v2           #index:I
    .end local v3           #kind:I
    .end local v5           #tlist:Lgnu/lists/TreeList;
    :cond_2
    invoke-static {v4, v1}, Lgnu/kawa/xml/Children;->children(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_1
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x1001

    return v0
.end method
