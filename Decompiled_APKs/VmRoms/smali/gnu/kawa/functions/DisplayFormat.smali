.class public Lgnu/kawa/functions/DisplayFormat;
.super Lgnu/lists/AbstractFormat;
.source "DisplayFormat.java"


# static fields
.field public static final outBase:Lgnu/mapping/ThreadLocation;

.field public static final outRadix:Lgnu/mapping/ThreadLocation;

.field static r5rsIdentifierMinusInteriorColons:Ljava/util/regex/Pattern;


# instance fields
.field language:C

.field readable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "out-base"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/DisplayFormat;->outBase:Lgnu/mapping/ThreadLocation;

    .line 29
    sget-object v0, Lgnu/kawa/functions/DisplayFormat;->outBase:Lgnu/mapping/ThreadLocation;

    invoke-static {}, Lgnu/math/IntNum;->ten()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    .line 32
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "out-radix"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/DisplayFormat;->outRadix:Lgnu/mapping/ThreadLocation;

    .line 378
    const-string v0, "(([a-zA-Z]|[!$%&*/:<=>?^_~])([a-zA-Z]|[!$%&*/<=>?^_~]|[0-9]|([-+.@]))*[:]?)|([-+]|[.][.][.])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/DisplayFormat;->r5rsIdentifierMinusInteriorColons:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ZC)V
    .locals 0
    .parameter "readable"
    .parameter "language"

    .prologue
    .line 42
    invoke-direct {p0}, Lgnu/lists/AbstractFormat;-><init>()V

    .line 43
    iput-boolean p1, p0, Lgnu/kawa/functions/DisplayFormat;->readable:Z

    .line 44
    iput-char p2, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    .line 45
    return-void
.end method

.method public static getCommonLispFormat(Z)Lgnu/kawa/functions/DisplayFormat;
    .locals 2
    .parameter "readable"

    .prologue
    .line 54
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    const/16 v1, 0x43

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    return-object v0
.end method

.method public static getEmacsLispFormat(Z)Lgnu/kawa/functions/DisplayFormat;
    .locals 2
    .parameter "readable"

    .prologue
    .line 49
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    const/16 v1, 0x45

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    return-object v0
.end method

.method public static getSchemeFormat(Z)Lgnu/kawa/functions/DisplayFormat;
    .locals 2
    .parameter "readable"

    .prologue
    .line 59
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    const/16 v1, 0x53

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    return-object v0
.end method


# virtual methods
.method public getReadableOutput()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lgnu/kawa/functions/DisplayFormat;->readable:Z

    return v0
.end method

.method write(Lgnu/lists/Array;IILgnu/lists/Consumer;)I
    .locals 10
    .parameter "array"
    .parameter "index"
    .parameter "level"
    .parameter "out"

    .prologue
    .line 337
    invoke-interface {p1}, Lgnu/lists/Array;->rank()I

    move-result v3

    .line 338
    .local v3, rank:I
    const/4 v1, 0x0

    .line 339
    .local v1, count:I
    if-lez p3, :cond_1

    const-string v7, "("

    move-object v5, v7

    .line 342
    .local v5, start:Ljava/lang/String;
    :goto_0
    instance-of v7, p4, Lgnu/mapping/OutPort;

    if-eqz v7, :cond_3

    .line 343
    move-object v0, p4

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v7, v0

    const/4 v8, 0x0

    const-string v9, ")"

    invoke-virtual {v7, v5, v8, v9}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 346
    :goto_1
    if-lez v3, :cond_5

    .line 348
    invoke-interface {p1, p3}, Lgnu/lists/Array;->getSize(I)I

    move-result v4

    .line 349
    .local v4, size:I
    add-int/lit8 p3, p3, 0x1

    .line 350
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_5

    .line 352
    if-lez v2, :cond_0

    .line 354
    const-string v7, " "

    invoke-virtual {p0, v7, p4}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 355
    instance-of v7, p4, Lgnu/mapping/OutPort;

    if-eqz v7, :cond_0

    .line 356
    move-object v0, p4

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/mapping/OutPort;->writeBreakFill()V

    .line 359
    :cond_0
    if-ne p3, v3, :cond_4

    .line 361
    invoke-interface {p1, p2}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7, p4}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 362
    const/4 v6, 0x1

    .line 366
    .local v6, step:I
    :goto_3
    add-int/2addr p2, v6

    .line 367
    add-int/2addr v1, v6

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 339
    .end local v2           #i:I
    .end local v4           #size:I
    .end local v5           #start:Ljava/lang/String;
    .end local v6           #step:I
    :cond_1
    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    const-string v7, "#("

    move-object v5, v7

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "a("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_0

    .line 345
    .restart local v5       #start:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v5, p4}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 365
    .restart local v2       #i:I
    .restart local v4       #size:I
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/kawa/functions/DisplayFormat;->write(Lgnu/lists/Array;IILgnu/lists/Consumer;)I

    move-result v6

    .restart local v6       #step:I
    goto :goto_3

    .line 370
    .end local v2           #i:I
    .end local v4           #size:I
    .end local v6           #step:I
    :cond_5
    instance-of v7, p4, Lgnu/mapping/OutPort;

    if-eqz v7, :cond_6

    .line 371
    check-cast p4, Lgnu/mapping/OutPort;

    .end local p4
    const-string v7, ")"

    invoke-virtual {p4, v7}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 374
    :goto_4
    return v1

    .line 373
    .restart local p4
    :cond_6
    const-string v7, ")"

    invoke-virtual {p0, v7, p4}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_4
.end method

.method public write(ILgnu/lists/Consumer;)V
    .locals 2
    .parameter "v"
    .parameter "out"

    .prologue
    .line 77
    invoke-virtual {p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-static {p1, p2}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    .line 91
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-char v0, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v1, 0x45

    if-ne v0, v1, :cond_1

    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    .line 84
    const/16 v0, 0x3f

    invoke-interface {p2, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 85
    invoke-static {p1, p2}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {p1}, Lgnu/text/Char;->toScmReadableString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_0
.end method

.method public writeBoolean(ZLgnu/lists/Consumer;)V
    .locals 2
    .parameter "v"
    .parameter "out"

    .prologue
    .line 72
    iget-char v0, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v1, 0x53

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "#t"

    :goto_0
    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 73
    return-void

    .line 72
    :cond_0
    const-string v0, "#f"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "t"

    goto :goto_0

    :cond_2
    const-string v0, "nil"

    goto :goto_0
.end method

.method public writeList(Lgnu/lists/LList;Lgnu/mapping/OutPort;)V
    .locals 6
    .parameter "value"
    .parameter "out"

    .prologue
    .line 95
    move-object v1, p1

    .line 96
    .local v1, list:Lgnu/lists/LList;
    const-string v3, "("

    const/4 v4, 0x0

    const-string v5, ")"

    invoke-virtual {p2, v3, v4, v5}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 97
    .end local v1           #list:Lgnu/lists/LList;
    :goto_0
    instance-of v3, v1, Lgnu/lists/Pair;

    if-eqz v3, :cond_1

    .line 99
    if-eq v1, p1, :cond_0

    .line 100
    invoke-virtual {p2}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 101
    :cond_0
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0

    .line 102
    .local v2, pair:Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 103
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, list:Ljava/lang/Object;
    goto :goto_0

    .line 105
    .end local v1           #list:Ljava/lang/Object;
    .end local v2           #pair:Lgnu/lists/Pair;
    :cond_1
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v3, :cond_2

    .line 107
    invoke-virtual {p2}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 108
    const-string v3, ". "

    invoke-virtual {p2, v3}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    .line 109
    invoke-static {v1}, Lgnu/lists/LList;->checkNonList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 111
    :cond_2
    const-string v3, ")"

    invoke-virtual {p2, v3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 3
    .parameter "obj"
    .parameter "out"

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, space:Z
    instance-of v2, p2, Lgnu/mapping/OutPort;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v2, :cond_1

    instance-of v2, p1, Lgnu/mapping/Values;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, p1, Lgnu/text/Char;

    if-nez v2, :cond_1

    instance-of v2, p1, Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    instance-of v2, p1, Ljava/lang/Character;

    if-nez v2, :cond_1

    .line 129
    :cond_0
    move-object v0, p2

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->writeWordStart()V

    .line 130
    const/4 v1, 0x1

    .line 132
    :cond_1
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/DisplayFormat;->writeObjectRaw(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 133
    if-eqz v1, :cond_2

    .line 134
    check-cast p2, Lgnu/mapping/OutPort;

    .end local p2
    invoke-virtual {p2}, Lgnu/mapping/OutPort;->writeWordEnd()V

    .line 135
    :cond_2
    return-void
.end method

.method public writeObjectRaw(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 27
    .parameter "obj"
    .parameter "out"

    .prologue
    .line 139
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 140
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->writeBoolean(ZLgnu/lists/Consumer;)V

    .line 327
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 141
    .restart local p1
    .restart local p2
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/text/Char;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 142
    check-cast p1, Lgnu/text/Char;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lgnu/text/Char;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 143
    .restart local p1
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Character;

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 144
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Character;->charValue()C

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 145
    .restart local p1
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 147
    move-object/from16 v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object/from16 v19, v0

    .line 148
    .local v19, sym:Lgnu/mapping/Symbol;
    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v24

    sget-object v25, Lgnu/kawa/xml/XmlNamespace;->HTML:Lgnu/kawa/xml/XmlNamespace;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 150
    const-string v24, "html:"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 151
    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 154
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/functions/DisplayFormat;->readable:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/functions/DisplayFormat;->writeSymbol(Lgnu/mapping/Symbol;Lgnu/lists/Consumer;Z)V

    goto :goto_0

    .line 158
    .end local v19           #sym:Lgnu/mapping/Symbol;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/net/URI;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/io/PrintWriter;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 161
    const-string v24, "#,(URI "

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    check-cast v0, Ljava/io/PrintWriter;

    move-object v5, v0

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object v1, v5

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lgnu/lists/Strings;->printQuoted(Ljava/lang/CharSequence;Ljava/io/PrintWriter;I)V

    .line 163
    const/16 v24, 0x29

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->write(I)V

    goto/16 :goto_0

    .line 167
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/CharSequence;

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 175
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    .line 179
    .local v18, str:Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v24

    if-eqz v24, :cond_7

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/io/PrintWriter;

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 180
    check-cast p2, Ljava/io/PrintWriter;

    .end local p2
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lgnu/lists/Strings;->printQuoted(Ljava/lang/CharSequence;Ljava/io/PrintWriter;I)V

    goto/16 :goto_0

    .line 181
    .restart local p2
    :cond_7
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 183
    check-cast p1, Ljava/lang/String;

    .end local p1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .restart local p1
    :cond_8
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/CharSeq;

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 187
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/CharSeq;

    move-object v15, v0

    .line 188
    .local v15, seq:Lgnu/lists/CharSeq;
    const/16 v24, 0x0

    invoke-interface {v15}, Lgnu/lists/CharSeq;->size()I

    move-result v25

    move-object v0, v15

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lgnu/lists/CharSeq;->consume(IILgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 192
    .end local v15           #seq:Lgnu/lists/CharSeq;
    :cond_9
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v13

    .line 193
    .local v13, len:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v13, :cond_0

    .line 194
    move-object/from16 v0, v18

    move v1, v11

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->write(I)V

    .line 193
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 197
    .end local v11           #i:I
    .end local v13           #len:I
    .end local v18           #str:Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/LList;

    move/from16 v24, v0

    if-eqz v24, :cond_b

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/OutPort;

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 198
    check-cast p1, Lgnu/lists/LList;

    .end local p1
    check-cast p2, Lgnu/mapping/OutPort;

    .end local p2
    invoke-virtual/range {p0 .. p2}, Lgnu/kawa/functions/DisplayFormat;->writeList(Lgnu/lists/LList;Lgnu/mapping/OutPort;)V

    goto/16 :goto_0

    .line 199
    .restart local p1
    .restart local p2
    :cond_b
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/SimpleVector;

    move/from16 v24, v0

    if-eqz v24, :cond_13

    .line 201
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/SimpleVector;

    move-object/from16 v21, v0

    .line 202
    .local v21, vec:Lgnu/lists/SimpleVector;
    invoke-virtual/range {v21 .. v21}, Lgnu/lists/SimpleVector;->getTag()Ljava/lang/String;

    move-result-object v20

    .line 204
    .local v20, tag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/functions/DisplayFormat;->language:C

    move/from16 v24, v0

    const/16 v25, 0x45

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 206
    const-string v17, "["

    .line 207
    .local v17, start:Ljava/lang/String;
    const-string v9, "]"

    .line 214
    .local v9, end:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/OutPort;

    move/from16 v24, v0

    if-eqz v24, :cond_10

    .line 215
    move-object/from16 v0, p2

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v5, v0

    const/16 v24, 0x0

    move-object v0, v5

    move-object/from16 v1, v17

    move/from16 v2, v24

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 218
    :goto_3
    invoke-virtual/range {v21 .. v21}, Lgnu/lists/SimpleVector;->size()I

    move-result v24

    shl-int/lit8 v10, v24, 0x1

    .line 219
    .local v10, endpos:I
    const/4 v12, 0x0

    .local v12, ipos:I
    :goto_4
    if-ge v12, v10, :cond_d

    .line 221
    if-lez v12, :cond_c

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/OutPort;

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 222
    move-object/from16 v0, p2

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 223
    :cond_c
    move-object/from16 v0, v21

    move v1, v12

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/lists/SimpleVector;->consumeNext(ILgnu/lists/Consumer;)Z

    move-result v24

    if-nez v24, :cond_11

    .line 226
    :cond_d
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/OutPort;

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 227
    check-cast p2, Lgnu/mapping/OutPort;

    .end local p2
    move-object/from16 v0, p2

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    .end local v9           #end:Ljava/lang/String;
    .end local v10           #endpos:I
    .end local v12           #ipos:I
    .end local v17           #start:Ljava/lang/String;
    .restart local p2
    :cond_e
    if-nez v20, :cond_f

    const-string v24, "#("

    move-object/from16 v17, v24

    .line 212
    .restart local v17       #start:Ljava/lang/String;
    :goto_5
    const-string v9, ")"

    .restart local v9       #end:Ljava/lang/String;
    goto :goto_2

    .line 211
    .end local v9           #end:Ljava/lang/String;
    .end local v17           #start:Ljava/lang/String;
    :cond_f
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v17, v24

    goto :goto_5

    .line 217
    .restart local v9       #end:Ljava/lang/String;
    .restart local v17       #start:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_3

    .line 219
    .restart local v10       #endpos:I
    .restart local v12       #ipos:I
    :cond_11
    add-int/lit8 v12, v12, 0x2

    goto :goto_4

    .line 229
    :cond_12
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 231
    .end local v9           #end:Ljava/lang/String;
    .end local v10           #endpos:I
    .end local v12           #ipos:I
    .end local v17           #start:Ljava/lang/String;
    .end local v20           #tag:Ljava/lang/String;
    .end local v21           #vec:Lgnu/lists/SimpleVector;
    :cond_13
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Array;

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 233
    check-cast p1, Lgnu/lists/Array;

    .end local p1
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/kawa/functions/DisplayFormat;->write(Lgnu/lists/Array;IILgnu/lists/Consumer;)I

    goto/16 :goto_0

    .line 236
    .restart local p1
    :cond_14
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/kawa/xml/KNode;

    move/from16 v24, v0

    if-eqz v24, :cond_17

    .line 238
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v24

    if-eqz v24, :cond_15

    .line 239
    const-string v24, "#"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 240
    :cond_15
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/io/Writer;

    move/from16 v24, v0

    if-eqz v24, :cond_16

    check-cast p2, Ljava/io/Writer;

    .end local p2
    move-object/from16 v22, p2

    .line 242
    .local v22, wout:Ljava/io/Writer;
    :goto_6
    new-instance v23, Lgnu/xml/XMLPrinter;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    .line 243
    .local v23, xout:Lgnu/xml/XMLPrinter;
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/xml/XMLPrinter;->writeObject(Ljava/lang/Object;)V

    .line 244
    invoke-virtual/range {v23 .. v23}, Lgnu/xml/XMLPrinter;->closeThis()V

    goto/16 :goto_0

    .line 240
    .end local v22           #wout:Ljava/io/Writer;
    .end local v23           #xout:Lgnu/xml/XMLPrinter;
    .restart local p2
    :cond_16
    new-instance v24, Lgnu/lists/ConsumerWriter;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lgnu/lists/ConsumerWriter;-><init>(Lgnu/lists/Consumer;)V

    move-object/from16 v22, v24

    goto :goto_6

    .line 247
    :cond_17
    sget-object v24, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v24

    if-eqz v24, :cond_18

    .line 248
    const-string v24, "#!void"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 249
    :cond_18
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Consumable;

    move/from16 v24, v0

    if-eqz v24, :cond_19

    .line 250
    check-cast p1, Lgnu/lists/Consumable;

    .end local p1
    invoke-interface/range {p1 .. p2}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 251
    .restart local p1
    :cond_19
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/text/Printable;

    move/from16 v24, v0

    if-eqz v24, :cond_1a

    .line 252
    check-cast p1, Lgnu/text/Printable;

    .end local p1
    invoke-interface/range {p1 .. p2}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 253
    .restart local p1
    :cond_1a
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/math/RatNum;

    move/from16 v24, v0

    if-eqz v24, :cond_24

    .line 255
    const/16 v6, 0xa

    .line 256
    .local v6, b:I
    const/16 v16, 0x0

    .line 257
    .local v16, showRadix:Z
    sget-object v24, Lgnu/kawa/functions/DisplayFormat;->outBase:Lgnu/mapping/ThreadLocation;

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 258
    .local v7, base:Ljava/lang/Object;
    sget-object v24, Lgnu/kawa/functions/DisplayFormat;->outRadix:Lgnu/mapping/ThreadLocation;

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 259
    .local v14, printRadix:Ljava/lang/Object;
    if-eqz v14, :cond_1c

    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v14

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_1b

    const-string v24, "yes"

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 262
    :cond_1b
    const/16 v16, 0x1

    .line 263
    :cond_1c
    move-object v0, v7

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v24, v0

    if-eqz v24, :cond_1f

    .line 264
    move-object v0, v7

    check-cast v0, Lgnu/math/IntNum;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/math/IntNum;->intValue()I

    move-result v6

    .line 267
    :cond_1d
    :goto_7
    move-object/from16 v0, p1

    check-cast v0, Lgnu/math/RatNum;

    move-object v5, v0

    invoke-virtual {v5, v6}, Lgnu/math/RatNum;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, asString:Ljava/lang/String;
    if-eqz v16, :cond_1e

    .line 270
    const/16 v24, 0x10

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_20

    .line 271
    const-string v24, "#x"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 279
    :cond_1e
    :goto_8
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 280
    if-eqz v16, :cond_0

    const/16 v24, 0xa

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/math/IntNum;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 281
    const-string v24, "."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 265
    .end local v5           #asString:Ljava/lang/String;
    :cond_1f
    if-eqz v7, :cond_1d

    .line 266
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_7

    .line 272
    .restart local v5       #asString:Ljava/lang/String;
    :cond_20
    const/16 v24, 0x8

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    .line 273
    const-string v24, "#o"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_8

    .line 274
    :cond_21
    const/16 v24, 0x2

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_22

    .line 275
    const-string v24, "#b"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_8

    .line 276
    :cond_22
    const/16 v24, 0xa

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/math/IntNum;

    move/from16 v24, v0

    if-nez v24, :cond_1e

    .line 277
    :cond_23
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "r"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_8

    .line 283
    .end local v5           #asString:Ljava/lang/String;
    .end local v6           #b:I
    .end local v7           #base:Ljava/lang/Object;
    .end local v14           #printRadix:Ljava/lang/Object;
    .end local v16           #showRadix:Z
    :cond_24
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Enum;

    move/from16 v24, v0

    if-eqz v24, :cond_25

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v24

    if-eqz v24, :cond_25

    .line 285
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 286
    const-string v24, ":"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 287
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 292
    .restart local p1
    :cond_25
    if-nez p1, :cond_26

    .line 293
    const/4 v5, 0x0

    .line 322
    .restart local v5       #asString:Ljava/lang/String;
    :goto_9
    if-nez v5, :cond_2c

    .line 323
    const-string v24, "#!null"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 296
    .end local v5           #asString:Ljava/lang/String;
    :cond_26
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 297
    .local v8, cl:Ljava/lang/Class;
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v24

    if-eqz v24, :cond_2b

    .line 299
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    .line 300
    .restart local v13       #len:I
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/OutPort;

    move/from16 v24, v0

    if-eqz v24, :cond_28

    .line 301
    move-object/from16 v0, p2

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v5, v0

    const-string v24, "["

    const/16 v25, 0x0

    const-string v26, "]"

    move-object v0, v5

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 304
    :goto_a
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_b
    if-ge v11, v13, :cond_29

    .line 306
    if-lez v11, :cond_27

    .line 308
    const-string v24, " "

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 309
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/OutPort;

    move/from16 v24, v0

    if-eqz v24, :cond_27

    .line 310
    move-object/from16 v0, p2

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/OutPort;->writeBreakFill()V

    .line 312
    :cond_27
    move-object/from16 v0, p1

    move v1, v11

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 304
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 303
    .end local v11           #i:I
    :cond_28
    const-string v24, "["

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_a

    .line 314
    .restart local v11       #i:I
    :cond_29
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/OutPort;

    move/from16 v24, v0

    if-eqz v24, :cond_2a

    .line 315
    check-cast p2, Lgnu/mapping/OutPort;

    .end local p2
    const-string v24, "]"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    .restart local p2
    :cond_2a
    const-string v24, "]"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 320
    .end local v11           #i:I
    .end local v13           #len:I
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #asString:Ljava/lang/String;
    goto/16 :goto_9

    .line 325
    .end local v8           #cl:Ljava/lang/Class;
    :cond_2c
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0
.end method

.method writeSymbol(Lgnu/mapping/Symbol;Lgnu/lists/Consumer;Z)V
    .locals 10
    .parameter "sym"
    .parameter "out"
    .parameter "readable"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x3a

    .line 386
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, prefix:Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v2

    .line 388
    .local v2, namespace:Lgnu/mapping/Namespace;
    if-nez v2, :cond_3

    const/4 v6, 0x0

    move-object v5, v6

    .line 389
    .local v5, uri:Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    move v1, v9

    .line 390
    .local v1, hasUri:Z
    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    move v0, v9

    .line 391
    .local v0, hasPrefix:Z
    :goto_2
    const/4 v4, 0x0

    .line 392
    .local v4, suffixColon:Z
    sget-object v6, Lgnu/expr/Keyword;->keywordNamespace:Lgnu/mapping/Namespace;

    if-ne v2, v6, :cond_7

    .line 394
    iget-char v6, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v7, 0x43

    if-eq v6, v7, :cond_0

    iget-char v6, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v7, 0x45

    if-ne v6, v7, :cond_6

    .line 395
    :cond_0
    invoke-interface {p2, v8}, Lgnu/lists/Consumer;->write(I)V

    .line 411
    :cond_1
    :goto_3
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p2, p3}, Lgnu/kawa/functions/DisplayFormat;->writeSymbol(Ljava/lang/String;Lgnu/lists/Consumer;Z)V

    .line 412
    if-eqz v4, :cond_2

    .line 413
    invoke-interface {p2, v8}, Lgnu/lists/Consumer;->write(I)V

    .line 414
    :cond_2
    return-void

    .line 388
    .end local v0           #hasPrefix:Z
    .end local v1           #hasUri:Z
    .end local v4           #suffixColon:Z
    .end local v5           #uri:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .restart local v5       #uri:Ljava/lang/String;
    :cond_4
    move v1, v7

    .line 389
    goto :goto_1

    .restart local v1       #hasUri:Z
    :cond_5
    move v0, v7

    .line 390
    goto :goto_2

    .line 397
    .restart local v0       #hasPrefix:Z
    .restart local v4       #suffixColon:Z
    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    .line 399
    :cond_7
    if-nez v0, :cond_8

    if-eqz v1, :cond_1

    .line 401
    :cond_8
    if-eqz v0, :cond_9

    .line 402
    invoke-virtual {p0, v3, p2, p3}, Lgnu/kawa/functions/DisplayFormat;->writeSymbol(Ljava/lang/String;Lgnu/lists/Consumer;Z)V

    .line 403
    :cond_9
    if-eqz v1, :cond_b

    if-nez p3, :cond_a

    if-nez v0, :cond_b

    .line 405
    :cond_a
    const/16 v6, 0x7b

    invoke-interface {p2, v6}, Lgnu/lists/Consumer;->write(I)V

    .line 406
    invoke-interface {p2, v5}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 407
    const/16 v6, 0x7d

    invoke-interface {p2, v6}, Lgnu/lists/Consumer;->write(I)V

    .line 409
    :cond_b
    invoke-interface {p2, v8}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_3
.end method

.method writeSymbol(Ljava/lang/String;Lgnu/lists/Consumer;Z)V
    .locals 6
    .parameter "sym"
    .parameter "out"
    .parameter "readable"

    .prologue
    const/16 v5, 0x7c

    .line 421
    if-eqz p3, :cond_6

    sget-object v4, Lgnu/kawa/functions/DisplayFormat;->r5rsIdentifierMinusInteriorColons:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_6

    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 424
    .local v3, len:I
    if-nez v3, :cond_1

    .line 426
    const-string v4, "||"

    invoke-virtual {p0, v4, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 453
    .end local v3           #len:I
    :cond_0
    :goto_0
    return-void

    .line 430
    .restart local v3       #len:I
    :cond_1
    const/4 v2, 0x0

    .line 431
    .local v2, inVerticalBars:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 433
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 434
    .local v0, ch:C
    if-ne v0, v5, :cond_4

    .line 436
    if-eqz v2, :cond_3

    const-string v4, "|\\"

    :goto_2
    invoke-virtual {p0, v4, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 437
    const/4 v2, 0x0

    .line 444
    :cond_2
    :goto_3
    invoke-interface {p2, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 436
    :cond_3
    const-string v4, "\\"

    goto :goto_2

    .line 439
    :cond_4
    if-nez v2, :cond_2

    .line 441
    invoke-interface {p2, v5}, Lgnu/lists/Consumer;->write(I)V

    .line 442
    const/4 v2, 0x1

    goto :goto_3

    .line 446
    .end local v0           #ch:C
    :cond_5
    if-eqz v2, :cond_0

    .line 447
    invoke-interface {p2, v5}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_0

    .line 452
    .end local v1           #i:I
    .end local v2           #inVerticalBars:Z
    .end local v3           #len:I
    :cond_6
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_0
.end method
