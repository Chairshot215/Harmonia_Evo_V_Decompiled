.class public Lgnu/kawa/xml/IntersectNodes;
.super Lgnu/mapping/Procedure2;
.source "IntersectNodes.java"


# static fields
.field public static final exceptNodes:Lgnu/kawa/xml/IntersectNodes;

.field public static final intersectNodes:Lgnu/kawa/xml/IntersectNodes;


# instance fields
.field isExcept:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lgnu/kawa/xml/IntersectNodes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/kawa/xml/IntersectNodes;-><init>(Z)V

    sput-object v0, Lgnu/kawa/xml/IntersectNodes;->intersectNodes:Lgnu/kawa/xml/IntersectNodes;

    .line 19
    new-instance v0, Lgnu/kawa/xml/IntersectNodes;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/kawa/xml/IntersectNodes;-><init>(Z)V

    sput-object v0, Lgnu/kawa/xml/IntersectNodes;->exceptNodes:Lgnu/kawa/xml/IntersectNodes;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "isExcept"

    .prologue
    .line 22
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    iput-boolean p1, p0, Lgnu/kawa/xml/IntersectNodes;->isExcept:Z

    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "vals1"
    .parameter "vals2"

    .prologue
    .line 26
    new-instance v6, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v6}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 27
    .local v6, nodes1:Lgnu/kawa/xml/SortedNodes;
    new-instance v7, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v7}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 28
    .local v7, nodes2:Lgnu/kawa/xml/SortedNodes;
    new-instance v8, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v8}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 30
    .local v8, result:Lgnu/kawa/xml/SortedNodes;
    invoke-static {p1, v6}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 31
    invoke-static {p2, v7}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 32
    const/4 v2, 0x0

    .line 34
    .local v2, i2:I
    const/4 v10, 0x0

    .line 35
    .local v10, seq2:Lgnu/lists/AbstractSequence;
    const/4 v5, 0x0

    .line 39
    .local v5, ipos2:I
    const/4 v0, 0x0

    .line 41
    .local v0, cmp:I
    const/4 v1, 0x0

    .line 43
    .local v1, i1:I
    :goto_0
    invoke-virtual {v6, v1}, Lgnu/kawa/xml/SortedNodes;->getSeq(I)Lgnu/lists/AbstractSequence;

    move-result-object v9

    .line 44
    .local v9, seq1:Lgnu/lists/AbstractSequence;
    if-nez v9, :cond_0

    .line 77
    return-object v8

    .line 46
    :cond_0
    invoke-virtual {v6, v1}, Lgnu/kawa/xml/SortedNodes;->getPos(I)I

    move-result v4

    .line 53
    .local v4, ipos1:I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_3

    .line 54
    invoke-static {v9, v4, v10, v5}, Lgnu/lists/AbstractSequence;->compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I

    move-result v0

    move v3, v2

    .line 58
    .end local v2           #i2:I
    .local v3, i2:I
    :goto_1
    if-lez v0, :cond_1

    .line 60
    invoke-virtual {v7, v3}, Lgnu/kawa/xml/SortedNodes;->getSeq(I)Lgnu/lists/AbstractSequence;

    move-result-object v10

    .line 61
    if-nez v10, :cond_4

    .line 63
    const/4 v0, -0x2

    .line 73
    :cond_1
    if-nez v0, :cond_5

    const/4 v11, 0x1

    :goto_2
    iget-boolean v12, p0, Lgnu/kawa/xml/IntersectNodes;->isExcept:Z

    if-eq v11, v12, :cond_2

    .line 74
    invoke-virtual {v8, v9, v4}, Lgnu/kawa/xml/SortedNodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 41
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3           #i2:I
    .restart local v2       #i2:I
    goto :goto_0

    .line 55
    :cond_3
    if-nez v0, :cond_6

    .line 56
    const/4 v0, 0x1

    move v3, v2

    .end local v2           #i2:I
    .restart local v3       #i2:I
    goto :goto_1

    .line 68
    :cond_4
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i2:I
    .restart local v2       #i2:I
    invoke-virtual {v7, v3}, Lgnu/kawa/xml/SortedNodes;->getPos(I)I

    move-result v5

    .line 69
    invoke-static {v9, v4, v10, v5}, Lgnu/lists/AbstractSequence;->compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I

    move-result v0

    move v3, v2

    .end local v2           #i2:I
    .restart local v3       #i2:I
    goto :goto_1

    .line 73
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .end local v3           #i2:I
    .restart local v2       #i2:I
    :cond_6
    move v3, v2

    .end local v2           #i2:I
    .restart local v3       #i2:I
    goto :goto_1
.end method
