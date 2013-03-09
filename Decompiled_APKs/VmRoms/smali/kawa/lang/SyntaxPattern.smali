.class public Lkawa/lang/SyntaxPattern;
.super Lkawa/lang/Pattern;
.source "SyntaxPattern.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final MATCH_ANY:I = 0x3

.field static final MATCH_ANY_CAR:I = 0x7

.field static final MATCH_EQUALS:I = 0x2

.field static final MATCH_IGNORE:I = 0x18

.field static final MATCH_LENGTH:I = 0x6

.field static final MATCH_LREPEAT:I = 0x5

.field static final MATCH_MISC:I = 0x0

.field static final MATCH_NIL:I = 0x8

.field static final MATCH_PAIR:I = 0x4

.field static final MATCH_VECTOR:I = 0x10

.field static final MATCH_WIDE:I = 0x1


# instance fields
.field literals:[Ljava/lang/Object;

.field program:Ljava/lang/String;

.field varCount:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 6
    .parameter "pattern"
    .parameter "literal_identifiers"
    .parameter "tr"

    .prologue
    .line 114
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/StringBuffer;Ljava/lang/Object;Lkawa/lang/SyntaxForm;[Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 0
    .parameter "program"
    .parameter "literals"
    .parameter "varCount"

    .prologue
    .line 105
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 106
    iput-object p1, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 108
    iput p3, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    .line 109
    return-void
.end method

.method constructor <init>(Ljava/lang/StringBuffer;Ljava/lang/Object;Lkawa/lang/SyntaxForm;[Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 9
    .parameter "programbuf"
    .parameter "pattern"
    .parameter "syntax"
    .parameter "literal_identifiers"
    .parameter "tr"

    .prologue
    const/4 v4, 0x0

    .line 121
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 122
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 123
    .local v5, literalsbuf:Ljava/util/Vector;
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p4

    move v7, v4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lkawa/lang/SyntaxPattern;->translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V

    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 126
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 128
    iget-object v0, p5, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v0, v0, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    .line 154
    return-void
.end method

.method private static addInt(Ljava/lang/StringBuffer;I)V
    .locals 1
    .parameter "sbuf"
    .parameter "val"

    .prologue
    .line 408
    const v0, 0xffff

    if-le p1, v0, :cond_0

    .line 409
    shl-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 410
    :cond_0
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 411
    return-void
.end method

.method public static allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .parameter "varCount"
    .parameter "outer"

    .prologue
    const/4 v2, 0x0

    .line 632
    new-array v0, p0, [Ljava/lang/Object;

    .line 633
    .local v0, vars:[Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 634
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    :cond_0
    return-object v0
.end method

.method public static getLiteralsList(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)[Ljava/lang/Object;
    .locals 11
    .parameter "list"
    .parameter "syntax"
    .parameter "tr"

    .prologue
    const/16 v10, 0x65

    .line 670
    invoke-virtual {p2, p0}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 671
    .local v6, savePos:Ljava/lang/Object;
    invoke-static {p0}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v1

    .line 672
    .local v1, count:I
    if-gez v1, :cond_0

    .line 674
    const-string v8, "missing or malformed literals list"

    invoke-virtual {p2, v10, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 675
    const/4 v1, 0x0

    .line 677
    :cond_0
    add-int/lit8 v8, v1, 0x1

    new-array v4, v8, [Ljava/lang/Object;

    .line 678
    .local v4, literals:[Ljava/lang/Object;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-gt v2, v1, :cond_4

    .line 680
    :goto_1
    instance-of v8, p0, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_1

    .line 682
    move-object v0, p0

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object p1, v0

    .line 683
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 685
    :cond_1
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    move-object v5, v0

    .line 686
    .local v5, pair:Lgnu/lists/Pair;
    invoke-virtual {p2, v5}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .line 689
    .local v3, literal:Ljava/lang/Object;
    instance-of v8, v3, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_3

    .line 691
    move-object v7, v3

    .line 692
    .local v7, wrapped:Ljava/lang/Object;
    check-cast v3, Lkawa/lang/SyntaxForm;

    .end local v3           #literal:Ljava/lang/Object;
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    .line 696
    .restart local v3       #literal:Ljava/lang/Object;
    :goto_2
    instance-of v8, v3, Lgnu/mapping/Symbol;

    if-nez v8, :cond_2

    .line 697
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "non-symbol \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' in literals list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v10, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 698
    :cond_2
    aput-object v7, v4, v2

    .line 699
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .line 678
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 695
    .end local v7           #wrapped:Ljava/lang/Object;
    :cond_3
    move-object v7, v3

    .restart local v7       #wrapped:Ljava/lang/Object;
    goto :goto_2

    .line 701
    .end local v3           #literal:Ljava/lang/Object;
    .end local v5           #pair:Lgnu/lists/Pair;
    .end local v7           #wrapped:Ljava/lang/Object;
    :cond_4
    invoke-virtual {p2, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 702
    return-object v4
.end method

.method private static insertInt(ILjava/lang/StringBuffer;I)I
    .locals 1
    .parameter "offset"
    .parameter "sbuf"
    .parameter "val"

    .prologue
    .line 415
    const v0, 0xffff

    if-le p2, v0, :cond_0

    .line 416
    shl-int/lit8 v0, p2, 0xd

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0}, Lkawa/lang/SyntaxPattern;->insertInt(ILjava/lang/StringBuffer;I)I

    move-result v0

    add-int/2addr p0, v0

    .line 417
    :cond_0
    int-to-char v0, p2

    invoke-virtual {p1, p0, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 418
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z
    .locals 5
    .parameter "id1"
    .parameter "sc1"
    .parameter "id2"
    .parameter "sc2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 641
    if-eq p0, p2, :cond_1

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 663
    :goto_0
    return v2

    .line 643
    :cond_1
    if-ne p1, p3, :cond_2

    move v2, v4

    .line 644
    goto :goto_0

    .line 645
    :cond_2
    const/4 v0, 0x0

    .local v0, d1:Lgnu/expr/Declaration;
    const/4 v1, 0x0

    .line 649
    .local v1, d2:Lgnu/expr/Declaration;
    :goto_1
    if-eqz p1, :cond_3

    instance-of v2, p1, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_3

    .line 651
    invoke-virtual {p1, p0}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_5

    .line 656
    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    instance-of v2, p3, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_4

    .line 658
    invoke-virtual {p3, p2}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 659
    if-eqz v1, :cond_6

    .line 663
    :cond_4
    if-ne v0, v1, :cond_7

    move v2, v4

    goto :goto_0

    .line 654
    :cond_5
    iget-object p1, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_1

    .line 661
    :cond_6
    iget-object p3, p3, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_2

    :cond_7
    move v2, v3

    .line 663
    goto :goto_0
.end method


# virtual methods
.method public disassemble()V
    .locals 4

    .prologue
    .line 158
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v1

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    const/4 v2, 0x0

    iget-object v3, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    .line 160
    return-void
.end method

.method public disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;)V
    .locals 2
    .parameter "ps"
    .parameter "tr"

    .prologue
    .line 164
    const/4 v0, 0x0

    iget-object v1, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    .line 165
    return-void
.end method

.method disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V
    .locals 9
    .parameter "ps"
    .parameter "tr"
    .parameter "start"
    .parameter "limit"

    .prologue
    const/16 v8, 0x8

    .line 169
    const/4 v4, 0x0

    .line 170
    .local v4, pattern_names:Ljava/util/Vector;
    if-eqz p2, :cond_0

    iget-object v6, p2, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-eqz v6, :cond_0

    .line 171
    iget-object v6, p2, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v4, v6, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    .line 172
    :cond_0
    const/4 v5, 0x0

    .line 173
    .local v5, value:I
    move v1, p3

    .local v1, i:I
    :goto_0
    if-ge v1, p4, :cond_8

    .line 175
    iget-object v6, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 176
    .local v0, ch:C
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 178
    and-int/lit8 v3, v0, 0x7

    .line 179
    .local v3, opcode:I
    shl-int/lit8 v6, v5, 0xd

    shr-int/lit8 v7, v0, 0x3

    or-int v5, v6, v7

    .line 180
    packed-switch v3, :pswitch_data_0

    .line 232
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    :goto_1
    const/4 v5, 0x0

    .line 236
    goto :goto_0

    .line 183
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - WIDE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - EQUALS["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    iget-object v6, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    if-eqz v6, :cond_2

    if-ltz v5, :cond_2

    iget-object v6, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 188
    iget-object v6, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    aget-object v6, v6, v5

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 189
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 193
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x3

    if-ne v3, v7, :cond_4

    const-string v7, " - ANY["

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    if-eqz v4, :cond_3

    if-ltz v5, :cond_3

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 197
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 198
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 193
    :cond_4
    const-string v7, " - ANY_CAR["

    goto :goto_2

    .line 201
    :pswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - PAIR["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 204
    :pswitch_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - LREPEAT["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    add-int v6, v1, v5

    invoke-virtual {p0, p1, p2, v1, v6}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    .line 206
    add-int/2addr v1, v5

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": - repeat first var:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    shr-int/lit8 v7, v7, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": - repeast nested vars:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    shr-int/lit8 v7, v7, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 211
    :pswitch_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - LENGTH "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pairs. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v7, v5, 0x1

    if-nez v7, :cond_5

    const-string v7, "pure list"

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v7, "impure list"

    goto :goto_3

    .line 215
    :pswitch_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[misc ch:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " n:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    if-ne v0, v8, :cond_6

    .line 218
    const-string v6, " - NIL"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 221
    :cond_6
    const/16 v6, 0x10

    if-ne v0, v6, :cond_7

    .line 223
    const-string v6, " - VECTOR"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 226
    :cond_7
    const/16 v6, 0x18

    if-ne v0, v6, :cond_1

    .line 228
    const-string v6, " - IGNORE"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 237
    .end local v0           #ch:C
    .end local v3           #opcode:I
    :cond_8
    return-void

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 7
    .parameter "obj"
    .parameter "vars"
    .parameter "start_vars"

    .prologue
    .line 79
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v6

    .line 101
    .local v6, r:Z
    return v6
.end method

.method public match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z
    .locals 38
    .parameter "obj"
    .parameter "vars"
    .parameter "start_vars"
    .parameter "pc"
    .parameter "syntax"

    .prologue
    .line 446
    const/16 v37, 0x0

    .line 450
    .local v37, value:I
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v4, v0

    if-eqz v4, :cond_1

    .line 452
    move-object/from16 v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 p5, v0

    .line 453
    invoke-interface/range {p5 .. p5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 455
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move-object v4, v0

    add-int/lit8 v8, p4, 0x1

    .end local p4
    .local v8, pc:I
    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 456
    .local v16, ch:C
    and-int/lit8 v27, v16, 0x7

    .line 457
    .local v27, opcode:I
    shl-int/lit8 v4, v37, 0xd

    shr-int/lit8 v5, v16, 0x3

    or-int v37, v4, v5

    .line 458
    packed-switch v27, :pswitch_data_0

    .line 608
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/SyntaxPattern;->disassemble()V

    .line 609
    new-instance v4, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unrecognized pattern opcode @pc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    move/from16 p4, v8

    .line 461
    .end local v8           #pc:I
    .restart local p4
    goto :goto_0

    .line 463
    .end local p4
    .restart local v8       #pc:I
    :pswitch_2
    const/16 v4, 0x8

    move/from16 v0, v16

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 464
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, p1

    move-object v1, v4

    if-ne v0, v1, :cond_2

    const/4 v4, 0x1

    :goto_1
    move/from16 p4, v8

    .line 605
    .end local v8           #pc:I
    .restart local p4
    :goto_2
    return v4

    .line 464
    .end local p4
    .restart local v8       #pc:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 465
    :cond_3
    const/16 v4, 0x10

    move/from16 v0, v16

    move v1, v4

    if-ne v0, v1, :cond_5

    .line 467
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/FVector;

    move v4, v0

    if-nez v4, :cond_4

    .line 468
    const/4 v4, 0x0

    move/from16 p4, v8

    .end local v8           #pc:I
    .restart local p4
    goto :goto_2

    .line 469
    .end local p4
    .restart local v8       #pc:I
    :cond_4
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/FVector;

    move-object/from16 p4, v0

    invoke-static/range {p4 .. p4}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v5

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v4

    move/from16 p4, v8

    .end local v8           #pc:I
    .restart local p4
    goto :goto_2

    .line 472
    .end local p4
    .restart local v8       #pc:I
    :cond_5
    const/16 v4, 0x18

    move/from16 v0, v16

    move v1, v4

    if-ne v0, v1, :cond_6

    .line 473
    const/4 v4, 0x1

    move/from16 p4, v8

    .end local v8           #pc:I
    .restart local p4
    goto :goto_2

    .line 475
    .end local p4
    .restart local v8       #pc:I
    :cond_6
    new-instance v4, Ljava/lang/Error;

    const-string v5, "unknwon pattern opcode"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 477
    :pswitch_3
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, p1

    move-object v1, v4

    if-ne v0, v1, :cond_7

    const/4 v4, 0x1

    :goto_3
    move/from16 p4, v8

    .end local v8           #pc:I
    .restart local p4
    goto :goto_2

    .end local p4
    .restart local v8       #pc:I
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 479
    :pswitch_4
    shr-int/lit8 v25, v37, 0x1

    .line 480
    .local v25, npairs:I
    move-object/from16 v26, p1

    .line 481
    .local v26, o:Ljava/lang/Object;
    const/16 v18, 0x0

    .line 483
    .local v18, i:I
    :goto_4
    move-object/from16 v0, v26

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v4, v0

    if-eqz v4, :cond_8

    .line 484
    check-cast v26, Lkawa/lang/SyntaxForm;

    .end local v26           #o:Ljava/lang/Object;
    invoke-interface/range {v26 .. v26}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v26

    .restart local v26       #o:Ljava/lang/Object;
    goto :goto_4

    .line 485
    :cond_8
    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 487
    and-int/lit8 v4, v37, 0x1

    if-nez v4, :cond_a

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v26

    move-object v1, v4

    if-eq v0, v1, :cond_b

    .line 488
    :cond_9
    const/4 v4, 0x0

    move/from16 p4, v8

    .end local v8           #pc:I
    .restart local p4
    goto :goto_2

    .line 487
    .end local p4
    .restart local v8       #pc:I
    :cond_a
    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/lists/Pair;

    move v4, v0

    if-nez v4, :cond_9

    .line 496
    :cond_b
    const/16 v37, 0x0

    move/from16 p4, v8

    .line 497
    .end local v8           #pc:I
    .restart local p4
    goto/16 :goto_0

    .line 491
    .end local p4
    .restart local v8       #pc:I
    :cond_c
    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/lists/Pair;

    move v4, v0

    if-eqz v4, :cond_d

    .line 492
    check-cast v26, Lgnu/lists/Pair;

    .end local v26           #o:Ljava/lang/Object;
    invoke-virtual/range {v26 .. v26}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v26

    .line 481
    .restart local v26       #o:Ljava/lang/Object;
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 494
    :cond_d
    const/4 v4, 0x0

    move/from16 p4, v8

    .end local v8           #pc:I
    .restart local p4
    goto/16 :goto_2

    .line 499
    .end local v18           #i:I
    .end local v25           #npairs:I
    .end local v26           #o:Ljava/lang/Object;
    .end local p4
    .restart local v8       #pc:I
    :pswitch_5
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move v4, v0

    if-nez v4, :cond_e

    .line 500
    const/4 v4, 0x0

    move/from16 p4, v8

    .end local v8           #pc:I
    .restart local p4
    goto/16 :goto_2

    .line 501
    .end local p4
    .restart local v8       #pc:I
    :cond_e
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v5, v0

    .local v5, p:Lgnu/lists/Pair;
    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p5

    .line 502
    invoke-virtual/range {v4 .. v9}, Lkawa/lang/SyntaxPattern;->match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 503
    const/4 v4, 0x0

    move/from16 p4, v8

    .end local v8           #pc:I
    .restart local p4
    goto/16 :goto_2

    .line 504
    .end local p4
    .restart local v8       #pc:I
    :cond_f
    add-int p4, v8, v37

    .line 505
    .end local v8           #pc:I
    .restart local p4
    const/16 v37, 0x0

    .line 506
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 507
    goto/16 :goto_0

    .line 509
    .end local v5           #p:Lgnu/lists/Pair;
    .end local p4
    .restart local v8       #pc:I
    :pswitch_6
    move v13, v8

    .line 510
    .local v13, repeat_pc:I
    add-int p4, v8, v37

    .line 511
    .end local v8           #pc:I
    .restart local p4
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move-object v4, v0

    add-int/lit8 v8, p4, 0x1

    .end local p4
    .restart local v8       #pc:I
    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    shr-int/lit8 v34, v16, 0x3

    .line 512
    .local v34, subvar0:I
    :goto_5
    and-int/lit8 v4, v16, 0x7

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    .line 513
    shl-int/lit8 v4, v34, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move-object v5, v0

    add-int/lit8 p4, v8, 0x1

    .end local v8           #pc:I
    .restart local p4
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v16

    shr-int/lit8 v5, v16, 0x3

    or-int v34, v4, v5

    move/from16 v8, p4

    .end local p4
    .restart local v8       #pc:I
    goto :goto_5

    .line 514
    :cond_10
    add-int v34, v34, p3

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move-object v4, v0

    add-int/lit8 p4, v8, 0x1

    .end local v8           #pc:I
    .restart local p4
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    shr-int/lit8 v35, v4, 0x3

    .local v35, subvarN:I
    move/from16 v8, p4

    .line 516
    .end local p4
    .restart local v8       #pc:I
    :goto_6
    and-int/lit8 v4, v16, 0x7

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 517
    shl-int/lit8 v4, v35, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move-object v5, v0

    add-int/lit8 p4, v8, 0x1

    .end local v8           #pc:I
    .restart local p4
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v16

    shr-int/lit8 v5, v16, 0x3

    or-int v35, v4, v5

    move/from16 v8, p4

    .end local p4
    .restart local v8       #pc:I
    goto :goto_6

    .line 519
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move-object v4, v0

    add-int/lit8 p4, v8, 0x1

    .end local v8           #pc:I
    .restart local p4
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 520
    const/16 v22, 0x1

    .line 522
    .local v22, listRequired:Z
    const/16 v4, 0x8

    move/from16 v0, v16

    move v1, v4

    if-ne v0, v1, :cond_13

    .line 524
    const/16 v28, 0x0

    .line 535
    .local v28, pairsRequired:I
    :goto_7
    invoke-static/range {p1 .. p1}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v29

    .line 538
    .local v29, pairsValue:I
    if-ltz v29, :cond_16

    .line 539
    const/16 v23, 0x1

    .line 545
    .local v23, listValue:Z
    :goto_8
    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_12

    if-eqz v22, :cond_17

    if-nez v23, :cond_17

    .line 546
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 528
    .end local v23           #listValue:Z
    .end local v28           #pairsRequired:I
    .end local v29           #pairsValue:I
    :cond_13
    shr-int/lit8 v37, v16, 0x3

    move/from16 v8, p4

    .line 529
    .end local p4
    .restart local v8       #pc:I
    :goto_9
    and-int/lit8 v4, v16, 0x7

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 530
    shl-int/lit8 v4, v37, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move-object v5, v0

    add-int/lit8 p4, v8, 0x1

    .end local v8           #pc:I
    .restart local p4
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v16

    shr-int/lit8 v5, v16, 0x3

    or-int v37, v4, v5

    move/from16 v8, p4

    .end local p4
    .restart local v8       #pc:I
    goto :goto_9

    .line 531
    :cond_14
    and-int/lit8 v4, v37, 0x1

    if-eqz v4, :cond_15

    .line 532
    const/16 v22, 0x0

    .line 533
    :cond_15
    shr-int/lit8 v28, v37, 0x1

    .restart local v28       #pairsRequired:I
    move/from16 p4, v8

    .end local v8           #pc:I
    .restart local p4
    goto :goto_7

    .line 542
    .restart local v29       #pairsValue:I
    :cond_16
    const/16 v23, 0x0

    .line 543
    .restart local v23       #listValue:Z
    const/4 v4, -0x1

    sub-int v29, v4, v29

    goto :goto_8

    .line 547
    :cond_17
    sub-int v30, v29, v28

    .line 548
    .local v30, repeat_count:I
    move/from16 v0, v35

    new-array v0, v0, [[Ljava/lang/Object;

    move-object v15, v0

    .line 550
    .local v15, arrays:[[Ljava/lang/Object;
    const/16 v21, 0x0

    .local v21, j:I
    :goto_a
    move/from16 v0, v21

    move/from16 v1, v35

    if-ge v0, v1, :cond_18

    .line 551
    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object v4, v0

    aput-object v4, v15, v21

    .line 550
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 552
    :cond_18
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_b
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_1c

    .line 554
    :goto_c
    move-object/from16 v0, p1

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v4, v0

    if-eqz v4, :cond_19

    .line 556
    move-object/from16 v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 p5, v0

    .line 557
    invoke-interface/range {p5 .. p5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    goto :goto_c

    .line 559
    :cond_19
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v5, v0

    .restart local v5       #p:Lgnu/lists/Pair;
    move-object/from16 v9, p0

    move-object v10, v5

    move-object/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v14, p5

    .line 560
    invoke-virtual/range {v9 .. v14}, Lkawa/lang/SyntaxPattern;->match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 561
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 562
    :cond_1a
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 563
    const/16 v21, 0x0

    .end local v5           #p:Lgnu/lists/Pair;
    :goto_d
    move/from16 v0, v21

    move/from16 v1, v35

    if-ge v0, v1, :cond_1b

    .line 564
    aget-object v4, v15, v21

    add-int v5, v34, v21

    aget-object v5, p2, v5

    aput-object v5, v4, v18

    .line 563
    add-int/lit8 v21, v21, 0x1

    goto :goto_d

    .line 552
    :cond_1b
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 566
    :cond_1c
    const/16 v21, 0x0

    :goto_e
    move/from16 v0, v21

    move/from16 v1, v35

    if-ge v0, v1, :cond_1d

    .line 567
    add-int v4, v34, v21

    aget-object v5, v15, v21

    aput-object v5, p2, v4

    .line 566
    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    .line 568
    :cond_1d
    const/16 v37, 0x0

    .line 569
    if-nez v28, :cond_0

    if-eqz v22, :cond_0

    .line 570
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 573
    .end local v13           #repeat_pc:I
    .end local v15           #arrays:[[Ljava/lang/Object;
    .end local v18           #i:I
    .end local v21           #j:I
    .end local v22           #listRequired:Z
    .end local v23           #listValue:Z
    .end local v28           #pairsRequired:I
    .end local v29           #pairsValue:I
    .end local v30           #repeat_count:I
    .end local v34           #subvar0:I
    .end local v35           #subvarN:I
    .end local p4
    .restart local v8       #pc:I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    move-object v4, v0

    aget-object v24, v4, v37

    .line 576
    .local v24, lit:Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v36

    check-cast v36, Lkawa/lang/Translator;

    .line 577
    .local v36, tr:Lkawa/lang/Translator;
    move-object/from16 v0, v24

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v4, v0

    if-eqz v4, :cond_1e

    .line 579
    move-object/from16 v0, v24

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v33, v0

    .line 580
    .local v33, sf:Lkawa/lang/SyntaxForm;
    invoke-interface/range {v33 .. v33}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v19

    .line 581
    .local v19, id1:Ljava/lang/Object;
    invoke-interface/range {v33 .. v33}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v31

    .line 589
    .end local v33           #sf:Lkawa/lang/SyntaxForm;
    .local v31, sc1:Lgnu/expr/ScopeExp;
    :goto_f
    move-object/from16 v0, p1

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v4, v0

    if-eqz v4, :cond_20

    .line 591
    move-object/from16 v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v33, v0

    .line 592
    .restart local v33       #sf:Lkawa/lang/SyntaxForm;
    invoke-interface/range {v33 .. v33}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v20

    .line 593
    .local v20, id2:Ljava/lang/Object;
    invoke-interface/range {v33 .. v33}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v32

    .line 600
    .end local v33           #sf:Lkawa/lang/SyntaxForm;
    .local v32, sc2:Lgnu/expr/ScopeExp;
    :goto_10
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    move-object/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;->literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z

    move-result v4

    move/from16 p4, v8

    .end local v8           #pc:I
    .restart local p4
    goto/16 :goto_2

    .line 585
    .end local v19           #id1:Ljava/lang/Object;
    .end local v20           #id2:Ljava/lang/Object;
    .end local v31           #sc1:Lgnu/expr/ScopeExp;
    .end local v32           #sc2:Lgnu/expr/ScopeExp;
    .end local p4
    .restart local v8       #pc:I
    :cond_1e
    move-object/from16 v19, v24

    .line 586
    .restart local v19       #id1:Ljava/lang/Object;
    invoke-virtual/range {v36 .. v36}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v17

    .line 587
    .local v17, curSyntax:Lkawa/lang/Syntax;
    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/Macro;

    move v4, v0

    if-eqz v4, :cond_1f

    check-cast v17, Lkawa/lang/Macro;

    .end local v17           #curSyntax:Lkawa/lang/Syntax;
    invoke-virtual/range {v17 .. v17}, Lkawa/lang/Macro;->getCapturedScope()Lgnu/expr/ScopeExp;

    move-result-object v4

    move-object/from16 v31, v4

    .restart local v31       #sc1:Lgnu/expr/ScopeExp;
    :goto_11
    goto :goto_f

    .end local v31           #sc1:Lgnu/expr/ScopeExp;
    .restart local v17       #curSyntax:Lkawa/lang/Syntax;
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v31, v4

    goto :goto_11

    .line 597
    .end local v17           #curSyntax:Lkawa/lang/Syntax;
    .restart local v31       #sc1:Lgnu/expr/ScopeExp;
    :cond_20
    move-object/from16 v20, p1

    .line 598
    .restart local v20       #id2:Ljava/lang/Object;
    if-nez p5, :cond_21

    invoke-virtual/range {v36 .. v36}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v4

    move-object/from16 v32, v4

    .restart local v32       #sc2:Lgnu/expr/ScopeExp;
    :goto_12
    goto :goto_10

    .end local v32           #sc2:Lgnu/expr/ScopeExp;
    :cond_21
    invoke-interface/range {p5 .. p5}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object/from16 v32, v4

    goto :goto_12

    .line 602
    .end local v19           #id1:Ljava/lang/Object;
    .end local v20           #id2:Ljava/lang/Object;
    .end local v24           #lit:Ljava/lang/Object;
    .end local v31           #sc1:Lgnu/expr/ScopeExp;
    .end local v36           #tr:Lkawa/lang/Translator;
    :pswitch_8
    if-eqz p5, :cond_22

    .line 603
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lkawa/lang/SyntaxForms;->fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object p1

    .line 604
    :cond_22
    add-int v4, p3, v37

    aput-object p1, p2, v4

    .line 605
    const/4 v4, 0x1

    move/from16 p4, v8

    .end local v8           #pc:I
    .restart local p4
    goto/16 :goto_2

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z
    .locals 9
    .parameter "p"
    .parameter "vars"
    .parameter "start_vars"
    .parameter "pc"
    .parameter "syntax"

    .prologue
    const/4 v2, 0x1

    .line 428
    move v4, p4

    .line 430
    .local v4, pc_start:I
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v7, p4, 0x1

    .end local p4
    .local v7, pc:I
    invoke-virtual {v0, p4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .local v6, ch:C
    shr-int/lit8 v8, v6, 0x3

    .line 431
    .local v8, value:I
    :goto_0
    and-int/lit8 v0, v6, 0x7

    if-ne v0, v2, :cond_0

    .line 432
    shl-int/lit8 v0, v8, 0xd

    iget-object v1, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 p4, v7, 0x1

    .end local v7           #pc:I
    .restart local p4
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shr-int/lit8 v1, v6, 0x3

    or-int v8, v0, v1

    move v7, p4

    .end local p4
    .restart local v7       #pc:I
    goto :goto_0

    .line 433
    :cond_0
    and-int/lit8 v0, v6, 0x7

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 435
    if-eqz p5, :cond_1

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    if-nez v0, :cond_1

    .line 436
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p5}, Lkawa/lang/SyntaxForms;->fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 437
    :cond_1
    add-int v0, p3, v8

    aput-object p1, p2, v0

    move v0, v2

    .line 440
    :goto_1
    return v0

    :cond_2
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v0

    goto :goto_1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 707
    const-string v0, "#<syntax-pattern>"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 625
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 626
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    .line 627
    return-void
.end method

.method translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V
    .locals 34
    .parameter "pattern"
    .parameter "program"
    .parameter "literal_identifiers"
    .parameter "nesting"
    .parameter "literals"
    .parameter "syntax"
    .parameter "context"
    .parameter "tr"

    .prologue
    .line 250
    move-object/from16 v0, p8

    iget-object v0, v0, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    move-object/from16 v23, v0

    .line 251
    .local v23, patternScope:Lkawa/lang/PatternScope;
    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    move-object/from16 v22, v0

    .line 254
    .end local p1
    .local v22, patternNames:Ljava/util/Vector;
    :goto_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v4, v0

    if-eqz v4, :cond_0

    .line 256
    move-object/from16 v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 p6, v0

    .line 257
    invoke-interface/range {p6 .. p6}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    .restart local p1
    goto :goto_0

    .line 259
    .end local p1
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move v4, v0

    if-eqz v4, :cond_c

    .line 261
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 264
    .local v26, savePos:Ljava/lang/Object;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    .line 265
    .local v29, start_pc:I
    const/4 v4, 0x4

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v21, v0

    .line 267
    .local v21, pair:Lgnu/lists/Pair;
    move-object/from16 v10, p6

    .line 268
    .local v10, car_syntax:Lkawa/lang/SyntaxForm;
    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    .line 269
    .local v20, next:Ljava/lang/Object;
    :goto_1
    move-object/from16 v0, v20

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v4, v0

    if-eqz v4, :cond_1

    .line 271
    move-object/from16 v0, v20

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 p6, v0

    .line 272
    invoke-interface/range {p6 .. p6}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v20

    goto :goto_1

    .line 274
    :cond_1
    const/16 v24, 0x0

    .line 275
    .local v24, repeat:Z
    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/lists/Pair;

    move v4, v0

    if-eqz v4, :cond_2

    move-object/from16 v0, v20

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "..."

    move-object/from16 v0, p8

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 278
    const/16 v24, 0x1

    .line 279
    check-cast v20, Lgnu/lists/Pair;

    .end local v20           #next:Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    .line 280
    .restart local v20       #next:Ljava/lang/Object;
    :goto_2
    move-object/from16 v0, v20

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v4, v0

    if-eqz v4, :cond_2

    .line 282
    move-object/from16 v0, v20

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 p6, v0

    .line 283
    invoke-interface/range {p6 .. p6}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v20

    goto :goto_2

    .line 287
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v30

    .line 288
    .local v30, subvar0:I
    const/16 v4, 0x50

    move/from16 v0, p7

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 289
    const/16 p7, 0x0

    .line 290
    :cond_3
    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    if-eqz v24, :cond_5

    add-int/lit8 v4, p4, 0x1

    move v8, v4

    :goto_3
    const/16 v4, 0x56

    move/from16 v0, p7

    move v1, v4

    if-ne v0, v1, :cond_6

    const/4 v4, 0x0

    move v11, v4

    :goto_4
    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lkawa/lang/SyntaxPattern;->translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V

    .line 294
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int v31, v4, v30

    .line 295
    .local v31, subvarN:I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sub-int v4, v4, v29

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x3

    if-eqz v24, :cond_7

    const/4 v5, 0x5

    :goto_5
    or-int v33, v4, v5

    .line 297
    .local v33, width:I
    const v4, 0xffff

    move/from16 v0, v33

    move v1, v4

    if-le v0, v1, :cond_4

    .line 298
    shr-int/lit8 v4, v33, 0xd

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p2

    move v2, v4

    invoke-static {v0, v1, v2}, Lkawa/lang/SyntaxPattern;->insertInt(ILjava/lang/StringBuffer;I)I

    move-result v4

    add-int v29, v29, v4

    .line 300
    :cond_4
    move/from16 v0, v33

    int-to-char v0, v0

    move v4, v0

    move-object/from16 v0, p2

    move/from16 v1, v29

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 302
    invoke-static/range {v20 .. v20}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v25

    .line 303
    .local v25, restLength:I
    const/high16 v4, -0x8000

    move/from16 v0, v25

    move v1, v4

    if-ne v0, v1, :cond_8

    .line 305
    const-string v4, "cyclic pattern list"

    move-object/from16 v0, p8

    move-object v1, v4

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    move-object/from16 v0, p8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 401
    .end local v10           #car_syntax:Lkawa/lang/SyntaxForm;
    .end local v20           #next:Ljava/lang/Object;
    .end local v21           #pair:Lgnu/lists/Pair;
    .end local v24           #repeat:Z
    .end local v25           #restLength:I
    .end local v26           #savePos:Ljava/lang/Object;
    .end local v29           #start_pc:I
    .end local v30           #subvar0:I
    .end local v31           #subvarN:I
    .end local v33           #width:I
    :goto_6
    return-void

    .restart local v10       #car_syntax:Lkawa/lang/SyntaxForm;
    .restart local v20       #next:Ljava/lang/Object;
    .restart local v21       #pair:Lgnu/lists/Pair;
    .restart local v24       #repeat:Z
    .restart local v26       #savePos:Ljava/lang/Object;
    .restart local v29       #start_pc:I
    .restart local v30       #subvar0:I
    :cond_5
    move/from16 v8, p4

    .line 290
    goto :goto_3

    :cond_6
    const/16 v4, 0x50

    move v11, v4

    goto :goto_4

    .line 295
    .restart local v31       #subvarN:I
    :cond_7
    const/4 v5, 0x4

    goto :goto_5

    .line 309
    .restart local v25       #restLength:I
    .restart local v33       #width:I
    :cond_8
    if-eqz v24, :cond_a

    .line 311
    shl-int/lit8 v4, v30, 0x3

    :try_start_1
    move-object/from16 v0, p2

    move v1, v4

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 312
    shl-int/lit8 v4, v31, 0x3

    move-object/from16 v0, p2

    move v1, v4

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 313
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v20

    move-object v1, v4

    if-ne v0, v1, :cond_9

    .line 315
    const/16 v4, 0x8

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    move-object/from16 v0, p8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_6

    .line 321
    :cond_9
    if-ltz v25, :cond_b

    shl-int/lit8 v4, v25, 0x1

    move/from16 v25, v4

    .line 323
    :goto_7
    shl-int/lit8 v4, v25, 0x3

    or-int/lit8 v4, v4, 0x6

    :try_start_2
    move-object/from16 v0, p2

    move v1, v4

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 327
    :cond_a
    move-object/from16 p1, v20

    .line 332
    .restart local p1
    move-object/from16 v0, p8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 321
    .end local p1
    :cond_b
    move/from16 v0, v25

    neg-int v0, v0

    move v4, v0

    shl-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move/from16 v25, v4

    goto :goto_7

    .line 332
    .end local v10           #car_syntax:Lkawa/lang/SyntaxForm;
    .end local v20           #next:Ljava/lang/Object;
    .end local v21           #pair:Lgnu/lists/Pair;
    .end local v24           #repeat:Z
    .end local v25           #restLength:I
    .end local v29           #start_pc:I
    .end local v30           #subvar0:I
    .end local v31           #subvarN:I
    .end local v33           #width:I
    :catchall_0
    move-exception v4

    move-object/from16 v0, p8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v4

    .line 335
    .end local v26           #savePos:Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move v4, v0

    if-eqz v4, :cond_17

    .line 337
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    .local v16, j:I
    :cond_d
    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_12

    .line 339
    invoke-virtual/range {p8 .. p8}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v13

    .line 340
    .local v13, current:Lgnu/expr/ScopeExp;
    if-nez p6, :cond_f

    move-object/from16 v27, v13

    .line 342
    .local v27, scope1:Lgnu/expr/ScopeExp;
    :goto_8
    aget-object v17, p3, v16

    .line 343
    .local v17, literal:Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v4, v0

    if-eqz v4, :cond_10

    .line 345
    move-object/from16 v0, v17

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v32, v0

    .line 347
    .local v32, syntax2:Lkawa/lang/SyntaxForm;
    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    .line 348
    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v28

    .line 354
    .end local v32           #syntax2:Lkawa/lang/SyntaxForm;
    .local v28, scope2:Lgnu/expr/ScopeExp;
    :goto_9
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;->literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 357
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v15

    .line 358
    .local v15, i:I
    if-gez v15, :cond_e

    .line 360
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v15

    .line 361
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 363
    :cond_e
    shl-int/lit8 v4, v15, 0x3

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p2

    move v1, v4

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_6

    .line 340
    .end local v15           #i:I
    .end local v17           #literal:Ljava/lang/Object;
    .end local v27           #scope1:Lgnu/expr/ScopeExp;
    .end local v28           #scope2:Lgnu/expr/ScopeExp;
    :cond_f
    invoke-interface/range {p6 .. p6}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object/from16 v27, v4

    goto :goto_8

    .line 350
    .restart local v17       #literal:Ljava/lang/Object;
    .restart local v27       #scope1:Lgnu/expr/ScopeExp;
    :cond_10
    move-object/from16 v0, p8

    iget-object v0, v0, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    move-object v4, v0

    if-eqz v4, :cond_11

    .line 351
    move-object/from16 v0, p8

    iget-object v0, v0, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    move-object v4, v0

    invoke-virtual {v4}, Lkawa/lang/Macro;->getCapturedScope()Lgnu/expr/ScopeExp;

    move-result-object v28

    .restart local v28       #scope2:Lgnu/expr/ScopeExp;
    goto :goto_9

    .line 353
    .end local v28           #scope2:Lgnu/expr/ScopeExp;
    :cond_11
    move-object/from16 v28, v13

    .restart local v28       #scope2:Lgnu/expr/ScopeExp;
    goto :goto_9

    .line 367
    .end local v13           #current:Lgnu/expr/ScopeExp;
    .end local v17           #literal:Ljava/lang/Object;
    .end local v27           #scope1:Lgnu/expr/ScopeExp;
    .end local v28           #scope2:Lgnu/expr/ScopeExp;
    :cond_12
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicated pattern variable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p8

    move-object v1, v4

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 369
    :cond_13
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v15

    .line 370
    .restart local v15       #i:I
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 371
    const/16 v4, 0x50

    move/from16 v0, p7

    move v1, v4

    if-ne v0, v1, :cond_14

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 372
    .local v18, matchCar:Z
    :goto_a
    shl-int/lit8 v4, p4, 0x1

    if-eqz v18, :cond_15

    const/4 v5, 0x1

    :goto_b
    add-int v19, v4, v5

    .line 373
    .local v19, n:I
    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    move-object v4, v0

    move/from16 v0, v19

    int-to-char v0, v0

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 374
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/PatternScope;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v14

    .line 375
    .local v14, decl:Lgnu/expr/Declaration;
    move-object v0, v14

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 376
    move-object/from16 v0, p8

    move-object v1, v14

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 377
    shl-int/lit8 v4, v15, 0x3

    if-eqz v18, :cond_16

    const/4 v5, 0x7

    :goto_c
    or-int/2addr v4, v5

    move-object/from16 v0, p2

    move v1, v4

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_6

    .line 371
    .end local v14           #decl:Lgnu/expr/Declaration;
    .end local v18           #matchCar:Z
    .end local v19           #n:I
    :cond_14
    const/4 v4, 0x0

    move/from16 v18, v4

    goto :goto_a

    .line 372
    .restart local v18       #matchCar:Z
    :cond_15
    const/4 v5, 0x0

    goto :goto_b

    .line 377
    .restart local v14       #decl:Lgnu/expr/Declaration;
    .restart local v19       #n:I
    :cond_16
    const/4 v5, 0x3

    goto :goto_c

    .line 380
    .end local v14           #decl:Lgnu/expr/Declaration;
    .end local v15           #i:I
    .end local v16           #j:I
    .end local v18           #matchCar:Z
    .end local v19           #n:I
    :cond_17
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, p1

    move-object v1, v4

    if-ne v0, v1, :cond_18

    .line 382
    const/16 v4, 0x8

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 385
    :cond_18
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/FVector;

    move v4, v0

    if-eqz v4, :cond_19

    .line 387
    const/16 v4, 0x10

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    check-cast p1, Lgnu/lists/FVector;

    invoke-static/range {p1 .. p1}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object p1

    .line 389
    .local p1, pattern:Lgnu/lists/LList;
    const/16 p7, 0x56

    .line 390
    goto/16 :goto_0

    .line 394
    .end local p1           #pattern:Lgnu/lists/LList;
    :cond_19
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v15

    .line 395
    .restart local v15       #i:I
    if-gez v15, :cond_1a

    .line 397
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v15

    .line 398
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 400
    :cond_1a
    shl-int/lit8 v4, v15, 0x3

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p2

    move v1, v4

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_6
.end method

.method public varCount()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 617
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 618
    iget v0, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 619
    return-void
.end method
