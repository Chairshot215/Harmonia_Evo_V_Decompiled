.class public Lgnu/kawa/xml/NodeCompare;
.super Lgnu/mapping/Procedure2;
.source "NodeCompare.java"


# static fields
.field public static final $Eq:Lgnu/kawa/xml/NodeCompare; = null

.field public static final $Gr:Lgnu/kawa/xml/NodeCompare; = null

.field public static final $Ls:Lgnu/kawa/xml/NodeCompare; = null

.field public static final $Ne:Lgnu/kawa/xml/NodeCompare; = null

.field static final RESULT_EQU:I = 0x0

.field static final RESULT_GRT:I = 0x1

.field static final RESULT_LSS:I = -0x1

.field static final TRUE_IF_EQU:I = 0x8

.field static final TRUE_IF_GRT:I = 0x10

.field static final TRUE_IF_LSS:I = 0x4


# instance fields
.field flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "is"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Eq:Lgnu/kawa/xml/NodeCompare;

    .line 27
    const-string v0, "isnot"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Ne:Lgnu/kawa/xml/NodeCompare;

    .line 28
    const-string v0, ">>"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Gr:Lgnu/kawa/xml/NodeCompare;

    .line 29
    const-string v0, "<<"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Ls:Lgnu/kawa/xml/NodeCompare;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;
    .locals 1
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 33
    new-instance v0, Lgnu/kawa/xml/NodeCompare;

    invoke-direct {v0}, Lgnu/kawa/xml/NodeCompare;-><init>()V

    .line 34
    .local v0, proc:Lgnu/kawa/xml/NodeCompare;
    invoke-virtual {v0, p0}, Lgnu/kawa/xml/NodeCompare;->setName(Ljava/lang/String;)V

    .line 35
    iput p1, v0, Lgnu/kawa/xml/NodeCompare;->flags:I

    .line 36
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v9, 0x1

    .line 41
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 42
    :cond_0
    const/4 v8, 0x0

    .line 99
    :goto_0
    return-object v8

    .line 43
    :cond_1
    sget-object v8, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v8, :cond_2

    move-object v8, p1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    sget-object v8, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p2, v8, :cond_3

    move-object v8, p2

    .line 46
    goto :goto_0

    .line 50
    :cond_3
    instance-of v8, p1, Lgnu/lists/AbstractSequence;

    if-eqz v8, :cond_4

    .line 52
    move-object v0, p1

    check-cast v0, Lgnu/lists/AbstractSequence;

    move-object v5, v0

    .line 53
    .local v5, seq1:Lgnu/lists/AbstractSequence;
    invoke-virtual {v5}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v3

    .line 68
    .local v3, ipos1:I
    :goto_1
    instance-of v8, p2, Lgnu/lists/AbstractSequence;

    if-eqz v8, :cond_5

    .line 70
    move-object v0, p2

    check-cast v0, Lgnu/lists/AbstractSequence;

    move-object v6, v0

    .line 71
    .local v6, seq2:Lgnu/lists/AbstractSequence;
    invoke-virtual {v6}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v4

    .line 88
    .local v4, ipos2:I
    :goto_2
    if-ne v5, v6, :cond_6

    .line 89
    invoke-virtual {v5, v3, v4}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v1

    .line 96
    .local v1, comp:I
    :goto_3
    add-int/lit8 v8, v1, 0x3

    shl-int v8, v9, v8

    iget v9, p0, Lgnu/kawa/xml/NodeCompare;->flags:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    .line 97
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 59
    .end local v1           #comp:I
    .end local v3           #ipos1:I
    .end local v4           #ipos2:I
    .end local v5           #seq1:Lgnu/lists/AbstractSequence;
    .end local v6           #seq2:Lgnu/lists/AbstractSequence;
    :cond_4
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/lists/SeqPosition;

    move-object v7, v0

    .line 60
    .local v7, spos:Lgnu/lists/SeqPosition;
    iget-object v5, v7, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 61
    .restart local v5       #seq1:Lgnu/lists/AbstractSequence;
    invoke-virtual {v7}, Lgnu/lists/SeqPosition;->getPos()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .restart local v3       #ipos1:I
    goto :goto_1

    .line 63
    .end local v3           #ipos1:I
    .end local v5           #seq1:Lgnu/lists/AbstractSequence;
    .end local v7           #spos:Lgnu/lists/SeqPosition;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 65
    .local v2, ex:Ljava/lang/ClassCastException;
    invoke-static {v2, p0, v9, p1}, Lgnu/mapping/WrongType;->make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)Lgnu/mapping/WrongType;

    move-result-object v8

    throw v8

    .line 77
    .end local v2           #ex:Ljava/lang/ClassCastException;
    .restart local v3       #ipos1:I
    .restart local v5       #seq1:Lgnu/lists/AbstractSequence;
    :cond_5
    :try_start_1
    move-object v0, p2

    check-cast v0, Lgnu/lists/SeqPosition;

    move-object v7, v0

    .line 78
    .restart local v7       #spos:Lgnu/lists/SeqPosition;
    iget-object v6, v7, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 79
    .restart local v6       #seq2:Lgnu/lists/AbstractSequence;
    invoke-virtual {v7}, Lgnu/lists/SeqPosition;->getPos()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .restart local v4       #ipos2:I
    goto :goto_2

    .line 81
    .end local v4           #ipos2:I
    .end local v6           #seq2:Lgnu/lists/AbstractSequence;
    .end local v7           #spos:Lgnu/lists/SeqPosition;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 83
    .restart local v2       #ex:Ljava/lang/ClassCastException;
    const/4 v8, 0x2

    invoke-static {v2, p0, v8, p2}, Lgnu/mapping/WrongType;->make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)Lgnu/mapping/WrongType;

    move-result-object v8

    throw v8

    .line 90
    .end local v2           #ex:Ljava/lang/ClassCastException;
    .restart local v4       #ipos2:I
    .restart local v6       #seq2:Lgnu/lists/AbstractSequence;
    :cond_6
    sget-object v8, Lgnu/kawa/xml/NodeCompare;->$Eq:Lgnu/kawa/xml/NodeCompare;

    if-ne p0, v8, :cond_7

    .line 91
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 92
    :cond_7
    sget-object v8, Lgnu/kawa/xml/NodeCompare;->$Ne:Lgnu/kawa/xml/NodeCompare;

    if-ne p0, v8, :cond_8

    .line 93
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 95
    :cond_8
    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->stableCompare(Lgnu/lists/AbstractSequence;)I

    move-result v1

    .restart local v1       #comp:I
    goto :goto_3

    .line 99
    :cond_9
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
