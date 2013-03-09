.class public Lgnu/kawa/lispexpr/ReaderParens;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderParens.java"


# static fields
.field private static instance:Lgnu/kawa/lispexpr/ReaderParens;


# instance fields
.field close:C

.field command:Ljava/lang/Object;

.field kind:I

.field open:C


# direct methods
.method public constructor <init>(CCILjava/lang/Object;)V
    .locals 0
    .parameter "open"
    .parameter "close"
    .parameter "kind"
    .parameter "command"

    .prologue
    .line 50
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 51
    iput-char p1, p0, Lgnu/kawa/lispexpr/ReaderParens;->open:C

    .line 52
    iput-char p2, p0, Lgnu/kawa/lispexpr/ReaderParens;->close:C

    .line 53
    iput p3, p0, Lgnu/kawa/lispexpr/ReaderParens;->kind:I

    .line 54
    iput-object p4, p0, Lgnu/kawa/lispexpr/ReaderParens;->command:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public static getInstance(CC)Lgnu/kawa/lispexpr/ReaderParens;
    .locals 1
    .parameter "open"
    .parameter "close"

    .prologue
    .line 24
    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lgnu/kawa/lispexpr/ReaderParens;->getInstance(CCI)Lgnu/kawa/lispexpr/ReaderParens;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(CCI)Lgnu/kawa/lispexpr/ReaderParens;
    .locals 2
    .parameter "open"
    .parameter "close"
    .parameter "kind"

    .prologue
    const/4 v1, 0x0

    .line 29
    const/16 v0, 0x28

    if-ne p0, v0, :cond_1

    const/16 v0, 0x29

    if-ne p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 31
    sget-object v0, Lgnu/kawa/lispexpr/ReaderParens;->instance:Lgnu/kawa/lispexpr/ReaderParens;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lgnu/kawa/lispexpr/ReaderParens;

    invoke-direct {v0, p0, p1, p2, v1}, Lgnu/kawa/lispexpr/ReaderParens;-><init>(CCILjava/lang/Object;)V

    sput-object v0, Lgnu/kawa/lispexpr/ReaderParens;->instance:Lgnu/kawa/lispexpr/ReaderParens;

    .line 33
    :cond_0
    sget-object v0, Lgnu/kawa/lispexpr/ReaderParens;->instance:Lgnu/kawa/lispexpr/ReaderParens;

    .line 37
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lgnu/kawa/lispexpr/ReaderParens;

    invoke-direct {v0, p0, p1, p2, v1}, Lgnu/kawa/lispexpr/ReaderParens;-><init>(CCILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static getInstance(CCILjava/lang/Object;)Lgnu/kawa/lispexpr/ReaderParens;
    .locals 1
    .parameter "open"
    .parameter "close"
    .parameter "kind"
    .parameter "command"

    .prologue
    .line 43
    if-nez p3, :cond_0

    .line 44
    invoke-static {p0, p1, p2}, Lgnu/kawa/lispexpr/ReaderParens;->getInstance(CCI)Lgnu/kawa/lispexpr/ReaderParens;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lgnu/kawa/lispexpr/ReaderParens;

    invoke-direct {v0, p0, p1, p2, p3}, Lgnu/kawa/lispexpr/ReaderParens;-><init>(CCILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;
    .locals 19
    .parameter "lexer"
    .parameter "ch"
    .parameter "count"
    .parameter "close"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v9

    .line 81
    .local v9, port:Lgnu/text/LineBufferedReader;
    const/16 p2, 0x5d

    move/from16 v0, p3

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .end local p2
    const/16 p2, 0x5b

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->pushNesting(C)C

    move-result v11

    .line 82
    .local v11, saveReadState:C
    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v15

    .line 83
    .local v15, startLine:I
    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v14

    .line 86
    .local v14, startColumn:I
    const/16 p2, 0x0

    .line 87
    .local p2, last:Ljava/lang/Object;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v5

    .line 88
    .local v5, list:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 89
    .local v6, sawDot:Z
    const/4 v7, 0x0

    .line 90
    .local v7, sawDotCdr:Z
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v10

    .local v10, readTable:Lgnu/kawa/lispexpr/ReadTable;
    move v13, v7

    .end local v7           #sawDotCdr:Z
    .local v13, sawDotCdr:Z
    move v12, v6

    .end local v6           #sawDot:Z
    .local v12, sawDot:Z
    move-object v8, v5

    .end local v5           #list:Ljava/lang/Object;
    .local v8, list:Ljava/lang/Object;
    move-object/from16 v16, p2

    .line 93
    .end local p2           #last:Ljava/lang/Object;
    :goto_1
    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v7

    .line 94
    .local v7, line:I
    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result p2

    .line 95
    .local p2, column:I
    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p1

    .line 96
    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_1

    .line 181
    .end local p3
    :goto_2
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    return-object v8

    .line 81
    .end local v7           #line:I
    .end local v8           #list:Ljava/lang/Object;
    .end local v10           #readTable:Lgnu/kawa/lispexpr/ReadTable;
    .end local v11           #saveReadState:C
    .end local v12           #sawDot:Z
    .end local v13           #sawDotCdr:Z
    .end local v14           #startColumn:I
    .end local v15           #startLine:I
    .end local p2           #column:I
    .restart local p3
    :cond_0
    const/16 p2, 0x28

    goto :goto_0

    .line 98
    .restart local v7       #line:I
    .restart local v8       #list:Ljava/lang/Object;
    .restart local v10       #readTable:Lgnu/kawa/lispexpr/ReadTable;
    .restart local v11       #saveReadState:C
    .restart local v12       #sawDot:Z
    .restart local v13       #sawDotCdr:Z
    .restart local v14       #startColumn:I
    .restart local v15       #startLine:I
    .restart local p2       #column:I
    :cond_1
    if-gez p1, :cond_2

    .line 99
    :try_start_1
    const-string v5, "unexpected EOF in list starting here"

    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    .line 102
    :cond_2
    const/16 v5, 0x2e

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_7

    .line 104
    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->peek()I

    move-result p1

    .line 105
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v5

    .line 106
    .local v5, entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    invoke-virtual {v5}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v6

    .line 107
    .local v6, kind:I
    const/16 v17, 0x1

    move v0, v6

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    const/16 v17, 0x5

    move v0, v6

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    if-nez v6, :cond_6

    .line 111
    :cond_3
    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->skip()V

    .line 112
    add-int/lit8 p2, p2, 0x1

    .line 113
    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected \'"

    .end local v6           #kind:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    int-to-char v0, v0

    move/from16 p3, v0

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p3
    move-result-object p3

    const-string v5, "\' after \'.\'"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 181
    .end local v7           #line:I
    .end local v8           #list:Ljava/lang/Object;
    .end local v10           #readTable:Lgnu/kawa/lispexpr/ReadTable;
    .end local v12           #sawDot:Z
    .end local v13           #sawDotCdr:Z
    .end local p2           #column:I
    :catchall_0
    move-exception p2

    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    throw p2

    .line 119
    .restart local v5       #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    .restart local v6       #kind:I
    .restart local v7       #line:I
    .restart local v8       #list:Ljava/lang/Object;
    .restart local v10       #readTable:Lgnu/kawa/lispexpr/ReadTable;
    .restart local v12       #sawDot:Z
    .restart local v13       #sawDotCdr:Z
    .restart local p2       #column:I
    .restart local p3
    :cond_4
    if-gez p1, :cond_5

    .line 120
    :try_start_2
    const-string v6, "unexpected EOF in list starting here"

    .end local v6           #kind:I
    add-int/lit8 v17, v15, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v17

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    .line 122
    :cond_5
    if-eqz v12, :cond_d

    .line 124
    const-string v6, "multiple \'.\' in list"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 125
    const/4 v12, 0x0

    .line 126
    .end local v13           #sawDotCdr:Z
    .local v12, sawDotCdr:Z
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v8

    .line 127
    const/4 v6, 0x0

    .local v6, last:Ljava/lang/Object;
    move-object v13, v6

    move-object v6, v8

    .line 129
    .end local v8           #list:Ljava/lang/Object;
    .local v6, list:Ljava/lang/Object;
    :goto_3
    const/4 v8, 0x1

    .local v8, sawDot:Z
    :goto_4
    move-object/from16 v16, v13

    move/from16 v18, v8

    .end local v8           #sawDot:Z
    .local v18, sawDot:Z
    move-object v8, v6

    .end local v6           #list:Ljava/lang/Object;
    .local v8, list:Ljava/lang/Object;
    move v6, v12

    .end local v12           #sawDotCdr:Z
    .local v6, sawDotCdr:Z
    move/from16 v12, v18

    .line 140
    .end local v18           #sawDot:Z
    .local v12, sawDot:Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v5

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v5

    .line 141
    .local v5, value:Ljava/lang/Object;
    sget-object v13, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v5, v13, :cond_8

    move v13, v6

    .line 142
    .end local v6           #sawDotCdr:Z
    .restart local v13       #sawDotCdr:Z
    goto/16 :goto_1

    .line 134
    .local v5, entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    .local v6, kind:I
    :cond_6
    const/16 p1, 0x2e

    .line 135
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v5

    move-object v6, v8

    .end local v8           #list:Ljava/lang/Object;
    .local v6, list:Ljava/lang/Object;
    move v8, v12

    .end local v12           #sawDot:Z
    .local v8, sawDot:Z
    move v12, v13

    .end local v13           #sawDotCdr:Z
    .local v12, sawDotCdr:Z
    move-object/from16 v13, v16

    goto :goto_4

    .line 139
    .end local v5           #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    .end local v6           #list:Ljava/lang/Object;
    .local v8, list:Ljava/lang/Object;
    .local v12, sawDot:Z
    .restart local v13       #sawDotCdr:Z
    :cond_7
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v5

    .restart local v5       #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    move v6, v13

    .end local v13           #sawDotCdr:Z
    .local v6, sawDotCdr:Z
    goto :goto_5

    .line 143
    .local v5, value:Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v10

    move v3, v7

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/kawa/lispexpr/LispReader;->handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;

    move-result-object v13

    .line 150
    .end local v5           #value:Ljava/lang/Object;
    .local v13, value:Ljava/lang/Object;
    if-eqz v6, :cond_9

    .line 152
    const-string p2, "multiple values after \'.\'"

    .end local p2           #column:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 153
    const/16 p2, 0x0

    .line 154
    .local p2, last:Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v5

    .line 155
    .end local v8           #list:Ljava/lang/Object;
    .local v5, list:Ljava/lang/Object;
    const/4 v6, 0x0

    move v13, v6

    .end local v6           #sawDotCdr:Z
    .local v13, sawDotCdr:Z
    move-object v8, v5

    .end local v5           #list:Ljava/lang/Object;
    .restart local v8       #list:Ljava/lang/Object;
    move-object/from16 v16, p2

    .line 156
    goto/16 :goto_1

    .line 158
    .restart local v6       #sawDotCdr:Z
    .local v13, value:Ljava/lang/Object;
    .local p2, column:I
    :cond_9
    if-eqz v12, :cond_a

    .line 160
    const/4 v5, 0x1

    .end local v6           #sawDotCdr:Z
    .local v5, sawDotCdr:Z
    move-object v6, v13

    .end local v13           #value:Ljava/lang/Object;
    .local v6, value:Ljava/lang/Object;
    move/from16 v18, v7

    .end local v7           #line:I
    .local v18, line:I
    move v7, v5

    .end local v5           #sawDotCdr:Z
    .local v7, sawDotCdr:Z
    move/from16 v5, v18

    .line 171
    .end local v18           #line:I
    .local v5, line:I
    :goto_6
    if-nez v16, :cond_b

    .end local v8           #list:Ljava/lang/Object;
    .local v6, list:Ljava/lang/Object;
    move-object v5, v6

    .line 175
    .end local v6           #list:Ljava/lang/Object;
    .local v5, list:Ljava/lang/Object;
    :goto_7
    move-object/from16 p2, v6

    .local p2, last:Ljava/lang/Object;
    move v13, v7

    .end local v7           #sawDotCdr:Z
    .local v13, sawDotCdr:Z
    move-object v8, v5

    .end local v5           #list:Ljava/lang/Object;
    .restart local v8       #list:Ljava/lang/Object;
    move-object/from16 v16, p2

    .line 176
    goto/16 :goto_1

    .line 164
    .local v6, sawDotCdr:Z
    .local v7, line:I
    .local v13, value:Ljava/lang/Object;
    .local p2, column:I
    :cond_a
    if-nez v16, :cond_c

    .line 166
    move v5, v15

    .line 167
    .end local v7           #line:I
    .local v5, line:I
    const/16 p2, 0x1

    sub-int p2, v14, p2

    .line 169
    :goto_8
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v5

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v7

    .local v7, value:Lgnu/lists/Pair;
    move-object/from16 v18, v7

    .end local v13           #value:Ljava/lang/Object;
    .local v18, value:Ljava/lang/Object;
    move v7, v6

    .end local v6           #sawDotCdr:Z
    .local v7, sawDotCdr:Z
    move-object/from16 v6, v18

    .end local v18           #value:Ljava/lang/Object;
    .local v6, value:Ljava/lang/Object;
    goto :goto_6

    .line 174
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v8

    .end local v8           #list:Ljava/lang/Object;
    .local v5, list:Ljava/lang/Object;
    goto :goto_7

    .end local v5           #list:Ljava/lang/Object;
    .local v6, sawDotCdr:Z
    .local v7, line:I
    .restart local v8       #list:Ljava/lang/Object;
    .restart local v13       #value:Ljava/lang/Object;
    :cond_c
    move v5, v7

    .end local v7           #line:I
    .local v5, line:I
    goto :goto_8

    .end local v6           #sawDotCdr:Z
    .local v5, entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    .restart local v7       #line:I
    .local v13, sawDotCdr:Z
    :cond_d
    move v12, v13

    .end local v13           #sawDotCdr:Z
    .local v12, sawDotCdr:Z
    move-object v6, v8

    .end local v8           #list:Ljava/lang/Object;
    .local v6, list:Ljava/lang/Object;
    move-object/from16 v13, v16

    goto/16 :goto_3
.end method


# virtual methods
.method public getKind()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lgnu/kawa/lispexpr/ReaderParens;->kind:I

    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 8
    .parameter "in"
    .parameter "ch"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v6, v0

    iget-char v7, p0, Lgnu/kawa/lispexpr/ReaderParens;->close:C

    invoke-static {v6, p2, p3, v7}, Lgnu/kawa/lispexpr/ReaderParens;->readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, r:Ljava/lang/Object;
    iget-object v6, p0, Lgnu/kawa/lispexpr/ReaderParens;->command:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 66
    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v2

    .line 67
    .local v2, port:Lgnu/text/LineBufferedReader;
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v5

    .line 68
    .local v5, startLine:I
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v4

    .line 69
    .local v4, startColumn:I
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v6, v0

    iget-object v7, p0, Lgnu/kawa/lispexpr/ReaderParens;->command:Ljava/lang/Object;

    invoke-virtual {v6, v7, v5, v4}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v1

    .line 70
    .local v1, p:Lgnu/lists/Pair;
    check-cast p1, Lgnu/kawa/lispexpr/LispReader;

    .end local p1
    invoke-virtual {p1, v1, v3}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    move-object v3, v1

    .line 73
    .end local v1           #p:Lgnu/lists/Pair;
    .end local v2           #port:Lgnu/text/LineBufferedReader;
    .end local v3           #r:Ljava/lang/Object;
    .end local v4           #startColumn:I
    .end local v5           #startLine:I
    :cond_0
    return-object v3
.end method
