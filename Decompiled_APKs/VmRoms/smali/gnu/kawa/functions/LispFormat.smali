.class public Lgnu/kawa/functions/LispFormat;
.super Lgnu/text/CompoundFormat;
.source "LispFormat.java"


# static fields
.field public static final paramFromCount:Ljava/lang/String; = "<from count>"

.field public static final paramFromList:Ljava/lang/String; = "<from list>"

.field public static final paramUnspecified:Ljava/lang/String; = "<unspecified>"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/kawa/functions/LispFormat;-><init>([C)V

    .line 464
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 514
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lgnu/kawa/functions/LispFormat;-><init>([CII)V

    .line 515
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 49
    .parameter "format"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    invoke-direct {v0, v1, v2}, Lgnu/text/CompoundFormat;-><init>([Ljava/text/Format;I)V

    .line 24
    const/16 v47, -0x1

    .line 25
    .local v47, start_nesting:I
    const/16 v24, 0x0

    .line 27
    .local v24, choices_seen:I
    new-instance v34, Ljava/lang/StringBuffer;

    const/16 v12, 0x64

    move-object/from16 v0, v34

    move v1, v12

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 28
    .local v34, litbuf:Ljava/lang/StringBuffer;
    new-instance v45, Ljava/util/Stack;

    invoke-direct/range {v45 .. v45}, Ljava/util/Stack;-><init>()V

    .line 30
    .local v45, stack:Ljava/util/Stack;
    add-int v33, p2, p3

    .line 31
    .local v33, limit:I
    move/from16 v29, p2

    .local v29, i:I
    move/from16 v30, v29

    .line 34
    .end local v29           #i:I
    .end local p2
    .local v30, i:I
    :cond_0
    :goto_0
    move/from16 v0, v30

    move/from16 v1, v33

    if-ge v0, v1, :cond_1

    aget-char v12, p1, v30

    const/16 v13, 0x7e

    if-ne v12, v13, :cond_2

    :cond_1
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 36
    new-instance v12, Lgnu/text/LiteralFormat;

    move-object v0, v12

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lgnu/text/LiteralFormat;-><init>(Ljava/lang/StringBuffer;)V

    move-object/from16 v0, v45

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const/4 v12, 0x0

    move-object/from16 v0, v34

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 39
    :cond_2
    move/from16 v0, v30

    move/from16 v1, v33

    if-lt v0, v1, :cond_3

    .line 430
    move/from16 v0, v30

    move/from16 v1, v33

    if-le v0, v1, :cond_43

    .line 431
    new-instance v12, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v12}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v12

    .line 41
    :cond_3
    add-int/lit8 v29, v30, 0x1

    .end local v30           #i:I
    .restart local v29       #i:I
    aget-char v22, p1, v30

    .line 42
    .local v22, ch:C
    const/16 v12, 0x7e

    move/from16 v0, v22

    move v1, v12

    if-eq v0, v1, :cond_4

    .line 44
    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v30, v29

    .line 45
    .end local v29           #i:I
    .restart local v30       #i:I
    goto :goto_0

    .line 47
    .end local v30           #i:I
    .restart local v29       #i:I
    :cond_4
    invoke-virtual/range {v45 .. v45}, Ljava/util/Stack;->size()I

    move-result v44

    .line 48
    .local v44, speci:I
    add-int/lit8 v30, v29, 0x1

    .end local v29           #i:I
    .restart local v30       #i:I
    aget-char v22, p1, v29

    .line 51
    :goto_1
    const/16 v12, 0x23

    move/from16 v0, v22

    move v1, v12

    if-ne v0, v1, :cond_5

    .line 53
    const-string v12, "<from count>"

    move-object/from16 v0, v45

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v29, v30, 0x1

    .end local v30           #i:I
    .restart local v29       #i:I
    aget-char v22, p1, v30

    move/from16 v30, v29

    .line 90
    .end local v29           #i:I
    .restart local v30       #i:I
    :goto_2
    const/16 v12, 0x2c

    move/from16 v0, v22

    move v1, v12

    if-eq v0, v1, :cond_f

    move/from16 v29, v30

    .line 94
    .end local v30           #i:I
    .restart local v29       #i:I
    :goto_3
    const/16 v43, 0x0

    .line 95
    .local v43, seenColon:Z
    const/16 v42, 0x0

    .local v42, seenAt:Z
    move/from16 v30, v29

    .line 98
    .end local v29           #i:I
    .restart local v30       #i:I
    :goto_4
    const/16 v12, 0x3a

    move/from16 v0, v22

    move v1, v12

    if-ne v0, v1, :cond_10

    .line 99
    const/16 v43, 0x1

    .line 104
    :goto_5
    add-int/lit8 v29, v30, 0x1

    .end local v30           #i:I
    .restart local v29       #i:I
    aget-char v22, p1, v30

    move/from16 v30, v29

    .end local v29           #i:I
    .restart local v30       #i:I
    goto :goto_4

    .line 56
    .end local v42           #seenAt:Z
    .end local v43           #seenColon:Z
    :cond_5
    const/16 v12, 0x76

    move/from16 v0, v22

    move v1, v12

    if-eq v0, v1, :cond_6

    const/16 v12, 0x56

    move/from16 v0, v22

    move v1, v12

    if-ne v0, v1, :cond_7

    .line 58
    :cond_6
    const-string v12, "<from list>"

    move-object/from16 v0, v45

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v29, v30, 0x1

    .end local v30           #i:I
    .restart local v29       #i:I
    aget-char v22, p1, v30

    move/from16 v30, v29

    .end local v29           #i:I
    .restart local v30       #i:I
    goto :goto_2

    .line 61
    :cond_7
    const/16 v12, 0x2d

    move/from16 v0, v22

    move v1, v12

    if-eq v0, v1, :cond_8

    const/16 v12, 0xa

    move/from16 v0, v22

    move v1, v12

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    if-ltz v12, :cond_d

    .line 63
    :cond_8
    const/16 v12, 0x2d

    move/from16 v0, v22

    move v1, v12

    if-ne v0, v1, :cond_9

    const/4 v12, 0x1

    move/from16 v35, v12

    .line 64
    .local v35, neg:Z
    :goto_6
    if-eqz v35, :cond_48

    .line 65
    add-int/lit8 v29, v30, 0x1

    .end local v30           #i:I
    .restart local v29       #i:I
    aget-char v22, p1, v30

    .line 66
    :goto_7
    const/16 v48, 0x0

    .line 67
    .local v48, val:I
    move/from16 v46, v29

    .line 70
    .local v46, start:I
    :goto_8
    const/16 v12, 0xa

    move/from16 v0, v22

    move v1, v12

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v27

    .line 71
    .local v27, dig:I
    if-gez v27, :cond_a

    .line 76
    sub-int v12, v29, v46

    const/16 v13, 0x8

    if-ge v12, v13, :cond_c

    if-eqz v35, :cond_b

    move/from16 v0, v48

    neg-int v0, v0

    move v12, v0

    :goto_9
    invoke-static {v12}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v12

    :goto_a
    move-object/from16 v0, v45

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v30, v29

    .line 78
    .end local v29           #i:I
    .restart local v30       #i:I
    goto/16 :goto_2

    .line 63
    .end local v27           #dig:I
    .end local v35           #neg:Z
    .end local v46           #start:I
    .end local v48           #val:I
    :cond_9
    const/4 v12, 0x0

    move/from16 v35, v12

    goto :goto_6

    .line 73
    .end local v30           #i:I
    .restart local v27       #dig:I
    .restart local v29       #i:I
    .restart local v35       #neg:Z
    .restart local v46       #start:I
    .restart local v48       #val:I
    :cond_a
    mul-int/lit8 v12, v48, 0xa

    add-int v48, v12, v27

    .line 74
    add-int/lit8 v30, v29, 0x1

    .end local v29           #i:I
    .restart local v30       #i:I
    aget-char v22, p1, v29

    move/from16 v29, v30

    .line 75
    .end local v30           #i:I
    .restart local v29       #i:I
    goto :goto_8

    :cond_b
    move/from16 v12, v48

    .line 76
    goto :goto_9

    :cond_c
    sub-int v12, v29, v46

    const/16 v13, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v46

    move v2, v12

    move v3, v13

    move/from16 v4, v35

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v12

    goto :goto_a

    .line 79
    .end local v27           #dig:I
    .end local v29           #i:I
    .end local v35           #neg:Z
    .end local v46           #start:I
    .end local v48           #val:I
    .restart local v30       #i:I
    :cond_d
    const/16 v12, 0x27

    move/from16 v0, v22

    move v1, v12

    if-ne v0, v1, :cond_e

    .line 81
    add-int/lit8 v29, v30, 0x1

    .end local v30           #i:I
    .restart local v29       #i:I
    aget-char v12, p1, v30

    invoke-static {v12}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v12

    move-object/from16 v0, v45

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    add-int/lit8 v30, v29, 0x1

    .end local v29           #i:I
    .restart local v30       #i:I
    aget-char v22, p1, v29

    goto/16 :goto_2

    .line 84
    :cond_e
    const/16 v12, 0x2c

    move/from16 v0, v22

    move v1, v12

    if-ne v0, v1, :cond_47

    .line 86
    const-string v12, "<unspecified>"

    move-object/from16 v0, v45

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 92
    :cond_f
    add-int/lit8 v29, v30, 0x1

    .end local v30           #i:I
    .restart local v29       #i:I
    aget-char v22, p1, v30

    move/from16 v30, v29

    .end local v29           #i:I
    .restart local v30       #i:I
    goto/16 :goto_1

    .line 100
    .restart local v42       #seenAt:Z
    .restart local v43       #seenColon:Z
    :cond_10
    const/16 v12, 0x40

    move/from16 v0, v22

    move v1, v12

    if-ne v0, v1, :cond_11

    .line 101
    const/16 v42, 0x1

    goto/16 :goto_5

    .line 106
    :cond_11
    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v22

    .line 107
    invoke-virtual/range {v45 .. v45}, Ljava/util/Stack;->size()I

    move-result v12

    sub-int v37, v12, v44

    .line 110
    .local v37, numParams:I
    sparse-switch v22, :sswitch_data_0

    .line 425
    new-instance v12, Ljava/text/ParseException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unrecognized format specifier ~"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v0, v12

    move-object v1, v13

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 113
    :sswitch_0
    move/from16 v19, v44

    .line 115
    .local v19, argstart:I
    const/16 v12, 0x52

    move/from16 v0, v22

    move v1, v12

    if-ne v0, v1, :cond_14

    add-int/lit8 v20, v19, 0x1

    .end local v19           #argstart:I
    .local v20, argstart:I
    move-object/from16 v0, v45

    move/from16 v1, v19

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v5

    .local v5, base:I
    move/from16 v19, v20

    .line 120
    .end local v20           #argstart:I
    .restart local v19       #argstart:I
    :goto_b
    move-object/from16 v0, v45

    move/from16 v1, v19

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v6

    .line 121
    .local v6, minWidth:I
    add-int/lit8 v12, v19, 0x1

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v7

    .line 122
    .local v7, padChar:I
    add-int/lit8 v12, v19, 0x2

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v8

    .line 123
    .local v8, commaChar:I
    add-int/lit8 v12, v19, 0x3

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v9

    .line 124
    .local v9, commaInterval:I
    const/4 v10, 0x0

    .line 125
    .local v10, flags:I
    if-eqz v43, :cond_12

    .line 126
    or-int/lit8 v10, v10, 0x1

    .line 127
    :cond_12
    if-eqz v42, :cond_13

    .line 128
    or-int/lit8 v10, v10, 0x2

    .line 129
    :cond_13
    invoke-static/range {v5 .. v10}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v11

    .line 427
    .end local v5           #base:I
    .end local v6           #minWidth:I
    .end local v7           #padChar:I
    .end local v8           #commaChar:I
    .end local v9           #commaInterval:I
    .end local v10           #flags:I
    .end local v19           #argstart:I
    .local v11, fmt:Ljava/text/Format;
    :goto_c
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    .line 428
    move-object/from16 v0, v45

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 116
    .end local v11           #fmt:Ljava/text/Format;
    .restart local v19       #argstart:I
    :cond_14
    const/16 v12, 0x44

    move/from16 v0, v22

    move v1, v12

    if-ne v0, v1, :cond_15

    const/16 v5, 0xa

    .restart local v5       #base:I
    goto :goto_b

    .line 117
    .end local v5           #base:I
    :cond_15
    const/16 v12, 0x4f

    move/from16 v0, v22

    move v1, v12

    if-ne v0, v1, :cond_16

    const/16 v5, 0x8

    .restart local v5       #base:I
    goto :goto_b

    .line 118
    .end local v5           #base:I
    :cond_16
    const/16 v12, 0x58

    move/from16 v0, v22

    move v1, v12

    if-ne v0, v1, :cond_17

    const/16 v5, 0x10

    .restart local v5       #base:I
    goto :goto_b

    .line 119
    .end local v5           #base:I
    :cond_17
    const/4 v5, 0x2

    .restart local v5       #base:I
    goto :goto_b

    .line 133
    .end local v5           #base:I
    .end local v19           #argstart:I
    :sswitch_1
    move/from16 v0, v43

    move/from16 v1, v42

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispPluralFormat;->getInstance(ZZ)Lgnu/kawa/functions/LispPluralFormat;

    move-result-object v11

    .line 134
    .restart local v11       #fmt:Ljava/text/Format;
    goto :goto_c

    .line 139
    .end local v11           #fmt:Ljava/text/Format;
    :sswitch_2
    new-instance v26, Lgnu/kawa/functions/LispRealFormat;

    invoke-direct/range {v26 .. v26}, Lgnu/kawa/functions/LispRealFormat;-><init>()V

    .line 140
    .local v26, dfmt:Lgnu/kawa/functions/LispRealFormat;
    move/from16 v0, v22

    move-object/from16 v1, v26

    iput-char v0, v1, Lgnu/kawa/functions/LispRealFormat;->op:C

    .line 141
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    move v0, v12

    move-object/from16 v1, v26

    iput v0, v1, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    .line 142
    add-int/lit8 v12, v44, 0x1

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    move v0, v12

    move-object/from16 v1, v26

    iput v0, v1, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    .line 143
    add-int/lit8 v12, v44, 0x2

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    move v0, v12

    move-object/from16 v1, v26

    iput v0, v1, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    .line 144
    add-int/lit8 v12, v44, 0x3

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    move v0, v12

    move-object/from16 v1, v26

    iput v0, v1, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    .line 145
    const/16 v12, 0x24

    move/from16 v0, v22

    move v1, v12

    if-eq v0, v1, :cond_19

    .line 147
    add-int/lit8 v12, v44, 0x4

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    move v0, v12

    move-object/from16 v1, v26

    iput v0, v1, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    .line 148
    const/16 v12, 0x45

    move/from16 v0, v22

    move v1, v12

    if-eq v0, v1, :cond_18

    const/16 v12, 0x47

    move/from16 v0, v22

    move v1, v12

    if-ne v0, v1, :cond_19

    .line 150
    :cond_18
    add-int/lit8 v12, v44, 0x5

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    move v0, v12

    move-object/from16 v1, v26

    iput v0, v1, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    .line 151
    add-int/lit8 v12, v44, 0x6

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    move v0, v12

    move-object/from16 v1, v26

    iput v0, v1, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    .line 154
    :cond_19
    move/from16 v0, v42

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lgnu/kawa/functions/LispRealFormat;->showPlus:Z

    .line 155
    move/from16 v0, v43

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lgnu/kawa/functions/LispRealFormat;->internalPad:Z

    .line 156
    move-object/from16 v0, v26

    iget v0, v0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    move v12, v0

    if-nez v12, :cond_1a

    .line 157
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v26

    move-object v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/LispRealFormat;->resolve([Ljava/lang/Object;I)Ljava/text/Format;

    move-result-object v11

    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .line 159
    .end local v11           #fmt:Ljava/text/Format;
    :cond_1a
    move-object/from16 v11, v26

    .line 160
    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .line 164
    .end local v11           #fmt:Ljava/text/Format;
    .end local v26           #dfmt:Lgnu/kawa/functions/LispRealFormat;
    :sswitch_3
    const/16 v12, 0x41

    move/from16 v0, v22

    move v1, v12

    if-eq v0, v1, :cond_1b

    const/4 v12, 0x1

    :goto_d
    invoke-static {v12}, Lgnu/kawa/functions/ObjectFormat;->getInstance(Z)Lgnu/kawa/functions/ObjectFormat;

    move-result-object v28

    .line 165
    .local v28, fmt:Ljava/text/Format;
    if-lez v37, :cond_46

    .line 167
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v6

    .line 168
    .restart local v6       #minWidth:I
    add-int/lit8 v12, v44, 0x1

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v14

    .line 169
    .local v14, colInc:I
    add-int/lit8 v12, v44, 0x2

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v15

    .line 170
    .local v15, minPad:I
    add-int/lit8 v12, v44, 0x3

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v7

    .line 171
    .restart local v7       #padChar:I
    new-instance v11, Lgnu/kawa/functions/LispObjectFormat;

    move-object/from16 v0, v28

    check-cast v0, Lgnu/text/ReportFormat;

    move-object v12, v0

    if-eqz v42, :cond_1c

    const/4 v13, 0x0

    move/from16 v17, v13

    :goto_e
    move v13, v6

    move/from16 v16, v7

    invoke-direct/range {v11 .. v17}, Lgnu/kawa/functions/LispObjectFormat;-><init>(Lgnu/text/ReportFormat;IIIII)V

    .line 174
    .end local v28           #fmt:Ljava/text/Format;
    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .line 164
    .end local v6           #minWidth:I
    .end local v7           #padChar:I
    .end local v11           #fmt:Ljava/text/Format;
    .end local v14           #colInc:I
    .end local v15           #minPad:I
    :cond_1b
    const/4 v12, 0x0

    goto :goto_d

    .line 171
    .restart local v6       #minWidth:I
    .restart local v7       #padChar:I
    .restart local v14       #colInc:I
    .restart local v15       #minPad:I
    .restart local v28       #fmt:Ljava/text/Format;
    :cond_1c
    const/16 v13, 0x64

    move/from16 v17, v13

    goto :goto_e

    .line 177
    .end local v6           #minWidth:I
    .end local v7           #padChar:I
    .end local v14           #colInc:I
    .end local v15           #minPad:I
    .end local v28           #fmt:Ljava/text/Format;
    :sswitch_4
    if-lez v37, :cond_1d

    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    move/from16 v23, v12

    .line 179
    .local v23, charVal:I
    :goto_f
    const/4 v12, 0x1

    move/from16 v0, v23

    move v1, v12

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-static {v0, v1, v2, v3}, Lgnu/kawa/functions/LispCharacterFormat;->getInstance(IIZZ)Lgnu/kawa/functions/LispCharacterFormat;

    move-result-object v11

    .line 181
    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .line 177
    .end local v11           #fmt:Ljava/text/Format;
    .end local v23           #charVal:I
    :cond_1d
    const/high16 v12, -0x6000

    move/from16 v23, v12

    goto :goto_f

    .line 183
    :sswitch_5
    new-instance v11, Lgnu/kawa/functions/LispRepositionFormat;

    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    move-object v0, v11

    move v1, v12

    move/from16 v2, v43

    move/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/functions/LispRepositionFormat;-><init>(IZZ)V

    .line 185
    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .line 187
    .end local v11           #fmt:Ljava/text/Format;
    :sswitch_6
    if-eqz v43, :cond_1f

    if-eqz v42, :cond_1e

    const/16 v12, 0x55

    move/from16 v22, v12

    .line 188
    :goto_10
    new-instance v21, Lgnu/text/CaseConvertFormat;

    const/4 v12, 0x0

    move-object/from16 v0, v21

    move-object v1, v12

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lgnu/text/CaseConvertFormat;-><init>(Ljava/text/Format;C)V

    .line 189
    .local v21, cfmt:Lgnu/text/CaseConvertFormat;
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    .line 190
    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static/range {v47 .. v47}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v12

    move-object/from16 v0, v45

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move/from16 v47, v44

    .line 193
    goto/16 :goto_0

    .line 187
    .end local v21           #cfmt:Lgnu/text/CaseConvertFormat;
    :cond_1e
    const/16 v12, 0x43

    move/from16 v22, v12

    goto :goto_10

    :cond_1f
    if-eqz v42, :cond_20

    const/16 v12, 0x54

    move/from16 v22, v12

    goto :goto_10

    :cond_20
    const/16 v12, 0x4c

    move/from16 v22, v12

    goto :goto_10

    .line 195
    :sswitch_7
    if-ltz v47, :cond_21

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lgnu/text/CaseConvertFormat;

    if-nez v12, :cond_22

    .line 198
    :cond_21
    new-instance v12, Ljava/text/ParseException;

    const-string v13, "saw ~) without matching ~("

    move-object v0, v12

    move-object v1, v13

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 199
    :cond_22
    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/text/CaseConvertFormat;

    .line 200
    .restart local v21       #cfmt:Lgnu/text/CaseConvertFormat;
    add-int/lit8 v12, v47, 0x2

    move-object/from16 v0, v45

    move v1, v12

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v12

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Lgnu/text/CaseConvertFormat;->setBaseFormat(Ljava/text/Format;)V

    .line 201
    invoke-virtual/range {v45 .. v45}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/math/IntNum;

    invoke-virtual/range {p2 .. p2}, Lgnu/math/IntNum;->intValue()I

    move-result v47

    .line 202
    goto/16 :goto_0

    .line 204
    .end local v21           #cfmt:Lgnu/text/CaseConvertFormat;
    :sswitch_8
    new-instance v32, Lgnu/kawa/functions/LispIterationFormat;

    invoke-direct/range {v32 .. v32}, Lgnu/kawa/functions/LispIterationFormat;-><init>()V

    .line 205
    .local v32, lfmt:Lgnu/kawa/functions/LispIterationFormat;
    move/from16 v0, v42

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lgnu/kawa/functions/LispIterationFormat;->seenAt:Z

    .line 206
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, v32

    iput v0, v1, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    .line 207
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    .line 208
    move-object/from16 v11, v32

    .line 209
    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .line 211
    .end local v11           #fmt:Ljava/text/Format;
    .end local v32           #lfmt:Lgnu/kawa/functions/LispIterationFormat;
    :sswitch_9
    new-instance v32, Lgnu/kawa/functions/LispIterationFormat;

    invoke-direct/range {v32 .. v32}, Lgnu/kawa/functions/LispIterationFormat;-><init>()V

    .line 212
    .restart local v32       #lfmt:Lgnu/kawa/functions/LispIterationFormat;
    move/from16 v0, v42

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lgnu/kawa/functions/LispIterationFormat;->seenAt:Z

    .line 213
    move/from16 v0, v43

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lgnu/kawa/functions/LispIterationFormat;->seenColon:Z

    .line 214
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    move v0, v12

    move-object/from16 v1, v32

    iput v0, v1, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    .line 215
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    .line 216
    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static/range {v47 .. v47}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v12

    move-object/from16 v0, v45

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    move/from16 v47, v44

    .line 219
    goto/16 :goto_0

    .line 221
    .end local v32           #lfmt:Lgnu/kawa/functions/LispIterationFormat;
    :sswitch_a
    if-ltz v47, :cond_23

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lgnu/kawa/functions/LispIterationFormat;

    if-nez v12, :cond_24

    .line 224
    :cond_23
    new-instance v12, Ljava/text/ParseException;

    const-string v13, "saw ~} without matching ~{"

    move-object v0, v12

    move-object v1, v13

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 225
    :cond_24
    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lgnu/kawa/functions/LispIterationFormat;

    .line 226
    .restart local v32       #lfmt:Lgnu/kawa/functions/LispIterationFormat;
    move/from16 v0, v43

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    .line 227
    add-int/lit8 v12, v47, 0x2

    move/from16 v0, v44

    move v1, v12

    if-le v0, v1, :cond_25

    .line 228
    add-int/lit8 v12, v47, 0x2

    move-object/from16 v0, v45

    move v1, v12

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, v32

    iput-object v0, v1, Lgnu/kawa/functions/LispIterationFormat;->body:Ljava/text/Format;

    .line 229
    :cond_25
    invoke-virtual/range {v45 .. v45}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/math/IntNum;

    invoke-virtual/range {p2 .. p2}, Lgnu/math/IntNum;->intValue()I

    move-result v47

    .line 230
    goto/16 :goto_0

    .line 232
    .end local v32           #lfmt:Lgnu/kawa/functions/LispIterationFormat;
    :sswitch_b
    new-instance v41, Lgnu/kawa/functions/LispPrettyFormat;

    invoke-direct/range {v41 .. v41}, Lgnu/kawa/functions/LispPrettyFormat;-><init>()V

    .line 233
    .local v41, pfmt:Lgnu/kawa/functions/LispPrettyFormat;
    move/from16 v0, v42

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->seenAt:Z

    .line 234
    if-eqz v43, :cond_26

    .line 236
    const-string v12, "("

    move-object v0, v12

    move-object/from16 v1, v41

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 237
    const-string v12, ")"

    move-object v0, v12

    move-object/from16 v1, v41

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    .line 244
    :goto_11
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    .line 245
    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-static/range {v47 .. v47}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v12

    move-object/from16 v0, v45

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static/range {v24 .. v24}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v12

    move-object/from16 v0, v45

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    move/from16 v47, v44

    .line 249
    const/16 v24, 0x0

    .line 250
    goto/16 :goto_0

    .line 241
    :cond_26
    const-string v12, ""

    move-object v0, v12

    move-object/from16 v1, v41

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 242
    const-string v12, ""

    move-object v0, v12

    move-object/from16 v1, v41

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    goto :goto_11

    .line 252
    .end local v41           #pfmt:Lgnu/kawa/functions/LispPrettyFormat;
    :sswitch_c
    if-ltz v47, :cond_27

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lgnu/kawa/functions/LispPrettyFormat;

    if-nez v12, :cond_28

    .line 255
    :cond_27
    new-instance v12, Ljava/text/ParseException;

    const-string v13, "saw ~> without matching ~<"

    move-object v0, v12

    move-object v1, v13

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 256
    :cond_28
    add-int/lit8 v12, v47, 0x3

    add-int v12, v12, v24

    move-object/from16 v0, v45

    move v1, v12

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v11

    .line 257
    .restart local v11       #fmt:Ljava/text/Format;
    move-object/from16 v0, v45

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lgnu/kawa/functions/LispPrettyFormat;

    .line 259
    .restart local v41       #pfmt:Lgnu/kawa/functions/LispPrettyFormat;
    add-int/lit8 v12, v47, 0x3

    invoke-virtual/range {v45 .. v45}, Ljava/util/Stack;->size()I

    move-result v13

    move-object/from16 v0, v45

    move v1, v12

    move v2, v13

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/LispFormat;->getFormats(Ljava/util/Vector;II)[Ljava/text/Format;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, v41

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    .line 260
    add-int/lit8 v12, v47, 0x3

    move-object/from16 v0, v45

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    .line 261
    invoke-virtual/range {v45 .. v45}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/math/IntNum;

    invoke-virtual/range {p2 .. p2}, Lgnu/math/IntNum;->intValue()I

    move-result v47

    .line 262
    invoke-virtual/range {v45 .. v45}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/math/IntNum;

    invoke-virtual/range {p2 .. p2}, Lgnu/math/IntNum;->intValue()I

    move-result v47

    .line 263
    if-eqz v43, :cond_2d

    .line 265
    move-object/from16 v0, v41

    iget-object v0, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    move-object v12, v0

    move-object v0, v12

    array-length v0, v0

    move/from16 v36, v0

    .line 266
    .local v36, nsegments:I
    const/4 v12, 0x3

    move/from16 v0, v36

    move v1, v12

    if-le v0, v1, :cond_29

    .line 267
    new-instance v12, Ljava/text/ParseException;

    const-string v13, "too many segments in Logical Block format"

    move-object v0, v12

    move-object v1, v13

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 268
    :cond_29
    const/4 v12, 0x2

    move/from16 v0, v36

    move v1, v12

    if-lt v0, v1, :cond_2b

    .line 270
    move-object/from16 v0, v41

    iget-object v0, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    move-object v12, v0

    const/4 v13, 0x0

    aget-object v12, v12, v13

    instance-of v12, v12, Lgnu/text/LiteralFormat;

    if-nez v12, :cond_2a

    .line 271
    new-instance v12, Ljava/text/ParseException;

    const-string v13, "prefix segment is not literal"

    move-object v0, v12

    move-object v1, v13

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 272
    :cond_2a
    move-object/from16 v0, v41

    iget-object v0, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    move-object v12, v0

    const/4 v13, 0x0

    aget-object p2, v12, v13

    check-cast p2, Lgnu/text/LiteralFormat;

    invoke-virtual/range {p2 .. p2}, Lgnu/text/LiteralFormat;->content()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, v41

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 273
    move-object/from16 v0, v41

    iget-object v0, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    move-object v12, v0

    const/4 v13, 0x1

    aget-object v12, v12, v13

    move-object v0, v12

    move-object/from16 v1, v41

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    .line 277
    :goto_12
    const/4 v12, 0x3

    move/from16 v0, v36

    move v1, v12

    if-lt v0, v1, :cond_0

    .line 279
    move-object/from16 v0, v41

    iget-object v0, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    move-object v12, v0

    const/4 v13, 0x2

    aget-object v12, v12, v13

    instance-of v12, v12, Lgnu/text/LiteralFormat;

    if-nez v12, :cond_2c

    .line 280
    new-instance v12, Ljava/text/ParseException;

    const-string v13, "suffix segment is not literal"

    move-object v0, v12

    move-object v1, v13

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 276
    :cond_2b
    move-object/from16 v0, v41

    iget-object v0, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    move-object v12, v0

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object v0, v12

    move-object/from16 v1, v41

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    goto :goto_12

    .line 281
    :cond_2c
    move-object/from16 v0, v41

    iget-object v0, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    move-object v12, v0

    const/4 v13, 0x2

    aget-object p2, v12, v13

    check-cast p2, Lgnu/text/LiteralFormat;

    invoke-virtual/range {p2 .. p2}, Lgnu/text/LiteralFormat;->content()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, v41

    iput-object v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    goto/16 :goto_0

    .line 285
    .end local v36           #nsegments:I
    :cond_2d
    new-instance v12, Ljava/text/ParseException;

    const-string v13, "not implemented: justfication i.e. ~<...~>"

    move-object v0, v12

    move-object v1, v13

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 288
    .end local v11           #fmt:Ljava/text/Format;
    .end local v41           #pfmt:Lgnu/kawa/functions/LispPrettyFormat;
    :sswitch_d
    new-instance v18, Lgnu/kawa/functions/LispChoiceFormat;

    invoke-direct/range {v18 .. v18}, Lgnu/kawa/functions/LispChoiceFormat;-><init>()V

    .line 289
    .local v18, afmt:Lgnu/kawa/functions/LispChoiceFormat;
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    move v0, v12

    move-object/from16 v1, v18

    iput v0, v1, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    .line 290
    move-object/from16 v0, v18

    iget v0, v0, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    move v12, v0

    const/high16 v13, -0x4000

    if-ne v12, v13, :cond_2e

    .line 291
    const/high16 v12, -0x6000

    move v0, v12

    move-object/from16 v1, v18

    iput v0, v1, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    .line 292
    :cond_2e
    if-eqz v43, :cond_2f

    .line 293
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lgnu/kawa/functions/LispChoiceFormat;->testBoolean:Z

    .line 294
    :cond_2f
    if-eqz v42, :cond_30

    .line 295
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lgnu/kawa/functions/LispChoiceFormat;->skipIfFalse:Z

    .line 296
    :cond_30
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    .line 297
    move-object/from16 v0, v45

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static/range {v47 .. v47}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v12

    move-object/from16 v0, v45

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static/range {v24 .. v24}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v12

    move-object/from16 v0, v45

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move/from16 v47, v44

    .line 301
    const/16 v24, 0x0

    .line 302
    goto/16 :goto_0

    .line 304
    .end local v18           #afmt:Lgnu/kawa/functions/LispChoiceFormat;
    :sswitch_e
    if-ltz v47, :cond_34

    .line 306
    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lgnu/kawa/functions/LispChoiceFormat;

    if-eqz v12, :cond_32

    .line 309
    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lgnu/kawa/functions/LispChoiceFormat;

    .line 310
    .restart local v18       #afmt:Lgnu/kawa/functions/LispChoiceFormat;
    if-eqz v43, :cond_31

    .line 311
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lgnu/kawa/functions/LispChoiceFormat;->lastIsDefault:Z

    .line 312
    :cond_31
    add-int/lit8 v12, v47, 0x3

    add-int v12, v12, v24

    move-object/from16 v0, v45

    move v1, v12

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v11

    .line 314
    .restart local v11       #fmt:Ljava/text/Format;
    move-object/from16 v0, v45

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    add-int/lit8 v24, v24, 0x1

    .line 316
    goto/16 :goto_0

    .line 318
    .end local v11           #fmt:Ljava/text/Format;
    .end local v18           #afmt:Lgnu/kawa/functions/LispChoiceFormat;
    :cond_32
    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lgnu/kawa/functions/LispPrettyFormat;

    if-eqz v12, :cond_34

    .line 321
    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lgnu/kawa/functions/LispPrettyFormat;

    .line 322
    .restart local v41       #pfmt:Lgnu/kawa/functions/LispPrettyFormat;
    if-eqz v42, :cond_33

    .line 323
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->perLine:Z

    .line 324
    :cond_33
    add-int/lit8 v12, v47, 0x3

    add-int v12, v12, v24

    move-object/from16 v0, v45

    move v1, v12

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v11

    .line 326
    .restart local v11       #fmt:Ljava/text/Format;
    move-object/from16 v0, v45

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    add-int/lit8 v24, v24, 0x1

    .line 328
    goto/16 :goto_0

    .line 332
    .end local v11           #fmt:Ljava/text/Format;
    .end local v41           #pfmt:Lgnu/kawa/functions/LispPrettyFormat;
    :cond_34
    new-instance v12, Ljava/text/ParseException;

    const-string v13, "saw ~; without matching ~[ or ~<"

    move-object v0, v12

    move-object v1, v13

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 334
    :sswitch_f
    if-ltz v47, :cond_35

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lgnu/kawa/functions/LispChoiceFormat;

    if-nez v12, :cond_36

    .line 337
    :cond_35
    new-instance v12, Ljava/text/ParseException;

    const-string v13, "saw ~] without matching ~["

    move-object v0, v12

    move-object v1, v13

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 338
    :cond_36
    add-int/lit8 v12, v47, 0x3

    add-int v12, v12, v24

    move-object/from16 v0, v45

    move v1, v12

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v11

    .line 339
    .restart local v11       #fmt:Ljava/text/Format;
    move-object/from16 v0, v45

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lgnu/kawa/functions/LispChoiceFormat;

    .line 341
    .restart local v18       #afmt:Lgnu/kawa/functions/LispChoiceFormat;
    add-int/lit8 v12, v47, 0x3

    invoke-virtual/range {v45 .. v45}, Ljava/util/Stack;->size()I

    move-result v13

    move-object/from16 v0, v45

    move v1, v12

    move v2, v13

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/LispFormat;->getFormats(Ljava/util/Vector;II)[Ljava/text/Format;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    .line 342
    add-int/lit8 v12, v47, 0x3

    move-object/from16 v0, v45

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    .line 343
    invoke-virtual/range {v45 .. v45}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/math/IntNum;

    invoke-virtual/range {p2 .. p2}, Lgnu/math/IntNum;->intValue()I

    move-result v24

    .line 344
    invoke-virtual/range {v45 .. v45}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/math/IntNum;

    invoke-virtual/range {p2 .. p2}, Lgnu/math/IntNum;->intValue()I

    move-result v47

    .line 345
    goto/16 :goto_0

    .line 347
    .end local v11           #fmt:Ljava/text/Format;
    .end local v18           #afmt:Lgnu/kawa/functions/LispChoiceFormat;
    :sswitch_10
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v38

    .line 348
    .local v38, param1:I
    add-int/lit8 v12, v44, 0x1

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v39

    .line 349
    .local v39, param2:I
    add-int/lit8 v12, v44, 0x2

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v40

    .line 350
    .local v40, param3:I
    new-instance v11, Lgnu/kawa/functions/LispEscapeFormat;

    move-object v0, v11

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/functions/LispEscapeFormat;-><init>(III)V

    .line 351
    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .line 353
    .end local v11           #fmt:Ljava/text/Format;
    .end local v38           #param1:I
    .end local v39           #param2:I
    .end local v40           #param3:I
    :sswitch_11
    if-eqz v42, :cond_37

    .line 354
    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    :cond_37
    if-nez v43, :cond_0

    .line 357
    :goto_13
    move/from16 v0, v30

    move/from16 v1, v33

    if-ge v0, v1, :cond_0

    .line 359
    add-int/lit8 v29, v30, 0x1

    .end local v30           #i:I
    .restart local v29       #i:I
    aget-char v22, p1, v30

    .line 360
    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-nez v12, :cond_45

    .line 362
    add-int/lit8 v29, v29, -0x1

    move/from16 v30, v29

    .line 363
    .end local v29           #i:I
    .restart local v30       #i:I
    goto/16 :goto_0

    .line 369
    :sswitch_12
    invoke-static {}, Lgnu/text/FlushFormat;->getInstance()Lgnu/text/FlushFormat;

    move-result-object v11

    .line 370
    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .line 372
    .end local v11           #fmt:Ljava/text/Format;
    :sswitch_13
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v38

    .line 373
    .restart local v38       #param1:I
    add-int/lit8 v12, v44, 0x1

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v39

    .line 374
    .restart local v39       #param2:I
    add-int/lit8 v12, v44, 0x2

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v40

    .line 375
    .restart local v40       #param3:I
    new-instance v11, Lgnu/kawa/functions/LispTabulateFormat;

    move-object v0, v11

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    move/from16 v4, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/kawa/functions/LispTabulateFormat;-><init>(IIIZ)V

    .line 376
    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .line 378
    .end local v11           #fmt:Ljava/text/Format;
    .end local v38           #param1:I
    .end local v39           #param2:I
    .end local v40           #param3:I
    :sswitch_14
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v38

    .line 379
    .restart local v38       #param1:I
    new-instance v11, Lgnu/kawa/functions/LispFreshlineFormat;

    move-object v0, v11

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lgnu/kawa/functions/LispFreshlineFormat;-><init>(I)V

    .line 380
    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .line 382
    .end local v11           #fmt:Ljava/text/Format;
    .end local v38           #param1:I
    :sswitch_15
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v38

    .line 383
    .restart local v38       #param1:I
    const/high16 v12, -0x4000

    move/from16 v0, v38

    move v1, v12

    if-ne v0, v1, :cond_38

    .line 384
    const/16 v38, 0x0

    .line 385
    :cond_38
    move/from16 v0, v38

    move/from16 v1, v43

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispIndentFormat;->getInstance(IZ)Lgnu/kawa/functions/LispIndentFormat;

    move-result-object v11

    .line 386
    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .line 388
    .end local v11           #fmt:Ljava/text/Format;
    .end local v38           #param1:I
    :sswitch_16
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v38

    .line 389
    .restart local v38       #param1:I
    const/high16 v12, -0x4000

    move/from16 v0, v38

    move v1, v12

    if-ne v0, v1, :cond_39

    .line 390
    const/16 v38, 0x1

    .line 391
    :cond_39
    if-eqz v43, :cond_3a

    if-eqz v42, :cond_3a

    const/16 v12, 0xa

    move/from16 v23, v12

    .line 393
    .restart local v23       #charVal:I
    :goto_14
    if-eqz v42, :cond_3b

    if-eqz v43, :cond_3b

    const/16 v31, 0x52

    .line 397
    .local v31, kind:I
    :goto_15
    move/from16 v0, v38

    move/from16 v1, v31

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispNewlineFormat;->getInstance(II)Lgnu/kawa/functions/LispNewlineFormat;

    move-result-object v11

    .line 398
    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .line 391
    .end local v11           #fmt:Ljava/text/Format;
    .end local v23           #charVal:I
    .end local v31           #kind:I
    :cond_3a
    const/16 v12, 0x20

    move/from16 v23, v12

    goto :goto_14

    .line 394
    .restart local v23       #charVal:I
    :cond_3b
    if-eqz v42, :cond_3c

    const/16 v31, 0x4d

    .restart local v31       #kind:I
    goto :goto_15

    .line 395
    .end local v31           #kind:I
    :cond_3c
    if-eqz v43, :cond_3d

    const/16 v31, 0x46

    .restart local v31       #kind:I
    goto :goto_15

    .line 396
    .end local v31           #kind:I
    :cond_3d
    const/16 v31, 0x4e

    .restart local v31       #kind:I
    goto :goto_15

    .line 400
    .end local v23           #charVal:I
    .end local v31           #kind:I
    .end local v38           #param1:I
    :sswitch_17
    if-nez v37, :cond_3e

    .line 402
    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 407
    :cond_3e
    :sswitch_18
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v25

    .line 408
    .local v25, count:I
    const/high16 v12, -0x4000

    move/from16 v0, v25

    move v1, v12

    if-ne v0, v1, :cond_3f

    .line 409
    const/16 v25, 0x1

    .line 411
    :cond_3f
    add-int/lit8 v12, v44, 0x1

    move-object/from16 v0, v45

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v23

    .line 412
    .restart local v23       #charVal:I
    const/high16 v12, -0x4000

    move/from16 v0, v23

    move v1, v12

    if-ne v0, v1, :cond_40

    .line 413
    const/16 v12, 0x7c

    move/from16 v0, v22

    move v1, v12

    if-ne v0, v1, :cond_41

    const/16 v12, 0xc

    move/from16 v23, v12

    .line 414
    :cond_40
    :goto_16
    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    move v2, v12

    move v3, v13

    invoke-static {v0, v1, v2, v3}, Lgnu/kawa/functions/LispCharacterFormat;->getInstance(IIZZ)Lgnu/kawa/functions/LispCharacterFormat;

    move-result-object v11

    .line 416
    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .line 413
    .end local v11           #fmt:Ljava/text/Format;
    :cond_41
    const/16 v12, 0x7e

    move/from16 v23, v12

    goto :goto_16

    .line 418
    .end local v23           #charVal:I
    .end local v25           #count:I
    :sswitch_19
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v25

    .line 419
    .restart local v25       #count:I
    const/high16 v12, -0x4000

    move/from16 v0, v25

    move v1, v12

    if-ne v0, v1, :cond_42

    .line 420
    const/16 v25, 0x1

    .line 421
    :cond_42
    const/16 v12, 0x4c

    move/from16 v0, v25

    move v1, v12

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispNewlineFormat;->getInstance(II)Lgnu/kawa/functions/LispNewlineFormat;

    move-result-object v11

    .line 423
    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .line 432
    .end local v11           #fmt:Ljava/text/Format;
    .end local v22           #ch:C
    .end local v25           #count:I
    .end local v37           #numParams:I
    .end local v42           #seenAt:Z
    .end local v43           #seenColon:Z
    .end local v44           #speci:I
    :cond_43
    if-ltz v47, :cond_44

    .line 434
    new-instance v12, Ljava/text/ParseException;

    const-string v13, "missing ~] or ~}"

    move-object v0, v12

    move-object v1, v13

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 436
    :cond_44
    invoke-virtual/range {v45 .. v45}, Ljava/util/Stack;->size()I

    move-result v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/kawa/functions/LispFormat;->length:I

    .line 437
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/LispFormat;->length:I

    move v12, v0

    new-array v12, v12, [Ljava/text/Format;

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/functions/LispFormat;->formats:[Ljava/text/Format;

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/functions/LispFormat;->formats:[Ljava/text/Format;

    move-object v12, v0

    move-object/from16 v0, v45

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Stack;->copyInto([Ljava/lang/Object;)V

    .line 439
    return-void

    .end local v30           #i:I
    .restart local v22       #ch:C
    .restart local v29       #i:I
    .restart local v37       #numParams:I
    .restart local v42       #seenAt:Z
    .restart local v43       #seenColon:Z
    .restart local v44       #speci:I
    :cond_45
    move/from16 v30, v29

    .end local v29           #i:I
    .restart local v30       #i:I
    goto/16 :goto_13

    .restart local v28       #fmt:Ljava/text/Format;
    :cond_46
    move-object/from16 v11, v28

    .end local v28           #fmt:Ljava/text/Format;
    .restart local v11       #fmt:Ljava/text/Format;
    goto/16 :goto_c

    .end local v11           #fmt:Ljava/text/Format;
    .end local v37           #numParams:I
    .end local v42           #seenAt:Z
    .end local v43           #seenColon:Z
    :cond_47
    move/from16 v29, v30

    .end local v30           #i:I
    .restart local v29       #i:I
    goto/16 :goto_3

    .end local v29           #i:I
    .restart local v30       #i:I
    .restart local v35       #neg:Z
    :cond_48
    move/from16 v29, v30

    .end local v30           #i:I
    .restart local v29       #i:I
    goto/16 :goto_7

    .line 110
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_11
        0x21 -> :sswitch_12
        0x24 -> :sswitch_2
        0x25 -> :sswitch_19
        0x26 -> :sswitch_14
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x2a -> :sswitch_5
        0x3b -> :sswitch_e
        0x3c -> :sswitch_b
        0x3e -> :sswitch_c
        0x3f -> :sswitch_8
        0x41 -> :sswitch_3
        0x42 -> :sswitch_0
        0x43 -> :sswitch_4
        0x44 -> :sswitch_0
        0x45 -> :sswitch_2
        0x46 -> :sswitch_2
        0x47 -> :sswitch_2
        0x49 -> :sswitch_15
        0x4f -> :sswitch_0
        0x50 -> :sswitch_1
        0x52 -> :sswitch_0
        0x53 -> :sswitch_3
        0x54 -> :sswitch_13
        0x57 -> :sswitch_3
        0x58 -> :sswitch_0
        0x59 -> :sswitch_3
        0x5b -> :sswitch_d
        0x5d -> :sswitch_f
        0x5e -> :sswitch_10
        0x5f -> :sswitch_16
        0x7b -> :sswitch_9
        0x7c -> :sswitch_18
        0x7d -> :sswitch_a
        0x7e -> :sswitch_17
    .end sparse-switch
.end method

.method public static asArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .parameter "arg"

    .prologue
    const/4 v9, 0x0

    .line 535
    instance-of v8, p0, [Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 536
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v8, p0

    .line 557
    :goto_0
    return-object v8

    .line 537
    .restart local p0
    :cond_0
    instance-of v8, p0, Lgnu/lists/Sequence;

    if-nez v8, :cond_1

    move-object v8, v9

    .line 538
    goto :goto_0

    .line 539
    :cond_1
    move-object v0, p0

    check-cast v0, Lgnu/lists/Sequence;

    move-object v8, v0

    invoke-interface {v8}, Lgnu/lists/Sequence;->size()I

    move-result v2

    .line 540
    .local v2, count:I
    new-array v1, v2, [Ljava/lang/Object;

    .line 541
    .local v1, arr:[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 542
    .local v3, i:I
    :goto_1
    instance-of v8, p0, Lgnu/lists/Pair;

    if-eqz v8, :cond_2

    .line 544
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    move-object v6, v0

    .line 545
    .local v6, pair:Lgnu/lists/Pair;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v3

    .line 546
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    move v3, v4

    .line 547
    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 548
    .end local v6           #pair:Lgnu/lists/Pair;
    :cond_2
    if-ge v3, v2, :cond_4

    .line 550
    instance-of v8, p0, Lgnu/lists/Sequence;

    if-nez v8, :cond_3

    move-object v8, v9

    .line 551
    goto :goto_0

    .line 552
    :cond_3
    move v5, v3

    .line 553
    .local v5, npairs:I
    move-object v0, p0

    check-cast v0, Lgnu/lists/Sequence;

    move-object v7, v0

    .line 554
    .local v7, seq:Lgnu/lists/Sequence;
    :goto_2
    if-ge v3, v2, :cond_4

    .line 555
    add-int v8, v5, v3

    invoke-interface {v7, v8}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v3

    .line 554
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v5           #npairs:I
    .end local v7           #seq:Lgnu/lists/Sequence;
    :cond_4
    move-object v8, v1

    .line 557
    goto :goto_0
.end method

.method static getFormats(Ljava/util/Vector;II)[Ljava/text/Format;
    .locals 4
    .parameter "vector"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 443
    sub-int v2, p2, p1

    new-array v0, v2, [Ljava/text/Format;

    .line 444
    .local v0, f:[Ljava/text/Format;
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 445
    sub-int v3, v1, p1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    aput-object v2, v0, v3

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_0
    return-object v0
.end method

.method public static getParam(Ljava/util/Vector;I)I
    .locals 3
    .parameter "vec"
    .parameter "index"

    .prologue
    const/high16 v2, -0x4000

    .line 519
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    move v1, v2

    .line 528
    :goto_0
    return v1

    .line 521
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 522
    .local v0, arg:Ljava/lang/Object;
    const-string v1, "<from list>"

    if-ne v0, v1, :cond_1

    .line 523
    const/high16 v1, -0x6000

    goto :goto_0

    .line 524
    :cond_1
    const-string v1, "<from count>"

    if-ne v0, v1, :cond_2

    .line 525
    const/high16 v1, -0x5000

    goto :goto_0

    .line 526
    :cond_2
    const-string v1, "<unspecified>"

    if-ne v0, v1, :cond_3

    move v1, v2

    .line 527
    goto :goto_0

    .line 528
    :cond_3
    invoke-static {v0, v2}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/lang/Object;I)I

    move-result v1

    goto :goto_0
.end method

.method static popFormats(Ljava/util/Vector;II)Ljava/text/Format;
    .locals 2
    .parameter "vector"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 452
    add-int/lit8 v1, p1, 0x1

    if-ne p2, v1, :cond_0

    .line 453
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    .line 456
    .local v0, f:Ljava/text/Format;
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Vector;->setSize(I)V

    .line 457
    return-object v0

    .line 455
    .end local v0           #f:Ljava/text/Format;
    :cond_0
    new-instance v0, Lgnu/text/CompoundFormat;

    invoke-static {p0, p1, p2}, Lgnu/kawa/functions/LispFormat;->getFormats(Ljava/util/Vector;II)[Ljava/text/Format;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/text/CompoundFormat;-><init>([Ljava/text/Format;)V

    .restart local v0       #f:Ljava/text/Format;
    goto :goto_0
.end method
