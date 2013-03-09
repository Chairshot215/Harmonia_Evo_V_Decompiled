.class final Ljava/lang/StringToReal;
.super Ljava/lang/Object;
.source "StringToReal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StringToReal$1;,
        Ljava/lang/StringToReal$StringExponentPair;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;
    .locals 22

    new-instance v16, Ljava/lang/StringToReal$StringExponentPair;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringToReal$StringExponentPair;-><init>(Ljava/lang/StringToReal$1;)V

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    :cond_0
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    add-int/lit8 v18, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v18, 0x44

    move/from16 v0, v18

    if-eq v5, v0, :cond_1

    const/16 v18, 0x64

    move/from16 v0, v18

    if-eq v5, v0, :cond_1

    const/16 v18, 0x46

    move/from16 v0, v18

    if-eq v5, v0, :cond_1

    const/16 v18, 0x66

    move/from16 v0, v18

    if-ne v5, v0, :cond_3

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    :cond_3
    const/16 v18, 0x45

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    const/16 v19, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_e

    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    :cond_4
    add-int/lit8 v11, v9, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v18, 0x2b

    move/from16 v0, v18

    if-eq v13, v0, :cond_5

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v13, v0, :cond_6

    :cond_5
    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v13, v0, :cond_7

    const/4 v15, 0x1

    :goto_1
    add-int/lit8 v11, v11, 0x1

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    :cond_7
    const/4 v15, 0x0

    goto :goto_1

    :cond_8
    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_b

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v6, v0, :cond_9

    const/16 v18, 0x39

    move/from16 v0, v18

    if-le v6, v0, :cond_a

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_b
    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    if-eqz v15, :cond_c

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_3
    if-nez p1, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    :catch_0
    move-exception v10

    if-eqz v15, :cond_d

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    :goto_4
    return-object v16

    :cond_d
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    goto :goto_4

    :cond_e
    move/from16 v9, p1

    goto :goto_3

    :cond_f
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v5, v0, :cond_11

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 p1, p1, -0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    :cond_10
    :goto_5
    if-nez p1, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    :cond_11
    const/16 v18, 0x2b

    move/from16 v0, v18

    if-ne v5, v0, :cond_10

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    :cond_12
    const/16 v18, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v8, v0, :cond_13

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    sub-int v20, v9, v8

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_14
    move/from16 v9, p1

    :goto_7
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v9, v0, :cond_15

    add-int/lit8 v18, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    :cond_15
    const/16 v17, 0x0

    :goto_8
    add-int/lit8 v18, v9, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    :cond_16
    move/from16 v0, p1

    if-ne v9, v0, :cond_17

    if-eqz v17, :cond_18

    :cond_17
    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    sub-int v20, p1, v9

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_18
    const/16 v3, -0x167

    const/16 v4, 0x34

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v18, 0x34

    move/from16 v0, p1

    move/from16 v1, v18

    if-le v0, v1, :cond_19

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x167

    cmp-long v18, v18, v20

    if-gez v18, :cond_19

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    rsub-int v0, v0, -0x167

    move/from16 v18, v0

    add-int/lit8 v19, p1, -0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/16 v18, 0x0

    sub-int v19, p1, v7

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    :cond_19
    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x400

    cmp-long v18, v18, v20

    if-gez v18, :cond_1a

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x400

    cmp-long v18, v18, v20

    if-lez v18, :cond_1b

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    goto/16 :goto_4

    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    iput-object v0, v1, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method private static invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;
    .locals 3

    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "double"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "float"

    goto :goto_0
.end method

.method private static native parseDblImpl(Ljava/lang/String;I)D
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 10

    const/4 v6, -0x1

    const/4 v9, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v9}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    :cond_0
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x79

    if-eq v1, v5, :cond_1

    const/16 v5, 0x4e

    if-ne v1, v5, :cond_3

    :cond_1
    invoke-static {p0, v9}, Ljava/lang/StringToReal;->parseName(Ljava/lang/String;Z)F

    move-result v5

    float-to-double v3, v5

    :cond_2
    :goto_0
    return-wide v3

    :cond_3
    const-string v5, "0x"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_4

    const-string v5, "0X"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_5

    :cond_4
    invoke-static {p0}, Ljava/lang/HexStringParser;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    goto :goto_0

    :cond_5
    invoke-static {p0, v2, v9}, Ljava/lang/StringToReal;->initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;

    move-result-object v0

    iget-boolean v5, v0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    if-nez v5, :cond_6

    iget-boolean v5, v0, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    if-eqz v5, :cond_7

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringToReal$StringExponentPair;->specialValue()F

    move-result v5

    float-to-double v3, v5

    goto :goto_0

    :cond_7
    iget-object v5, v0, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    iget-wide v6, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    long-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/StringToReal;->parseDblImpl(Ljava/lang/String;I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    invoke-static {p0, v9}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    :cond_8
    iget-boolean v5, v0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    if-eqz v5, :cond_2

    neg-double v3, v3

    goto :goto_0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v7}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x79

    if-eq v1, v4, :cond_1

    const/16 v4, 0x4e

    if-ne v1, v4, :cond_3

    :cond_1
    invoke-static {p0, v7}, Ljava/lang/StringToReal;->parseName(Ljava/lang/String;Z)F

    move-result v3

    :cond_2
    :goto_0
    return v3

    :cond_3
    const-string v4, "0x"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_4

    const-string v4, "0X"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_5

    :cond_4
    invoke-static {p0}, Ljava/lang/HexStringParser;->parseFloat(Ljava/lang/String;)F

    move-result v3

    goto :goto_0

    :cond_5
    invoke-static {p0, v2, v7}, Ljava/lang/StringToReal;->initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;

    move-result-object v0

    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    if-nez v4, :cond_6

    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    if-eqz v4, :cond_7

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringToReal$StringExponentPair;->specialValue()F

    move-result v3

    goto :goto_0

    :cond_7
    iget-object v4, v0, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    iget-wide v5, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    long-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/StringToReal;->parseFltImpl(Ljava/lang/String;I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    if-ne v4, v8, :cond_8

    invoke-static {p0, v7}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    :cond_8
    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    if-eqz v4, :cond_2

    neg-float v3, v3

    goto :goto_0
.end method

.method private static native parseFltImpl(Ljava/lang/String;I)F
.end method

.method private static parseName(Ljava/lang/String;Z)F
    .locals 10

    const/16 v5, 0x8

    const/4 v9, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v0, 0x2d

    if-ne v6, v0, :cond_1

    const/4 v8, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, -0x1

    :cond_0
    :goto_0
    if-ne v7, v5, :cond_3

    const-string v3, "Infinity"

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v8, :cond_2

    const/high16 v0, -0x80

    :goto_1
    return v0

    :cond_1
    const/16 v0, 0x2b

    if-ne v6, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x7f80

    goto :goto_1

    :cond_3
    if-ne v7, v9, :cond_4

    const-string v3, "NaN"

    move-object v0, p0

    move v4, v1

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x7fc0

    goto :goto_1

    :cond_4
    invoke-static {p0, p1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0
.end method
