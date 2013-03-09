.class public Lkawa/lang/SyntaxTemplate;
.super Ljava/lang/Object;
.source "SyntaxTemplate.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final BUILD_CONS:I = 0x1

.field static final BUILD_DOTS:I = 0x5

.field static final BUILD_LIST1:I = 0x8

.field static final BUILD_LITERAL:I = 0x4

.field static final BUILD_MISC:I = 0x0

.field static final BUILD_NIL:I = 0x10

.field static final BUILD_SYNTAX:I = 0x18

.field static final BUILD_VAR:I = 0x2

.field static final BUILD_VAR_CAR:I = 0x3

.field static final BUILD_VECTOR:I = 0x28

.field static final BUILD_WIDE:I = 0x7

.field static final dots3:Ljava/lang/String; = "..."


# instance fields
.field literal_values:[Ljava/lang/Object;

.field max_nesting:I

.field patternNesting:Ljava/lang/String;

.field template_program:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V
    .locals 9
    .parameter "template"
    .parameter "syntax"
    .parameter "tr"

    .prologue
    const/4 v4, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    if-eqz p3, :cond_0

    iget-object v0, p3, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 166
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    .local v3, program:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 169
    .local v5, literals_vector:Ljava/util/Vector;
    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    .local v6, seen:Ljava/util/IdentityHashMap;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, v4

    move-object v8, p3

    .line 173
    invoke-virtual/range {v0 .. v8}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 176
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 195
    return-void

    .line 164
    .end local v3           #program:Ljava/lang/StringBuffer;
    .end local v5           #literals_vector:Ljava/util/Vector;
    .end local v6           #seen:Ljava/util/IdentityHashMap;
    :cond_1
    iget-object v0, p3, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v0, v0, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 0
    .parameter "patternNesting"
    .parameter "template_program"
    .parameter "literal_values"
    .parameter "max_nesting"

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 159
    iput p4, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    .line 160
    return-void
.end method

.method private get_count(Ljava/lang/Object;I[I)I
    .locals 4
    .parameter "var"
    .parameter "nesting"
    .parameter "indexes"

    .prologue
    .line 376
    const/4 v1, 0x0

    .local v1, level:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 377
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    aget v3, p3, v1

    aget-object p1, p1, v3

    .line 376
    .restart local p1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    :cond_0
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 379
    .local v2, var_array:[Ljava/lang/Object;
    array-length v3, v2

    return v3
.end method

.method static indexOf(Ljava/util/Vector;Ljava/lang/Object;)I
    .locals 3
    .parameter "vec"
    .parameter "elem"

    .prologue
    .line 364
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 365
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 367
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    move v2, v0

    .line 370
    :goto_1
    return v2

    .line 365
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method public convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I
    .locals 32
    .parameter "form"
    .parameter "syntax"
    .parameter "template_program"
    .parameter "nesting"
    .parameter "literals_vector"
    .parameter "seen"
    .parameter "isVector"
    .parameter "tr"

    .prologue
    .line 218
    :goto_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v3, v0

    if-eqz v3, :cond_0

    .line 220
    move-object/from16 v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 p2, v0

    .line 221
    invoke-interface/range {p2 .. p2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 224
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move v3, v0

    if-nez v3, :cond_1

    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/FVector;

    move v3, v0

    if-eqz v3, :cond_3

    .line 226
    :cond_1
    move-object/from16 v0, p6

    check-cast v0, Ljava/util/IdentityHashMap;

    move-object/from16 v30, v0

    .line 227
    .local v30, seen_map:Ljava/util/IdentityHashMap;
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    const-string v3, "self-referential (cyclic) syntax template"

    move-object/from16 v0, p8

    move-object v1, v3

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 231
    const/4 v3, -0x2

    .line 358
    .end local v30           #seen_map:Ljava/util/IdentityHashMap;
    .end local p1
    :goto_1
    return v3

    .line 233
    .restart local v30       #seen_map:Ljava/util/IdentityHashMap;
    .restart local p1
    :cond_2
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .end local v30           #seen_map:Ljava/util/IdentityHashMap;
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move v3, v0

    if-eqz v3, :cond_14

    .line 240
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v23, v0

    .line 241
    .local v23, pair:Lgnu/lists/Pair;
    const/16 v27, -0x2

    .line 242
    .local v27, ret_cdr:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    .line 243
    .local v29, save_pc:I
    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    .line 246
    .local v4, car:Ljava/lang/Object;
    const-string v3, "..."

    move-object/from16 v0, p8

    move-object v1, v4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 248
    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 249
    .local v14, cdr:Ljava/lang/Object;
    instance-of v3, v14, Lgnu/lists/Pair;

    if-eqz v3, :cond_8

    .line 251
    move-object v0, v14

    check-cast v0, Lgnu/lists/Pair;

    move-object v15, v0

    .line 252
    .local v15, cdr_pair:Lgnu/lists/Pair;
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "..."

    if-ne v3, v5, :cond_8

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v5, :cond_8

    .line 254
    const-string p1, "..."

    .line 347
    .end local v4           #car:Ljava/lang/Object;
    .end local v14           #cdr:Ljava/lang/Object;
    .end local v15           #cdr_pair:Lgnu/lists/Pair;
    .end local v23           #pair:Lgnu/lists/Pair;
    .end local v27           #ret_cdr:I
    .end local v29           #save_pc:I
    .end local p1
    :cond_4
    :goto_2
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v18

    .line 348
    .local v18, literals_index:I
    if-gez v18, :cond_5

    .line 350
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v18

    .line 351
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 353
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move v3, v0

    if-eqz v3, :cond_6

    .line 354
    invoke-virtual/range {p8 .. p8}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v3

    move-object/from16 v0, p8

    move-object/from16 v1, p1

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->noteAccess(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 355
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v3, v0

    if-nez v3, :cond_7

    const-string v3, "..."

    move-object/from16 v0, p1

    move-object v1, v3

    if-eq v0, v1, :cond_7

    .line 356
    const/16 v3, 0x18

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 357
    :cond_7
    mul-int/lit8 v3, v18, 0x8

    add-int/lit8 v3, v3, 0x4

    int-to-char v3, v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 358
    const-string v3, "..."

    move-object/from16 v0, p1

    move-object v1, v3

    if-ne v0, v1, :cond_1a

    const/4 v3, -0x1

    goto/16 :goto_1

    .line 260
    .end local v18           #literals_index:I
    .restart local v4       #car:Ljava/lang/Object;
    .restart local v23       #pair:Lgnu/lists/Pair;
    .restart local v27       #ret_cdr:I
    .restart local v29       #save_pc:I
    .restart local p1
    :cond_8
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v28

    .line 263
    .local v28, save_literals:I
    const/16 v3, 0x8

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 265
    const/16 v20, 0x0

    .line 266
    .local v20, num_dots3:I
    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    .line 267
    .local v25, rest:Ljava/lang/Object;
    :goto_3
    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/lists/Pair;

    move v3, v0

    if-eqz v3, :cond_9

    .line 269
    move-object/from16 v0, v25

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v22, v0

    .line 270
    .local v22, p:Lgnu/lists/Pair;
    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "..."

    move-object/from16 v0, p8

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 276
    .end local v22           #p:Lgnu/lists/Pair;
    :cond_9
    add-int v7, p4, v20

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v26

    .line 280
    .local v26, ret_car:I
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v25

    move-object v1, v3

    if-eq v0, v1, :cond_a

    .line 282
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int v3, v3, v29

    const/4 v4, 0x1

    sub-int v16, v3, v4

    .line 283
    .local v16, delta:I
    shl-int/lit8 v3, v16, 0x3

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    move-object/from16 v0, p3

    move/from16 v1, v29

    move v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .end local v4           #car:Ljava/lang/Object;
    move-object/from16 v5, p0

    move-object/from16 v6, v25

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    .line 285
    invoke-virtual/range {v5 .. v13}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v27

    .line 289
    .end local v16           #delta:I
    :cond_a
    if-lez v20, :cond_e

    .line 291
    if-gez v26, :cond_b

    .line 292
    const-string v3, "... follows template with no suitably-nested pattern variable"

    move-object/from16 v0, p8

    move-object v1, v3

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 293
    :cond_b
    move/from16 v17, v20

    .local v17, i:I
    :cond_c
    :goto_4
    add-int/lit8 v17, v17, -0x1

    if-ltz v17, :cond_e

    .line 295
    shl-int/lit8 v3, v26, 0x3

    add-int/lit8 v3, v3, 0x5

    move v0, v3

    int-to-char v0, v0

    move/from16 v21, v0

    .line 296
    .local v21, op:C
    add-int v3, v29, v17

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p3

    move v1, v3

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 297
    add-int v19, p4, v20

    .line 298
    .local v19, n:I
    move-object/from16 v0, p0

    iget v0, v0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    move v3, v0

    move/from16 v0, v19

    move v1, v3

    if-lt v0, v1, :cond_c

    .line 299
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    goto :goto_4

    .line 272
    .end local v17           #i:I
    .end local v19           #n:I
    .end local v21           #op:C
    .end local v26           #ret_car:I
    .restart local v4       #car:Ljava/lang/Object;
    .restart local v22       #p:Lgnu/lists/Pair;
    :cond_d
    add-int/lit8 v20, v20, 0x1

    .line 273
    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    .line 274
    const/4 v3, 0x5

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 302
    .end local v4           #car:Ljava/lang/Object;
    .end local v22           #p:Lgnu/lists/Pair;
    .restart local v26       #ret_car:I
    :cond_e
    if-ltz v26, :cond_f

    move/from16 v3, v26

    .line 303
    goto/16 :goto_1

    .line 304
    :cond_f
    if-ltz v27, :cond_10

    move/from16 v3, v27

    .line 305
    goto/16 :goto_1

    .line 306
    :cond_10
    const/4 v3, -0x1

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_11

    const/4 v3, -0x1

    move/from16 v0, v27

    move v1, v3

    if-ne v0, v1, :cond_12

    .line 307
    :cond_11
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 308
    :cond_12
    if-eqz p7, :cond_13

    .line 309
    const/4 v3, -0x2

    goto/16 :goto_1

    .line 313
    :cond_13
    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 314
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_2

    .line 316
    .end local v20           #num_dots3:I
    .end local v23           #pair:Lgnu/lists/Pair;
    .end local v25           #rest:Ljava/lang/Object;
    .end local v26           #ret_car:I
    .end local v27           #ret_cdr:I
    .end local v28           #save_literals:I
    .end local v29           #save_pc:I
    :cond_14
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/FVector;

    move v3, v0

    if-eqz v3, :cond_15

    .line 318
    const/16 v3, 0x28

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 319
    check-cast p1, Lgnu/lists/FVector;

    .end local p1
    invoke-static/range {p1 .. p1}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v6

    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v13, p8

    invoke-virtual/range {v5 .. v13}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v3

    goto/16 :goto_1

    .line 323
    .restart local p1
    :cond_15
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, p1

    move-object v1, v3

    if-ne v0, v1, :cond_16

    .line 325
    const/16 v3, 0x10

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 326
    const/4 v3, -0x2

    goto/16 :goto_1

    .line 328
    :cond_16
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move v3, v0

    if-eqz v3, :cond_4

    if-eqz p8, :cond_4

    move-object/from16 v0, p8

    iget-object v0, v0, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    move-object v3, v0

    if-eqz v3, :cond_4

    .line 331
    move-object/from16 v0, p8

    iget-object v0, v0, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v24

    .line 332
    .local v24, pattern_var_num:I
    if-ltz v24, :cond_4

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    .line 335
    .local v31, var_nesting:I
    and-int/lit8 v3, v31, 0x1

    if-eqz v3, :cond_18

    const/4 v3, 0x3

    move/from16 v21, v3

    .line 336
    .local v21, op:I
    :goto_5
    shr-int/lit8 v31, v31, 0x1

    .line 340
    move/from16 v0, v31

    move/from16 v1, p4

    if-le v0, v1, :cond_17

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inconsistent ... nesting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p8

    move-object v1, v3

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 342
    :cond_17
    mul-int/lit8 v3, v24, 0x8

    add-int v3, v3, v21

    int-to-char v3, v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 343
    move/from16 v0, v31

    move/from16 v1, p4

    if-ne v0, v1, :cond_19

    move/from16 v3, v24

    goto/16 :goto_1

    .line 335
    .end local v21           #op:I
    :cond_18
    const/4 v3, 0x2

    move/from16 v21, v3

    goto :goto_5

    .line 343
    .restart local v21       #op:I
    :cond_19
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 358
    .end local v21           #op:I
    .end local v24           #pattern_var_num:I
    .end local v31           #var_nesting:I
    .end local p1
    .restart local v18       #literals_index:I
    :cond_1a
    const/4 v3, -0x2

    goto/16 :goto_1
.end method

.method execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 20
    .parameter "pc"
    .parameter "vars"
    .parameter "nesting"
    .parameter "indexes"
    .parameter "tr"
    .parameter "templateScope"

    .prologue
    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 508
    .local v12, ch:I
    :goto_0
    and-int/lit8 v4, v12, 0x7

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 509
    const/4 v4, 0x7

    sub-int v4, v12, v4

    shl-int/lit8 v4, v4, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    move-object v5, v0

    add-int/lit8 p1, p1, 0x1

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int v12, v4, v5

    goto :goto_0

    .line 510
    :cond_0
    const/16 v4, 0x8

    if-ne v12, v4, :cond_1

    .line 512
    add-int/lit8 v5, p1, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object v4

    .line 570
    :goto_1
    return-object v4

    .line 514
    :cond_1
    const/16 v4, 0x10

    if-ne v12, v4, :cond_2

    .line 515
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_1

    .line 516
    :cond_2
    const/16 v4, 0x18

    if-ne v12, v4, :cond_4

    .line 518
    add-int/lit8 v5, p1, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v18

    .line 519
    .local v18, v:Ljava/lang/Object;
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v18

    move-object v1, v4

    if-ne v0, v1, :cond_3

    move-object/from16 v4, v18

    goto :goto_1

    :cond_3
    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 521
    .end local v18           #v:Ljava/lang/Object;
    :cond_4
    and-int/lit8 v4, v12, 0x7

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 523
    const/4 v15, 0x0

    .line 524
    .local v15, p:Lgnu/lists/Pair;
    const/16 v17, 0x0

    .local v17, result:Ljava/lang/Object;
    move-object/from16 v4, v17

    .line 527
    .end local v17           #result:Ljava/lang/Object;
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 528
    invoke-virtual/range {p0 .. p6}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object v16

    .line 530
    .local v16, q:Lgnu/lists/LList;
    if-nez v15, :cond_6

    .line 531
    move-object/from16 v17, v16

    .local v17, result:Lgnu/lists/LList;
    move-object/from16 v4, v17

    .line 534
    .end local v16           #q:Lgnu/lists/LList;
    .end local v17           #result:Lgnu/lists/LList;
    :goto_2
    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/lists/Pair;

    move v5, v0

    if-eqz v5, :cond_7

    .line 536
    move-object/from16 v0, v16

    check-cast v0, Lgnu/lists/Pair;

    move-object v15, v0

    .line 537
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v16

    .local v16, q:Ljava/lang/Object;
    goto :goto_2

    .line 533
    .local v16, q:Lgnu/lists/LList;
    :cond_6
    invoke-virtual/range {v15 .. v16}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    goto :goto_2

    .line 539
    .end local v16           #q:Lgnu/lists/LList;
    :cond_7
    shr-int/lit8 v5, v12, 0x3

    add-int p1, p1, v5

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 541
    and-int/lit8 v5, v12, 0x7

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    .line 544
    invoke-virtual/range {p0 .. p6}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v11

    .line 545
    .local v11, cdr:Ljava/lang/Object;
    if-nez v15, :cond_8

    .line 546
    move-object/from16 v17, v11

    .local v17, result:Ljava/lang/Object;
    move-object/from16 v4, v17

    goto :goto_1

    .line 548
    .end local v17           #result:Ljava/lang/Object;
    :cond_8
    invoke-virtual {v15, v11}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    goto :goto_1

    .line 551
    .end local v11           #cdr:Ljava/lang/Object;
    .end local v15           #p:Lgnu/lists/Pair;
    :cond_9
    const/16 v4, 0x28

    if-ne v12, v4, :cond_a

    .line 553
    add-int/lit8 v5, p1, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v13

    .line 554
    .local v13, el:Ljava/lang/Object;
    new-instance v4, Lgnu/lists/FVector;

    check-cast v13, Lgnu/lists/LList;

    .end local v13           #el:Ljava/lang/Object;
    invoke-direct {v4, v13}, Lgnu/lists/FVector;-><init>(Ljava/util/List;)V

    goto/16 :goto_1

    .line 556
    :cond_a
    and-int/lit8 v4, v12, 0x7

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    .line 558
    shr-int/lit8 v14, v12, 0x3

    .line 563
    .local v14, lit_no:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    move-object v4, v0

    aget-object v4, v4, v14

    goto/16 :goto_1

    .line 565
    .end local v14           #lit_no:I
    :cond_b
    and-int/lit8 v4, v12, 0x6

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    .line 567
    shr-int/lit8 v4, v12, 0x3

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/SyntaxTemplate;->get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v19

    .line 568
    .local v19, var:Ljava/lang/Object;
    and-int/lit8 v4, v12, 0x7

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    .line 569
    check-cast v19, Lgnu/lists/Pair;

    .end local v19           #var:Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #var:Ljava/lang/Object;
    :cond_c
    move-object/from16 v4, v19

    .line 570
    goto/16 :goto_1

    .line 573
    .end local v19           #var:Ljava/lang/Object;
    :cond_d
    new-instance v4, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown template code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 8
    .parameter "vars"
    .parameter "templateScope"

    .prologue
    const/4 v1, 0x0

    .line 408
    iget v0, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    new-array v4, v0, [I

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v5

    check-cast v5, Lkawa/lang/Translator;

    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v7

    .line 425
    .local v7, result:Ljava/lang/Object;
    return-object v7
.end method

.method public execute([Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 7
    .parameter "vars"
    .parameter "tr"
    .parameter "templateScope"

    .prologue
    const/4 v1, 0x0

    .line 431
    iget v0, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    new-array v4, v0, [I

    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;
    .locals 21
    .parameter "pc"
    .parameter "vars"
    .parameter "nesting"
    .parameter "indexes"
    .parameter "tr"
    .parameter "templateScope"

    .prologue
    .line 452
    move/from16 v5, p1

    .line 453
    .local v5, pc0:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 454
    .local v11, ch:I
    :goto_0
    and-int/lit8 v4, v11, 0x7

    const/4 v6, 0x7

    if-ne v4, v6, :cond_0

    .line 455
    const/4 v4, 0x7

    sub-int v4, v11, v4

    shl-int/lit8 v4, v4, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    move-object v6, v0

    add-int/lit8 p1, p1, 0x1

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    or-int v11, v4, v6

    goto :goto_0

    .line 456
    :cond_0
    and-int/lit8 v4, v11, 0x7

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    .line 458
    shr-int/lit8 v4, v11, 0x3

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/SyntaxTemplate;->get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/lists/Pair;

    .line 459
    .local v16, p:Lgnu/lists/Pair;
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .end local v5           #pc0:I
    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    .line 489
    .end local v16           #p:Lgnu/lists/Pair;
    :goto_1
    return-object v4

    .line 461
    .restart local v5       #pc0:I
    :cond_1
    and-int/lit8 v4, v11, 0x7

    const/4 v6, 0x5

    if-ne v4, v6, :cond_5

    .line 463
    shr-int/lit8 v20, v11, 0x3

    .line 464
    .local v20, var_num:I
    aget-object v19, p2, v20

    .line 465
    .local v19, var:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxTemplate;->get_count(Ljava/lang/Object;I[I)I

    move-result v12

    .line 466
    .local v12, count:I
    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 467
    .local v17, result:Lgnu/lists/LList;
    const/4 v14, 0x0

    .line 468
    .local v14, last:Lgnu/lists/Pair;
    add-int/lit8 p1, p1, 0x1

    .line 469
    const/4 v13, 0x0

    .end local v5           #pc0:I
    .local v13, j:I
    :goto_2
    if-ge v13, v12, :cond_4

    .line 471
    aput v13, p4, p3

    .line 472
    add-int/lit8 v7, p3, 0x1

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object v15

    .line 474
    .local v15, list:Lgnu/lists/LList;
    if-nez v14, :cond_2

    .line 475
    move-object/from16 v17, v15

    .line 480
    :goto_3
    instance-of v4, v15, Lgnu/lists/Pair;

    if-eqz v4, :cond_3

    .line 482
    move-object v0, v15

    check-cast v0, Lgnu/lists/Pair;

    move-object v14, v0

    .line 483
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #list:Lgnu/lists/LList;
    check-cast v15, Lgnu/lists/LList;

    .restart local v15       #list:Lgnu/lists/LList;
    goto :goto_3

    .line 477
    :cond_2
    invoke-virtual {v14, v15}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    goto :goto_3

    .line 469
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .end local v15           #list:Lgnu/lists/LList;
    :cond_4
    move-object/from16 v4, v17

    .line 486
    goto :goto_1

    .end local v12           #count:I
    .end local v13           #j:I
    .end local v14           #last:Lgnu/lists/Pair;
    .end local v17           #result:Lgnu/lists/LList;
    .end local v19           #var:Ljava/lang/Object;
    .end local v20           #var_num:I
    .restart local v5       #pc0:I
    :cond_5
    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 488
    invoke-virtual/range {v4 .. v10}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v18

    .line 489
    .local v18, v:Ljava/lang/Object;
    new-instance v4, Lgnu/lists/Pair;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .end local v5           #pc0:I
    move-object v0, v4

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;
    .locals 4
    .parameter "var_num"
    .parameter "vars"
    .parameter "indexes"

    .prologue
    .line 436
    aget-object v1, p2, p1

    .line 437
    .local v1, var:Ljava/lang/Object;
    iget-object v3, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 439
    iget-object v3, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shr-int/lit8 v2, v3, 0x1

    .line 440
    .local v2, var_nesting:I
    const/4 v0, 0x0

    .local v0, level:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 441
    check-cast v1, [Ljava/lang/Object;

    .end local v1           #var:Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    aget v3, p3, v0

    aget-object v1, v1, v3

    .line 440
    .restart local v1       #var:Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    .end local v0           #level:I
    .end local v2           #var_nesting:I
    :cond_0
    return-object v1
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
    .line 590
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 591
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 592
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 593
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    .line 594
    return-void
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
    .line 581
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 583
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 584
    iget v0, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 585
    return-void
.end method
