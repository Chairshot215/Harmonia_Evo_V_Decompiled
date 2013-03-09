.class public final Lcom/coremobility/e/d;
.super Lcom/coremobility/j/m;


# instance fields
.field a:Lcom/coremobility/integration/file/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/j/m;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/e/d;->a:Lcom/coremobility/integration/file/a;

    return-void
.end method

.method public static a(Lcom/coremobility/e/am;)I
    .locals 15

    iget-object v0, p0, Lcom/coremobility/e/am;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v0, p0, Lcom/coremobility/e/am;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/am;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/coremobility/e/am;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v8, v1, 0x1

    iget v1, p0, Lcom/coremobility/e/am;->b:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coremobility/e/am;->b:I

    invoke-static {v1}, Lcom/coremobility/e/d;->h(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    const-string v2, "date-created"

    iget v3, p0, Lcom/coremobility/e/am;->c:I

    invoke-static {v2, v3}, Lcom/coremobility/e/d;->c(Ljava/lang/String;I)I

    move-result v9

    const-string v2, "flags"

    iget v3, p0, Lcom/coremobility/e/am;->d:I

    invoke-static {v2, v3}, Lcom/coremobility/e/d;->c(Ljava/lang/String;I)I

    move-result v10

    iget-object v2, p0, Lcom/coremobility/e/am;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/coremobility/e/d;->c(Ljava/lang/String;)I

    move-result v11

    if-eqz v0, :cond_2

    const-string v2, "from-name"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    :goto_2
    iget-object v2, p0, Lcom/coremobility/e/am;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/coremobility/e/d;->d(Ljava/lang/String;)I

    move-result v12

    iget-object v2, p0, Lcom/coremobility/e/am;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/coremobility/e/d;->d(Ljava/lang/String;)I

    move-result v13

    iget-object v2, p0, Lcom/coremobility/e/am;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/coremobility/e/d;->d(Ljava/lang/String;)I

    move-result v14

    iget v2, p0, Lcom/coremobility/e/am;->j:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/coremobility/e/am;->j:I

    invoke-static {v2}, Lcom/coremobility/e/d;->i(I)I

    move-result v2

    :goto_3
    iget v3, p0, Lcom/coremobility/e/am;->k:I

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/coremobility/e/am;->k:I

    invoke-static {v3}, Lcom/coremobility/e/d;->i(I)I

    move-result v3

    :goto_4
    iget v4, p0, Lcom/coremobility/e/am;->l:I

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    :goto_5
    iget v5, p0, Lcom/coremobility/e/am;->m:I

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    :goto_6
    iget v6, p0, Lcom/coremobility/e/am;->n:I

    if-eqz v6, :cond_7

    const/4 v6, 0x2

    :goto_7
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v1, v8

    add-int/2addr v1, v9

    add-int/2addr v1, v10

    add-int/2addr v1, v11

    add-int/2addr v0, v1

    add-int/2addr v0, v12

    add-int/2addr v0, v13

    add-int/2addr v0, v14

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    add-int/2addr v0, v5

    add-int/2addr v0, v6

    add-int/2addr v0, v7

    return v0

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    goto :goto_7
.end method

.method public static a(Lcom/coremobility/e/ao;)I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/e/ao;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v0, p0, Lcom/coremobility/e/ao;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/e/ao;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    const-string v3, "date-notified"

    iget v4, p0, Lcom/coremobility/e/ao;->b:I

    invoke-static {v3, v4}, Lcom/coremobility/e/d;->c(Ljava/lang/String;I)I

    move-result v3

    if-eqz v0, :cond_2

    const-string v4, "retrieval-log"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget v4, p0, Lcom/coremobility/e/ao;->e:I

    if-eqz v4, :cond_0

    const/4 v1, 0x2

    :cond_0
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static a(Lcom/coremobility/e/at;)I
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/e/at;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/e/at;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coremobility/e/at;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/e/at;->l:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/e/at;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/e/at;->w:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/e/at;->w:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/e/at;->x:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/e/at;->x:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    :goto_3
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v18, v5, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coremobility/e/at;->b:I

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coremobility/e/at;->b:I

    invoke-static {v5}, Lcom/coremobility/e/d;->h(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    :goto_4
    const-string v6, "date-created"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/coremobility/e/at;->c:I

    invoke-static {v6, v7}, Lcom/coremobility/e/d;->c(Ljava/lang/String;I)I

    move-result v19

    const-string v6, "flags"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/coremobility/e/at;->d:I

    invoke-static {v6, v7}, Lcom/coremobility/e/d;->c(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/coremobility/e/at;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/coremobility/e/d;->c(Ljava/lang/String;)I

    move-result v21

    if-eqz v1, :cond_6

    const-string v6, "from-name"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/coremobility/e/at;->h:[Lcom/coremobility/e/ak;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/coremobility/e/at;->g:I

    if-eqz v10, :cond_0

    if-nez v11, :cond_7

    :cond_0
    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coremobility/e/at;->i:Ljava/lang/String;

    invoke-static {v7}, Lcom/coremobility/e/d;->d(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coremobility/e/at;->j:Ljava/lang/String;

    invoke-static {v7}, Lcom/coremobility/e/d;->d(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coremobility/e/at;->k:Ljava/lang/String;

    invoke-static {v7}, Lcom/coremobility/e/d;->d(Ljava/lang/String;)I

    move-result v24

    if-eqz v2, :cond_11

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget v7, v0, Lcom/coremobility/e/at;->m:I

    if-eqz v7, :cond_12

    const/4 v7, 0x2

    :goto_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/coremobility/e/at;->n:I

    if-eqz v8, :cond_13

    move-object/from16 v0, p0

    iget v8, v0, Lcom/coremobility/e/at;->n:I

    invoke-static {v8}, Lcom/coremobility/e/d;->i(I)I

    move-result v8

    :goto_9
    move-object/from16 v0, p0

    iget v9, v0, Lcom/coremobility/e/at;->o:I

    if-eqz v9, :cond_14

    move-object/from16 v0, p0

    iget v9, v0, Lcom/coremobility/e/at;->o:I

    invoke-static {v9}, Lcom/coremobility/e/d;->i(I)I

    move-result v9

    :goto_a
    move-object/from16 v0, p0

    iget v10, v0, Lcom/coremobility/e/at;->p:I

    if-eqz v10, :cond_15

    const/4 v10, 0x2

    :goto_b
    move-object/from16 v0, p0

    iget v11, v0, Lcom/coremobility/e/at;->q:I

    if-eqz v11, :cond_16

    const/4 v11, 0x2

    :goto_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/coremobility/e/at;->r:I

    if-eqz v12, :cond_17

    const/4 v12, 0x2

    :goto_d
    move-object/from16 v0, p0

    iget v13, v0, Lcom/coremobility/e/at;->s:I

    if-eqz v13, :cond_18

    const/4 v13, 0x2

    :goto_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/coremobility/e/at;->t:I

    if-eqz v14, :cond_19

    const/4 v14, 0x2

    :goto_f
    move-object/from16 v0, p0

    iget v15, v0, Lcom/coremobility/e/at;->u:I

    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget v15, v0, Lcom/coremobility/e/at;->u:I

    invoke-static {v15}, Lcom/coremobility/e/d;->i(I)I

    move-result v15

    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/coremobility/e/at;->v:I

    move/from16 v16, v0

    if-eqz v16, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/coremobility/e/at;->v:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/coremobility/e/d;->h(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v17, v16

    :goto_11
    if-eqz v3, :cond_1c

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v16, v3

    :goto_12
    if-eqz v4, :cond_1d

    const-string v3, "in-reply-to"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    :goto_13
    add-int/lit8 v4, v18, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    add-int v4, v4, v19

    add-int v4, v4, v20

    add-int v4, v4, v21

    add-int/2addr v1, v4

    add-int/2addr v1, v6

    add-int v1, v1, v22

    add-int v1, v1, v23

    add-int v1, v1, v24

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    add-int/2addr v1, v8

    add-int/2addr v1, v9

    add-int/2addr v1, v10

    add-int/2addr v1, v11

    add-int/2addr v1, v12

    add-int/2addr v1, v13

    add-int/2addr v1, v14

    add-int/2addr v1, v15

    add-int v1, v1, v17

    add-int v1, v1, v16

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x2

    return v1

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_7
    const/4 v7, 0x0

    const/4 v6, 0x0

    move v9, v6

    :goto_14
    if-ge v9, v11, :cond_10

    aget-object v6, v10, v9

    iget v6, v6, Lcom/coremobility/e/ak;->a:I

    aget-object v8, v10, v9

    iget-object v8, v8, Lcom/coremobility/e/ak;->c:Ljava/lang/String;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_9

    :cond_8
    const/4 v6, 0x0

    :goto_15
    add-int/2addr v7, v6

    aget-object v6, v10, v9

    iget v6, v6, Lcom/coremobility/e/ak;->a:I

    aget-object v8, v10, v9

    iget v8, v8, Lcom/coremobility/e/ak;->b:I

    if-nez v8, :cond_d

    const/4 v6, 0x0

    :goto_16
    add-int/2addr v7, v6

    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_14

    :cond_9
    const/16 v12, 0x80

    if-ge v6, v12, :cond_a

    const/4 v6, 0x1

    :goto_17
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v6, v12

    add-int/lit8 v6, v6, 0x1

    const/16 v12, 0x40

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_b

    add-int/lit8 v6, v6, 0x2

    move v8, v6

    :goto_18
    const/16 v6, 0x1f

    if-ge v8, v6, :cond_c

    const/4 v6, 0x1

    :goto_19
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v8

    goto :goto_15

    :cond_a
    invoke-static {v6}, Lcom/coremobility/e/d;->h(I)I

    move-result v6

    goto :goto_17

    :cond_b
    add-int/lit8 v6, v6, 0xa

    move v8, v6

    goto :goto_18

    :cond_c
    invoke-static {v8}, Lcom/coremobility/e/d;->j(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_d
    const/16 v12, 0x80

    if-ge v6, v12, :cond_e

    const/4 v6, 0x1

    :goto_1a
    invoke-static {v8}, Lcom/coremobility/e/d;->h(I)I

    move-result v8

    add-int/2addr v8, v6

    const/16 v6, 0x1f

    if-ge v8, v6, :cond_f

    const/4 v6, 0x1

    :goto_1b
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v8

    goto :goto_16

    :cond_e
    invoke-static {v6}, Lcom/coremobility/e/d;->h(I)I

    move-result v6

    goto :goto_1a

    :cond_f
    invoke-static {v8}, Lcom/coremobility/e/d;->j(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_10
    move v6, v7

    goto/16 :goto_6

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_9

    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_c

    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_d

    :cond_18
    const/4 v13, 0x0

    goto/16 :goto_e

    :cond_19
    const/4 v14, 0x0

    goto/16 :goto_f

    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_10

    :cond_1b
    const/16 v16, 0x0

    move/from16 v17, v16

    goto/16 :goto_11

    :cond_1c
    const/4 v3, 0x0

    move/from16 v16, v3

    goto/16 :goto_12

    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_13
.end method

.method public static a([Lcom/coremobility/e/au;I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/coremobility/e/d;->b(Lcom/coremobility/e/au;)I

    move-result v3

    iget v2, v2, Lcom/coremobility/e/au;->b:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static b(I)I
    .locals 1

    invoke-static {p0}, Lcom/coremobility/e/d;->j(I)I

    move-result v0

    return v0
.end method

.method public static b(Lcom/coremobility/e/au;)I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/e/au;->a:I

    sparse-switch v1, :sswitch_data_0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x4

    :goto_1
    invoke-static {v0}, Lcom/coremobility/e/d;->j(I)I

    move-result v1

    iget v2, p0, Lcom/coremobility/e/au;->b:I

    invoke-static {v2}, Lcom/coremobility/e/d;->j(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/coremobility/integration/h/d;

    invoke-direct {v0, v2}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/integration/h/d;

    invoke-direct {v1, v2}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    iget v2, p0, Lcom/coremobility/e/au;->a:I

    invoke-static {v2, v0, v1}, Lcom/coremobility/e/a/b;->a(ILcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)Z

    move-result v2

    iget-object v0, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_1
        0x10003 -> :sswitch_1
        0x20001 -> :sswitch_1
        0x20002 -> :sswitch_1
        0x20003 -> :sswitch_1
        0x20004 -> :sswitch_1
        0x20005 -> :sswitch_1
        0x20006 -> :sswitch_1
        0x20007 -> :sswitch_1
        0x20008 -> :sswitch_1
        0x20009 -> :sswitch_1
        0x2000a -> :sswitch_1
        0x2000b -> :sswitch_1
        0x80001 -> :sswitch_0
    .end sparse-switch
.end method

.method private static c(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/coremobility/e/d;->j(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;I)I
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-nez p1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    goto :goto_1
.end method

.method private c(I)V
    .locals 3

    const/16 v0, 0x80

    if-gt v0, p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/d;->b:[B

    iget v1, p0, Lcom/coremobility/e/d;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/e/d;->e:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)I
    .locals 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    move v2, v3

    move v4, v1

    move v5, v1

    move v6, v3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_2

    add-int/lit8 v6, v6, 0x1

    move v2, v3

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x40

    if-ne v7, v8, :cond_3

    if-eqz v2, :cond_3

    add-int/lit8 v5, v5, 0x1

    move v2, v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    sub-int v0, v6, v5

    add-int v1, v6, v4

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    mul-int/lit8 v1, v5, 0x2

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method private d(I)V
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/d;->b:[B

    iget v1, p0, Lcom/coremobility/e/d;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/e/d;->e:I

    or-int/lit16 v2, p1, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/coremobility/e/d;->e(I)V

    goto :goto_0
.end method

.method private e(I)V
    .locals 4

    const/4 v0, 0x1

    move v1, p1

    :goto_0
    ushr-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coremobility/e/d;->b:[B

    iget v2, p0, Lcom/coremobility/e/d;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/coremobility/e/d;->e:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    :goto_1
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/coremobility/e/d;->b:[B

    iget v2, p0, Lcom/coremobility/e/d;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/coremobility/e/d;->e:I

    add-int/lit8 v0, v0, -0x1

    shl-int/lit8 v3, v0, 0x3

    ushr-int v3, p1, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private f(I)V
    .locals 5

    const/4 v0, 0x4

    :goto_0
    if-lez v0, :cond_1

    mul-int/lit8 v1, v0, 0x7

    shr-int v1, p1, v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/coremobility/e/d;->b:[B

    iget v3, p0, Lcom/coremobility/e/d;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/coremobility/e/d;->e:I

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/e/d;->b:[B

    iget v1, p0, Lcom/coremobility/e/d;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/e/d;->e:I

    and-int/lit8 v2, p1, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private g(I)V
    .locals 4

    const/16 v3, 0x1f

    if-ge p1, v3, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/d;->b:[B

    iget v1, p0, Lcom/coremobility/e/d;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/e/d;->e:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/e/d;->b:[B

    iget v1, p0, Lcom/coremobility/e/d;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/e/d;->e:I

    aput-byte v3, v0, v1

    invoke-direct {p0, p1}, Lcom/coremobility/e/d;->f(I)V

    goto :goto_0
.end method

.method private static h(I)I
    .locals 1

    const/4 v0, 0x2

    :goto_0
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static i(I)I
    .locals 2

    invoke-static {p0}, Lcom/coremobility/e/d;->h(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const/16 v0, 0x1f

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-static {v1}, Lcom/coremobility/e/d;->j(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static j(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    shr-int/lit8 p0, p0, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/coremobility/e/d;->c(I)V

    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/coremobility/e/d;->c(I)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coremobility/e/d;->f(I)V

    return-void
.end method

.method public final a(II)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0, p1}, Lcom/coremobility/e/d;->c(I)V

    invoke-direct {p0, p2}, Lcom/coremobility/e/d;->c(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v0, v2

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/coremobility/e/d;->c(I)V

    const/16 v0, 0x2c

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    const/16 v3, 0x40

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-lt v3, v2, :cond_4

    if-ge v3, v0, :cond_4

    const-string v3, "<"

    invoke-virtual {p0, v3, v1}, Lcom/coremobility/e/d;->b(Ljava/lang/String;I)V

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sub-int v2, v0, v2

    invoke-virtual {p0, v3, v2}, Lcom/coremobility/e/d;->b(Ljava/lang/String;I)V

    const-string v2, ">"

    invoke-virtual {p0, v2}, Lcom/coremobility/e/d;->b(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sub-int v2, v0, v2

    invoke-virtual {p0, v3, v2}, Lcom/coremobility/e/d;->b(Ljava/lang/String;I)V

    const-string v2, "/TYPE=PLMN"

    invoke-virtual {p0, v2}, Lcom/coremobility/e/d;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a(Lcom/coremobility/e/au;)V
    .locals 4

    const/4 v2, 0x0

    const/16 v1, 0x83

    iget v0, p1, Lcom/coremobility/e/au;->a:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/coremobility/e/d;->f(I)V

    iget v0, p1, Lcom/coremobility/e/au;->b:I

    invoke-direct {p0, v0}, Lcom/coremobility/e/d;->f(I)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/coremobility/e/d;->g(I)V

    invoke-direct {p0, v1}, Lcom/coremobility/e/d;->c(I)V

    const/16 v0, 0x81

    invoke-direct {p0, v0}, Lcom/coremobility/e/d;->c(I)V

    invoke-direct {p0, v1}, Lcom/coremobility/e/d;->c(I)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/coremobility/integration/h/d;

    invoke-direct {v0, v2}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/integration/h/d;

    invoke-direct {v1, v2}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    iget v2, p1, Lcom/coremobility/e/au;->a:I

    invoke-static {v2, v0, v1}, Lcom/coremobility/e/a/b;->a(ILcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)Z

    move-result v2

    iget-object v0, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/coremobility/e/d;->f(I)V

    iget v3, p1, Lcom/coremobility/e/au;->b:I

    invoke-direct {p0, v3}, Lcom/coremobility/e/d;->f(I)V

    invoke-virtual {p0, v0, v2}, Lcom/coremobility/e/d;->b(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/coremobility/e/d;->b(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_1
        0x10003 -> :sswitch_1
        0x20001 -> :sswitch_1
        0x20002 -> :sswitch_1
        0x20003 -> :sswitch_1
        0x20004 -> :sswitch_1
        0x20005 -> :sswitch_1
        0x20006 -> :sswitch_1
        0x20007 -> :sswitch_1
        0x20008 -> :sswitch_1
        0x20009 -> :sswitch_1
        0x2000a -> :sswitch_1
        0x2000b -> :sswitch_1
        0x80001 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lcom/coremobility/integration/h;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/integration/r;

    invoke-direct {v0}, Lcom/coremobility/integration/r;-><init>()V

    iput p2, v0, Lcom/coremobility/integration/r;->a:I

    new-array v3, p2, [B

    invoke-static {p1, v3, v0}, Lcom/coremobility/integration/file/a;->c(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v4

    iget-object v0, p0, Lcom/coremobility/e/d;->b:[B

    iget v5, p0, Lcom/coremobility/e/d;->e:I

    invoke-static {v3, v2, v0, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v4, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz v4, :cond_0

    const/16 v0, 0x21

    const-string v3, "CM+MME addData fileerr %d"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v0, v3, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/coremobility/e/d;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/coremobility/e/d;->e:I

    iget v0, p0, Lcom/coremobility/e/d;->e:I

    iget v3, p0, Lcom/coremobility/e/d;->c:I

    if-gt v0, v3, :cond_3

    :goto_2
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x89

    invoke-direct {p0, v1}, Lcom/coremobility/e/d;->c(I)V

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/coremobility/e/d;->g(I)V

    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/coremobility/e/d;->c(I)V

    invoke-virtual {p0, p1, v0}, Lcom/coremobility/e/d;->b(Ljava/lang/String;I)V

    const-string v0, "/TYPE=PLMN"

    invoke-virtual {p0, v0}, Lcom/coremobility/e/d;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p0, p1}, Lcom/coremobility/e/d;->b(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coremobility/e/d;->b(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p0, p1}, Lcom/coremobility/e/d;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/coremobility/e/d;->b(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a([BI)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput p2, p0, Lcom/coremobility/e/d;->c:I

    iput-object p1, p0, Lcom/coremobility/e/d;->b:[B

    iput-boolean v2, p0, Lcom/coremobility/e/d;->d:Z

    iput v2, p0, Lcom/coremobility/e/d;->e:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final a([Lcom/coremobility/e/ak;I)V
    .locals 7

    const/16 v6, 0x80

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_0

    aget-object v0, p1, v2

    iget v3, v0, Lcom/coremobility/e/ak;->a:I

    aget-object v0, p1, v2

    iget-object v4, v0, Lcom/coremobility/e/ak;->c:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    :goto_1
    aget-object v0, p1, v2

    iget v3, v0, Lcom/coremobility/e/ak;->a:I

    aget-object v0, p1, v2

    iget v4, v0, Lcom/coremobility/e/ak;->b:I

    if-eqz v4, :cond_3

    const/16 v0, 0xa1

    invoke-direct {p0, v0}, Lcom/coremobility/e/d;->c(I)V

    if-ge v3, v6, :cond_8

    move v0, v1

    :goto_2
    invoke-static {v4}, Lcom/coremobility/e/d;->h(I)I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {p0, v0}, Lcom/coremobility/e/d;->g(I)V

    invoke-direct {p0, v3}, Lcom/coremobility/e/d;->d(I)V

    invoke-direct {p0, v4}, Lcom/coremobility/e/d;->e(I)V

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    const/16 v0, 0xa0

    invoke-direct {p0, v0}, Lcom/coremobility/e/d;->c(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v0, 0x40

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_6

    if-ge v3, v6, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/coremobility/e/d;->g(I)V

    invoke-direct {p0, v3}, Lcom/coremobility/e/d;->d(I)V

    const-string v0, "<"

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/e/d;->b(Ljava/lang/String;I)V

    invoke-virtual {p0, v4, v5}, Lcom/coremobility/e/d;->b(Ljava/lang/String;I)V

    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/coremobility/e/d;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lcom/coremobility/e/d;->h(I)I

    move-result v0

    goto :goto_3

    :cond_6
    if-ge v3, v6, :cond_7

    move v0, v1

    :goto_4
    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/coremobility/e/d;->g(I)V

    invoke-direct {p0, v3}, Lcom/coremobility/e/d;->d(I)V

    invoke-virtual {p0, v4, v5}, Lcom/coremobility/e/d;->b(Ljava/lang/String;I)V

    const-string v0, "/TYPE=PLMN"

    invoke-virtual {p0, v0}, Lcom/coremobility/e/d;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-static {v3}, Lcom/coremobility/e/d;->h(I)I

    move-result v0

    goto :goto_4

    :cond_8
    invoke-static {v3}, Lcom/coremobility/e/d;->h(I)I

    move-result v0

    goto :goto_2
.end method

.method public final b(II)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0, p1}, Lcom/coremobility/e/d;->c(I)V

    invoke-direct {p0, p2}, Lcom/coremobility/e/d;->e(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0, p1}, Lcom/coremobility/e/d;->c(I)V

    invoke-virtual {p0, p2}, Lcom/coremobility/e/d;->b(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(II)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0, p1}, Lcom/coremobility/e/d;->c(I)V

    invoke-static {p2}, Lcom/coremobility/e/d;->h(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/coremobility/e/d;->g(I)V

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/coremobility/e/d;->c(I)V

    invoke-direct {p0, p2}, Lcom/coremobility/e/d;->e(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
