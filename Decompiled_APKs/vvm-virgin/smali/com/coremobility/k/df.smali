.class public final Lcom/coremobility/k/df;
.super Ljava/lang/Object;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Lcom/coremobility/l/an;

.field private a:J

.field private b:[J

.field private c:J

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Lcom/coremobility/k/cx;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/coremobility/k/df;->a:J

    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/coremobility/k/df;->b:[J

    iput-wide v2, p0, Lcom/coremobility/k/df;->c:J

    iput-wide v2, p0, Lcom/coremobility/k/df;->d:J

    iput-wide v2, p0, Lcom/coremobility/k/df;->e:J

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->f:Ljava/lang/String;

    iput v1, p0, Lcom/coremobility/k/df;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->m:Ljava/lang/String;

    iput v1, p0, Lcom/coremobility/k/df;->n:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->t:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/coremobility/k/df;->u:Z

    iput-boolean v1, p0, Lcom/coremobility/k/df;->v:Z

    iput v1, p0, Lcom/coremobility/k/df;->w:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->y:Ljava/lang/String;

    iput v1, p0, Lcom/coremobility/k/df;->z:I

    iput v1, p0, Lcom/coremobility/k/df;->A:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->D:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->E:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->F:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/k/df;->G:Lcom/coremobility/l/an;

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    return-void
.end method

.method private a(Lcom/coremobility/integration/h/c;Lcom/coremobility/integration/h/d;)I
    .locals 13

    const/4 v9, 0x2

    const/16 v11, 0x1d

    const/4 v7, 0x1

    const/16 v10, 0x1c

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v0, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-nez v0, :cond_0

    iput v10, p1, Lcom/coremobility/integration/h/c;->a:I

    :goto_0
    return v1

    :cond_0
    iget v0, p0, Lcom/coremobility/k/df;->n:I

    if-ltz v0, :cond_1

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    move v0, v7

    :goto_1
    if-nez v0, :cond_2

    iput v9, p1, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/coremobility/k/df;->n:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    iget-wide v2, p0, Lcom/coremobility/k/df;->a:J

    const-wide/32 v4, 0x20000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coremobility/k/df;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget v3, p0, Lcom/coremobility/k/df;->n:I

    invoke-virtual {v2, v0, v3}, Lcom/coremobility/k/cx;->b(Ljava/lang/String;I)[I

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/coremobility/k/df;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v3, p0, Lcom/coremobility/k/df;->a:J

    const-wide/16 v5, 0x4000

    and-long/2addr v3, v5

    iget v0, p0, Lcom/coremobility/k/df;->g:I

    aget v5, v2, v1

    iput v5, p0, Lcom/coremobility/k/df;->g:I

    aget v2, v2, v7

    int-to-long v8, v2

    or-long v2, v8, v3

    iput-wide v2, p0, Lcom/coremobility/k/df;->a:J

    invoke-direct {p0, p1}, Lcom/coremobility/k/df;->d(Lcom/coremobility/integration/h/c;)I

    move-result v2

    iput v0, p0, Lcom/coremobility/k/df;->g:I

    if-gtz v2, :cond_3

    const-string v0, "VNOTES PROVIDER - Insert Vnotes Mime Failed!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v10, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v11, p1, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    :cond_4
    iput v1, p1, Lcom/coremobility/integration/h/c;->a:I

    iput-boolean v1, p0, Lcom/coremobility/k/df;->u:Z

    iput-boolean v7, p0, Lcom/coremobility/k/df;->v:Z

    iget v1, p0, Lcom/coremobility/k/df;->g:I

    goto :goto_0

    :cond_5
    const-string v0, "Parse v2t xml file error. No file_order and summary."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v10, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x16

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not find parent with guid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in DB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v10, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x16

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    goto/16 :goto_0

    :cond_7
    const-string v0, "VNOTES PROVIDER - MMS malformat: x-VTT-ID doesn\'t exist!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v10, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    goto/16 :goto_0

    :cond_8
    iget-wide v2, p0, Lcom/coremobility/k/df;->a:J

    const-wide/16 v4, 0x400

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_18

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_18

    :cond_9
    iget-wide v2, p0, Lcom/coremobility/k/df;->a:J

    const-wide/32 v4, 0x8000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_18

    iget-wide v2, p0, Lcom/coremobility/k/df;->a:J

    const-wide/32 v4, -0x8001

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/coremobility/k/df;->a:J

    move v6, v7

    :goto_2
    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v0, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-nez v0, :cond_a

    iput v10, p1, Lcom/coremobility/integration/h/c;->a:I

    move v0, v1

    :goto_3
    if-gtz v0, :cond_16

    const-string v0, "VNOTES PROVIDER - Insert Vnotes Failed!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v10, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v11, p1, Lcom/coremobility/integration/h/c;->a:I

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/coremobility/k/df;->n:I

    if-ltz v0, :cond_b

    const/4 v2, 0x7

    if-ge v0, v2, :cond_b

    move v0, v7

    :goto_4
    if-nez v0, :cond_c

    iput v9, p1, Lcom/coremobility/integration/h/c;->a:I

    move v0, v1

    goto :goto_3

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_c
    invoke-direct {p0}, Lcom/coremobility/k/df;->r()Lcom/coremobility/integration/b/a;

    move-result-object v4

    if-nez v4, :cond_d

    iput v11, p1, Lcom/coremobility/integration/h/c;->a:I

    move v0, v1

    goto :goto_3

    :cond_d
    invoke-direct {p0, v1}, Lcom/coremobility/k/df;->a(Z)Lcom/coremobility/integration/b/a;

    move-result-object v8

    if-nez v8, :cond_e

    iput v11, p1, Lcom/coremobility/integration/h/c;->a:I

    move v0, v1

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lcom/coremobility/k/df;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v2, "uri"

    aput-object v2, v0, v7

    const-string v2, "status"

    aput-object v2, v0, v9

    iget-object v2, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v2, v2, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-nez v2, :cond_f

    iput v10, p1, Lcom/coremobility/integration/h/c;->a:I

    move v0, v1

    goto :goto_3

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/k/df;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v3, v3, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v5, "vnotes"

    const/4 v9, 0x0

    invoke-static {v3, v5, v0, v2, v9}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->b()I

    move-result v2

    if-ne v2, v7, :cond_12

    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->c()Z

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v9

    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/k/df;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v0, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v2, "vnotes"

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/k/df;->f:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/k/df;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "record_id"

    iget-object v2, v8, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v0, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    invoke-static {v0, v8}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;)I

    :cond_10
    move v0, v9

    :goto_5
    if-gtz v0, :cond_11

    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v2, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    iget-object v0, p0, Lcom/coremobility/k/df;->f:Ljava/lang/String;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    :goto_6
    invoke-static {v2, v4, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;Lcom/coremobility/integration/b/a;)I

    move-result v0

    :cond_11
    if-gtz v0, :cond_15

    const/16 v0, 0x17

    const-string v2, "VNOTES PROVIDER - Insert Vnotes Failed!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v11, p1, Lcom/coremobility/integration/h/c;->a:I

    move v0, v1

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v0}, Lcom/coremobility/integration/b/b;->a()V

    :cond_13
    move v0, v1

    goto :goto_5

    :cond_14
    move-object v0, v8

    goto :goto_6

    :cond_15
    iput v0, p0, Lcom/coremobility/k/df;->g:I

    goto/16 :goto_3

    :cond_16
    if-eqz v6, :cond_4

    const-string v2, ""

    const-wide/16 v3, 0x2

    :try_start_0
    invoke-static {v3, v4, p1}, Lcom/coremobility/k/cx;->a(JLcom/coremobility/integration/h/c;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/coremobility/integration/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    iput-object v0, p0, Lcom/coremobility/k/df;->f:Ljava/lang/String;
    :try_end_1
    .catch Lcom/coremobility/integration/g; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x2

    iput-wide v2, p0, Lcom/coremobility/k/df;->d:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/coremobility/k/df;->e:J

    invoke-direct {p0}, Lcom/coremobility/k/df;->q()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p1}, Lcom/coremobility/k/df;->d(Lcom/coremobility/integration/h/c;)I

    move-result v0

    if-gtz v0, :cond_4

    const-string v0, "VNOTES PROVIDER - Insert Vnotes Mime Failed!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v10, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v11, p1, Lcom/coremobility/integration/h/c;->a:I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    :goto_8
    invoke-virtual {v2}, Lcom/coremobility/integration/g;->printStackTrace()V

    goto :goto_7

    :cond_17
    const-string v0, "Parse v2t xml file error. No file_order and summary."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v10, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x16

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto :goto_8

    :cond_18
    move v6, v1

    goto/16 :goto_2
.end method

.method private a(Z)Lcom/coremobility/integration/b/a;
    .locals 4

    new-instance v0, Lcom/coremobility/integration/b/a;

    invoke-direct {v0}, Lcom/coremobility/integration/b/a;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "record_id"

    iget v2, p0, Lcom/coremobility/k/df;->g:I

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "file_type"

    iget-wide v2, p0, Lcom/coremobility/k/df;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/b/a;->a(Ljava/lang/String;J)V

    const-string v1, "file_order"

    iget v2, p0, Lcom/coremobility/k/df;->z:I

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "filename_only"

    iget-object v2, p0, Lcom/coremobility/k/df;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "file_size"

    iget-wide v2, p0, Lcom/coremobility/k/df;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/b/a;->a(Ljava/lang/String;J)V

    const-string v1, "duration"

    iget-wide v2, p0, Lcom/coremobility/k/df;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/b/a;->a(Ljava/lang/String;J)V

    const-string v1, "transcribe_rate"

    iget v2, p0, Lcom/coremobility/k/df;->A:I

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mime_guid"

    iget-object v2, p0, Lcom/coremobility/k/df;->B:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private d(Lcom/coremobility/integration/h/c;)I
    .locals 11

    const-wide/16 v9, 0x0

    const/16 v8, 0x31

    const/16 v0, 0x14

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v4, Lcom/coremobility/integration/b/a;

    invoke-direct {v4}, Lcom/coremobility/integration/b/a;-><init>()V

    iget-wide v2, p0, Lcom/coremobility/k/df;->a:J

    const-wide/16 v5, 0x4000

    and-long/2addr v2, v5

    cmp-long v2, v2, v9

    if-lez v2, :cond_1

    const/16 v0, 0x1e

    iput v0, p0, Lcom/coremobility/k/df;->z:I

    :goto_0
    iget-wide v2, p0, Lcom/coremobility/k/df;->a:J

    const-wide/32 v5, 0x8000

    and-long/2addr v2, v5

    cmp-long v0, v2, v9

    if-lez v0, :cond_0

    const-string v0, "vtt before Status 0x%x"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/coremobility/k/df;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-wide v2, p0, Lcom/coremobility/k/df;->a:J

    const-wide/32 v5, -0x8001

    and-long/2addr v2, v5

    iput-wide v2, p0, Lcom/coremobility/k/df;->a:J

    const-string v0, "vtt after Status 0x%x"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/coremobility/k/df;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "status"

    iget-wide v2, p0, Lcom/coremobility/k/df;->a:J

    invoke-virtual {v4, v0, v2, v3}, Lcom/coremobility/integration/b/a;->a(Ljava/lang/String;J)V

    :cond_0
    const-string v0, "txt_summary"

    iget-object v2, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    iget-object v3, v4, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/k/df;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v0, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v2, "vnotes"

    iget v3, p0, Lcom/coremobility/k/df;->g:I

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    invoke-direct {p0, v7}, Lcom/coremobility/k/df;->a(Z)Lcom/coremobility/integration/b/a;

    move-result-object v2

    if-nez v2, :cond_4

    const/16 v0, 0x1d

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Lcom/coremobility/k/df;->D:Ljava/lang/String;

    invoke-static {v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/coremobility/k/df;->D:Ljava/lang/String;

    const-string v3, "human"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/16 v0, 0xa

    :cond_2
    iput v0, p0, Lcom/coremobility/k/df;->z:I

    goto/16 :goto_0

    :cond_3
    iput v0, p0, Lcom/coremobility/k/df;->z:I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v0, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    invoke-static {v0, v2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;)I

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file_type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/coremobility/k/df;->d:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "file_order"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/coremobility/k/df;->z:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v3, v3, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v4, "vnotes_mime"

    iget v5, p0, Lcom/coremobility/k/df;->g:I

    invoke-static {v3, v1, v4, v5, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v0, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    invoke-static {v0, v2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;)I

    move-result v0

    :cond_5
    move v1, v0

    goto :goto_1
.end method

.method private q()Z
    .locals 10

    const/16 v9, 0x78

    const/4 v1, 0x1

    const/16 v8, 0x31

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/coremobility/k/df;->d:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VTT file type is not text/xml. File type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/coremobility/k/df;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/coremobility/k/df;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xml file name ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    new-instance v3, Lcom/coremobility/integration/h;

    invoke-direct {v3}, Lcom/coremobility/integration/h;-><init>()V

    invoke-static {v2, v3}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v4

    iget-wide v5, p0, Lcom/coremobility/k/df;->e:J

    long-to-int v5, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file size from VnoteEntry = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v8, v6, v7}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not open file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v4, v5, [B

    new-instance v6, Lcom/coremobility/integration/r;

    invoke-direct {v6}, Lcom/coremobility/integration/r;-><init>()V

    iput v5, v6, Lcom/coremobility/integration/r;->a:I

    invoke-static {v3, v4, v6}, Lcom/coremobility/integration/file/a;->c(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v5

    if-eqz v5, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File read error "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    goto/16 :goto_0

    :cond_2
    invoke-static {v4}, Lcom/coremobility/l/ah;->a([B)Lcom/coremobility/l/an;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/k/df;->G:Lcom/coremobility/l/an;

    iget-object v2, p0, Lcom/coremobility/k/df;->G:Lcom/coremobility/l/an;

    const-string v4, ""

    iput-object v4, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    iput v0, p0, Lcom/coremobility/k/df;->z:I

    const-string v4, ""

    iput-object v4, p0, Lcom/coremobility/k/df;->D:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/coremobility/k/df;->E:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/coremobility/k/df;->F:Ljava/lang/String;

    iget-object v4, v2, Lcom/coremobility/l/an;->b:Ljava/util/Vector;

    if-eqz v4, :cond_4

    invoke-static {v2}, Lcom/coremobility/l/ah;->a(Lcom/coremobility/l/an;)Lcom/coremobility/l/aj;

    move-result-object v4

    const/4 v2, 0x0

    if-eqz v4, :cond_3

    iget-object v2, v4, Lcom/coremobility/l/aj;->f:Ljava/util/Vector;

    invoke-static {v2}, Lcom/coremobility/l/ah;->a(Ljava/util/Vector;)Lcom/coremobility/l/ak;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/coremobility/l/ak;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/coremobility/k/df;->F:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/k/df;->F:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/coremobility/k/df;->F:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v9, :cond_6

    iget-object v2, p0, Lcom/coremobility/k/df;->F:Ljava/lang/String;

    invoke-virtual {v2, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    :cond_4
    :goto_1
    const-string v2, "transcription type - %s, provider - %s, summary - %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/coremobility/k/df;->D:Ljava/lang/String;

    aput-object v5, v4, v0

    iget-object v0, p0, Lcom/coremobility/k/df;->E:Ljava/lang/String;

    aput-object v0, v4, v1

    const/4 v0, 0x2

    iget-object v5, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v8, v2, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/df;->E:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coremobility/k/df;->F:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/k/df;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->F:Ljava/lang/String;

    :cond_5
    invoke-static {v3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move v0, v1

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/coremobility/k/df;->F:Ljava/lang/String;

    iput-object v2, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    goto :goto_1
.end method

.method private r()Lcom/coremobility/integration/b/a;
    .locals 4

    new-instance v0, Lcom/coremobility/integration/b/a;

    invoke-direct {v0}, Lcom/coremobility/integration/b/a;-><init>()V

    iget v1, p0, Lcom/coremobility/k/df;->g:I

    if-eqz v1, :cond_0

    const-string v1, "_id"

    iget v2, p0, Lcom/coremobility/k/df;->g:I

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "dir_id"

    iget v2, p0, Lcom/coremobility/k/df;->n:I

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "sender_name"

    iget-object v2, p0, Lcom/coremobility/k/df;->h:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sender_mdn"

    iget-object v2, p0, Lcom/coremobility/k/df;->i:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sender_email"

    iget-object v2, p0, Lcom/coremobility/k/df;->j:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subject"

    iget-object v2, p0, Lcom/coremobility/k/df;->k:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "recipient_mdns"

    iget-object v2, p0, Lcom/coremobility/k/df;->l:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "recipient_emails"

    iget-object v2, p0, Lcom/coremobility/k/df;->m:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "guid"

    iget-object v2, p0, Lcom/coremobility/k/df;->p:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    iget-wide v2, p0, Lcom/coremobility/k/df;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/b/a;->a(Ljava/lang/String;J)V

    const-string v1, "out_timestamp"

    iget-object v2, p0, Lcom/coremobility/k/df;->b:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/b/a;->a(Ljava/lang/String;J)V

    const-string v1, "sent_timestamp"

    iget-object v2, p0, Lcom/coremobility/k/df;->b:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/b/a;->a(Ljava/lang/String;J)V

    const-string v1, "recv_timestamp"

    iget-object v2, p0, Lcom/coremobility/k/df;->b:[J

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/b/a;->a(Ljava/lang/String;J)V

    const-string v1, "read_timestamp"

    iget-object v2, p0, Lcom/coremobility/k/df;->b:[J

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/b/a;->a(Ljava/lang/String;J)V

    const-string v1, "repl_timestamp"

    iget-object v2, p0, Lcom/coremobility/k/df;->b:[J

    const/4 v3, 0x4

    aget-wide v2, v2, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/b/a;->a(Ljava/lang/String;J)V

    const-string v1, "fwd_timestamp"

    iget-object v2, p0, Lcom/coremobility/k/df;->b:[J

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/b/a;->a(Ljava/lang/String;J)V

    const-string v1, "previous_sender"

    iget-object v2, p0, Lcom/coremobility/k/df;->o:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "in_reply_to_guid"

    iget-object v2, p0, Lcom/coremobility/k/df;->q:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "in_reply_to_name"

    iget-object v2, p0, Lcom/coremobility/k/df;->r:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uri"

    iget-object v2, p0, Lcom/coremobility/k/df;->s:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "forward_to_guid"

    iget-object v2, p0, Lcom/coremobility/k/df;->t:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "txt_summary"

    iget-object v2, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private s()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-wide v2, p0, Lcom/coremobility/k/df;->a:J

    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/coremobility/k/df;->b:[J

    iput-wide v2, p0, Lcom/coremobility/k/df;->c:J

    iput-wide v2, p0, Lcom/coremobility/k/df;->d:J

    iput-wide v2, p0, Lcom/coremobility/k/df;->e:J

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->f:Ljava/lang/String;

    iput v1, p0, Lcom/coremobility/k/df;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->m:Ljava/lang/String;

    iput v1, p0, Lcom/coremobility/k/df;->n:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    iput v1, p0, Lcom/coremobility/k/df;->A:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/k/df;->B:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/coremobility/k/df;->u:Z

    iput-boolean v1, p0, Lcom/coremobility/k/df;->v:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/k/df;->G:Lcom/coremobility/l/an;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/df;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final a(IILcom/coremobility/integration/h/c;)V
    .locals 3

    const/16 v2, 0x1c

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, " Bad v id"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    iput v0, p3, Lcom/coremobility/integration/h/c;->a:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/coremobility/k/df;->g:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/coremobility/k/df;->n:I

    if-ne p2, v0, :cond_1

    iput v1, p3, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lcom/coremobility/k/df;->c(Lcom/coremobility/integration/h/c;)V

    iget v0, p3, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v0, :cond_2

    const-string v0, " Error save curr"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coremobility/k/df;->s()V

    invoke-virtual {p0, p1, p3}, Lcom/coremobility/k/df;->b(ILcom/coremobility/integration/h/c;)V

    goto :goto_0
.end method

.method public final a(ILcom/coremobility/integration/h/c;)V
    .locals 3

    if-nez p1, :cond_0

    const/16 v0, 0x1c

    const-string v1, " Bad v id"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    iput v0, p2, Lcom/coremobility/integration/h/c;->a:I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/k/df;->s()V

    invoke-virtual {p0, p1, p2}, Lcom/coremobility/k/df;->b(ILcom/coremobility/integration/h/c;)V

    goto :goto_0
.end method

.method public final a(ILcom/coremobility/k/de;Lcom/coremobility/integration/h/c;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_1

    const/4 v0, 0x7

    if-ge p1, v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    iput v7, p3, Lcom/coremobility/integration/h/c;->a:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/coremobility/k/de;->g()I

    move-result v0

    if-eqz v0, :cond_3

    iput v8, p3, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p3}, Lcom/coremobility/k/df;->c(Lcom/coremobility/integration/h/c;)V

    iget v0, p3, Lcom/coremobility/integration/h/c;->a:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/k/df;->s()V

    invoke-virtual {p2}, Lcom/coremobility/k/de;->a()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/coremobility/k/df;->a:J

    invoke-virtual {p2}, Lcom/coremobility/k/de;->b()[J

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->b:[J

    invoke-virtual {p2}, Lcom/coremobility/k/de;->c()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/coremobility/k/df;->c:J

    invoke-virtual {p2}, Lcom/coremobility/k/de;->d()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/coremobility/k/df;->d:J

    invoke-virtual {p2}, Lcom/coremobility/k/de;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/coremobility/k/df;->e:J

    invoke-virtual {p2}, Lcom/coremobility/k/de;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->g()I

    move-result v0

    iput v0, p0, Lcom/coremobility/k/df;->g:I

    invoke-virtual {p2}, Lcom/coremobility/k/de;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->j:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->k:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->l:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->m:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->n()I

    move-result v0

    iput v0, p0, Lcom/coremobility/k/df;->n:I

    invoke-virtual {p2}, Lcom/coremobility/k/de;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->o:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->r:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->p:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->q:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->s:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->t:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v3, p0, Lcom/coremobility/k/df;->a:J

    const-wide/32 v5, 0x20000

    or-long/2addr v3, v5

    iput-wide v3, p0, Lcom/coremobility/k/df;->a:J

    invoke-virtual {p2}, Lcom/coremobility/k/de;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->y:Ljava/lang/String;

    :cond_4
    invoke-virtual {p2}, Lcom/coremobility/k/de;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->w()I

    move-result v0

    iput v0, p0, Lcom/coremobility/k/df;->z:I

    invoke-virtual {p2}, Lcom/coremobility/k/de;->x()I

    move-result v0

    iput v0, p0, Lcom/coremobility/k/df;->A:I

    invoke-virtual {p2}, Lcom/coremobility/k/de;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->B:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/coremobility/k/de;->z()Lcom/coremobility/l/an;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->G:Lcom/coremobility/l/an;

    iput p1, p0, Lcom/coremobility/k/df;->n:I

    iget v0, p0, Lcom/coremobility/k/df;->n:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/coremobility/k/df;->n:I

    if-nez v0, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/coremobility/k/df;->b:[J

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v3

    aput-wide v3, v0, v2

    iput-boolean v1, p0, Lcom/coremobility/k/df;->u:Z

    :cond_6
    :goto_2
    new-instance v3, Lcom/coremobility/integration/h/d;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p3, v3}, Lcom/coremobility/k/df;->a(Lcom/coremobility/integration/h/c;Lcom/coremobility/integration/h/d;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/k/df;->g:I

    iget-object v0, v3, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v3, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/coremobility/k/de;->a(I)V

    :goto_3
    iget-wide v3, p0, Lcom/coremobility/k/df;->a:J

    invoke-virtual {p2, v3, v4}, Lcom/coremobility/k/de;->a(J)V

    iget-object v0, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/coremobility/k/de;->n(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/coremobility/k/df;->B:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/coremobility/k/de;->p(Ljava/lang/String;)V

    iget v0, p0, Lcom/coremobility/k/df;->z:I

    invoke-virtual {p2, v0}, Lcom/coremobility/k/de;->c(I)V

    iget-object v0, p0, Lcom/coremobility/k/df;->G:Lcom/coremobility/l/an;

    invoke-virtual {p2, v0}, Lcom/coremobility/k/de;->a(Lcom/coremobility/l/an;)V

    iget v0, p3, Lcom/coremobility/integration/h/c;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/coremobility/k/de;->d()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/coremobility/k/df;->d:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    iget-wide v3, p0, Lcom/coremobility/k/df;->d:J

    invoke-virtual {p2, v3, v4}, Lcom/coremobility/k/de;->c(J)V

    :cond_8
    if-ne p1, v1, :cond_9

    const/16 v0, 0x1c

    const-string v1, "CM_ VN-ENT Vnote created in outbox"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    invoke-virtual {v0}, Lcom/coremobility/k/cx;->l()V

    :cond_9
    new-instance v0, Lcom/coremobility/k/m;

    iget v1, p0, Lcom/coremobility/k/df;->g:I

    invoke-virtual {p2}, Lcom/coremobility/k/de;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/coremobility/k/de;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/coremobility/k/de;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/coremobility/k/de;->p()Ljava/lang/String;

    move-result-object v6

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/coremobility/k/m;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto/16 :goto_1

    :cond_a
    iget v0, p0, Lcom/coremobility/k/df;->n:I

    if-ne v0, v7, :cond_b

    iget-object v0, p0, Lcom/coremobility/k/df;->b:[J

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v3

    aput-wide v3, v0, v1

    iput-boolean v1, p0, Lcom/coremobility/k/df;->u:Z

    goto/16 :goto_2

    :cond_b
    iget v0, p0, Lcom/coremobility/k/df;->n:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_c

    iget v0, p0, Lcom/coremobility/k/df;->n:I

    if-ne v0, v8, :cond_6

    :cond_c
    iget-object v0, p0, Lcom/coremobility/k/df;->b:[J

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v3

    aput-wide v3, v0, v7

    iput-boolean v1, p0, Lcom/coremobility/k/df;->u:Z

    goto/16 :goto_2

    :cond_d
    iget v0, p0, Lcom/coremobility/k/df;->g:I

    invoke-virtual {p2, v0}, Lcom/coremobility/k/de;->a(I)V

    goto/16 :goto_3
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremobility/k/df;->a:J

    return-void
.end method

.method public final a(Lcom/coremobility/integration/h/c;)V
    .locals 9

    const-wide/16 v7, 0x2

    const-wide/16 v2, 0x0

    const-wide/32 v5, 0x10000

    const/4 v4, 0x3

    iget-boolean v0, p0, Lcom/coremobility/k/df;->v:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/coremobility/k/df;->a:J

    and-long/2addr v0, v5

    cmp-long v0, v5, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coremobility/k/df;->n:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/coremobility/k/df;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_2
    cmp-long v0, v2, v7

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/coremobility/k/df;->a:J

    and-long/2addr v0, v7

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/k/df;->b:[J

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v1

    aput-wide v1, v0, v4

    sget-boolean v0, Lcom/coremobility/a/a;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    invoke-virtual {v0}, Lcom/coremobility/k/cx;->e()Lcom/coremobility/k/g;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/k/df;->g:I

    iget v2, p0, Lcom/coremobility/k/df;->n:I

    iget-object v3, p0, Lcom/coremobility/k/df;->b:[J

    aget-wide v3, v3, v4

    long-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/k/g;->a(III)V

    :cond_3
    :goto_1
    iget-wide v0, p0, Lcom/coremobility/k/df;->a:J

    or-long/2addr v0, v5

    iput-wide v0, p0, Lcom/coremobility/k/df;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/k/df;->u:Z

    invoke-virtual {p0, p1}, Lcom/coremobility/k/df;->b(Lcom/coremobility/integration/h/c;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget v1, p0, Lcom/coremobility/k/df;->g:I

    invoke-virtual {v0, v1}, Lcom/coremobility/k/cx;->a(I)V

    goto :goto_1
.end method

.method public final a(Lcom/coremobility/k/de;)V
    .locals 2

    iget-wide v0, p0, Lcom/coremobility/k/df;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/coremobility/k/de;->a(J)V

    iget-object v0, p0, Lcom/coremobility/k/df;->b:[J

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->a([J)V

    iget-wide v0, p0, Lcom/coremobility/k/df;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/coremobility/k/de;->b(J)V

    iget-wide v0, p0, Lcom/coremobility/k/df;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/coremobility/k/de;->c(J)V

    iget-wide v0, p0, Lcom/coremobility/k/df;->e:J

    invoke-virtual {p1, v0, v1}, Lcom/coremobility/k/de;->d(J)V

    iget-object v0, p0, Lcom/coremobility/k/df;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/coremobility/k/df;->g:I

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->a(I)V

    iget-object v0, p0, Lcom/coremobility/k/df;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/k/df;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/k/df;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/k/df;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/k/df;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/k/df;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->g(Ljava/lang/String;)V

    iget v0, p0, Lcom/coremobility/k/df;->n:I

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->b(I)V

    iget-object v0, p0, Lcom/coremobility/k/df;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/k/df;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/k/df;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/k/df;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->n(Ljava/lang/String;)V

    iget v0, p0, Lcom/coremobility/k/df;->z:I

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->c(I)V

    iget v0, p0, Lcom/coremobility/k/df;->A:I

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->d(I)V

    iget-object v0, p0, Lcom/coremobility/k/df;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/k/df;->G:Lcom/coremobility/l/an;

    invoke-virtual {p1, v0}, Lcom/coremobility/k/de;->a(Lcom/coremobility/l/an;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/k/df;->s:Ljava/lang/String;

    return-void
.end method

.method final a(ZLcom/coremobility/integration/h/c;)V
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Lcom/coremobility/k/df;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v0, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x1

    const-string v2, "vnotes"

    iget v3, p0, Lcom/coremobility/k/df;->g:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/coremobility/k/df;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/coremobility/k/df;->g:I

    iget-object v1, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v1, v1, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-nez v1, :cond_3

    const/16 v0, 0x1c

    iput v0, p2, Lcom/coremobility/integration/h/c;->a:I

    :goto_1
    iget v0, p2, Lcom/coremobility/integration/h/c;->a:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    invoke-virtual {v0}, Lcom/coremobility/k/cx;->e()Lcom/coremobility/k/g;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/k/df;->g:I

    iget v2, p0, Lcom/coremobility/k/df;->n:I

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/k/g;->a(II)V

    :cond_2
    invoke-direct {p0}, Lcom/coremobility/k/df;->s()V

    new-instance v0, Lcom/coremobility/k/o;

    iget v1, p0, Lcom/coremobility/k/df;->g:I

    iget v2, p2, Lcom/coremobility/integration/h/c;->a:I

    invoke-direct {v0, v1, p1, v2}, Lcom/coremobility/k/o;-><init>(IZI)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v2, v2, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v3, "vnotes"

    invoke-static {v2, v6, v3, v0, v1}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v2, v2, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v3, "vnotes_mime"

    invoke-static {v2, v6, v3, v0, v1}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    iput v6, p2, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/coremobility/k/df;->g:I

    return v0
.end method

.method public final b(ILcom/coremobility/integration/h/c;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "dir_id"

    aput-object v1, v0, v6

    const-string v1, "sender_name"

    aput-object v1, v0, v7

    const-string v1, "sender_mdn"

    aput-object v1, v0, v8

    const-string v1, "sender_email"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "recipient_mdns"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "recipient_emails"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "previous_sender"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "guid"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "in_reply_to_guid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "in_reply_to_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "out_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sent_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "recv_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "read_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "repl_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "fwd_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "forward_to_guid"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "txt_summary"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "record_id"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "file_type"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "file_order"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "filename_only"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "duration"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v1, v1, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-nez v1, :cond_0

    const/16 v0, 0x1c

    iput v0, p2, Lcom/coremobility/integration/h/c;->a:I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "record_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v2, v2, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v3, "vnotes,vnotes_mime"

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0x1d

    iput v0, p2, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/coremobility/integration/b/b;->b()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/coremobility/integration/b/b;->a()V

    const/16 v0, 0x1d

    iput v0, p2, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/coremobility/integration/b/b;->c()Z

    invoke-virtual {v1, v5}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/coremobility/k/df;->g:I

    invoke-virtual {v1, v6}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/coremobility/k/df;->n:I

    invoke-virtual {v1, v7}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v7}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/coremobility/k/df;->h:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v8}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/coremobility/k/df;->i:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v9}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/coremobility/k/df;->j:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/coremobility/k/df;->k:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/coremobility/k/df;->l:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/coremobility/k/df;->m:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/coremobility/k/df;->o:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/coremobility/k/df;->p:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/coremobility/k/df;->q:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lcom/coremobility/k/df;->r:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/coremobility/k/df;->s:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/coremobility/k/df;->a:J

    iget-object v0, p0, Lcom/coremobility/k/df;->b:[J

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/b/b;->b(I)J

    move-result-wide v2

    aput-wide v2, v0, v5

    iget-object v0, p0, Lcom/coremobility/k/df;->b:[J

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/b/b;->b(I)J

    move-result-wide v2

    aput-wide v2, v0, v6

    iget-object v0, p0, Lcom/coremobility/k/df;->b:[J

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/b/b;->b(I)J

    move-result-wide v2

    aput-wide v2, v0, v7

    iget-object v0, p0, Lcom/coremobility/k/df;->b:[J

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/b/b;->b(I)J

    move-result-wide v2

    aput-wide v2, v0, v8

    iget-object v0, p0, Lcom/coremobility/k/df;->b:[J

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/b/b;->b(I)J

    move-result-wide v2

    aput-wide v2, v0, v9

    iget-object v0, p0, Lcom/coremobility/k/df;->b:[J

    const/4 v2, 0x5

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Lcom/coremobility/integration/b/b;->b(I)J

    move-result-wide v3

    aput-wide v3, v0, v2

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->t:Ljava/lang/String;

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/df;->C:Ljava/lang/String;

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/coremobility/k/df;->d:J

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/coremobility/k/df;->z:I

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/coremobility/k/df;->f:Ljava/lang/String;

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/coremobility/k/df;->e:J

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/coremobility/k/df;->c:J

    invoke-virtual {v1}, Lcom/coremobility/integration/b/b;->a()V

    iput v5, p2, Lcom/coremobility/integration/h/c;->a:I

    iput-boolean v5, p0, Lcom/coremobility/k/df;->u:Z

    iput-boolean v6, p0, Lcom/coremobility/k/df;->v:Z

    goto/16 :goto_0

    :cond_3
    const-string v0, ""

    goto/16 :goto_1

    :cond_4
    const-string v0, ""

    goto/16 :goto_2

    :cond_5
    const-string v0, ""

    goto/16 :goto_3

    :cond_6
    const-string v0, ""

    goto/16 :goto_4

    :cond_7
    const-string v0, ""

    goto/16 :goto_5

    :cond_8
    const-string v0, ""

    goto/16 :goto_6

    :cond_9
    const-string v0, ""

    goto/16 :goto_7

    :cond_a
    const-string v0, ""

    goto/16 :goto_8

    :cond_b
    const-string v0, ""

    goto/16 :goto_9

    :cond_c
    const-string v0, ""

    goto/16 :goto_a

    :cond_d
    const-string v0, ""

    goto/16 :goto_b

    :cond_e
    const-string v0, ""

    goto :goto_c
.end method

.method protected final b(Lcom/coremobility/integration/h/c;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v0, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    if-nez v0, :cond_0

    const/16 v0, 0x1c

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/coremobility/k/df;->n:I

    if-ltz v0, :cond_1

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    move v0, v6

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x2

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/k/df;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/coremobility/k/df;->r()Lcom/coremobility/integration/b/a;

    move-result-object v4

    if-nez v4, :cond_3

    const/16 v0, 0x1d

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v0, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v2, "vnotes"

    iget v3, p0, Lcom/coremobility/k/df;->g:I

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/coremobility/k/df;->a(Z)Lcom/coremobility/integration/b/a;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/k/df;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "file_type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/coremobility/k/df;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/coremobility/k/df;->x:Lcom/coremobility/k/cx;

    iget-object v0, v0, Lcom/coremobility/k/cx;->u:Lcom/coremobility/integration/b/d;

    const-string v2, "vnotes_mime"

    iget v3, p0, Lcom/coremobility/k/df;->g:I

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    iput v1, p1, Lcom/coremobility/integration/h/c;->a:I

    iput-boolean v1, p0, Lcom/coremobility/k/df;->u:Z

    iput-boolean v6, p0, Lcom/coremobility/k/df;->v:Z

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/df;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Lcom/coremobility/integration/h/c;)V
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/k/df;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coremobility/k/df;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coremobility/k/df;->b(Lcom/coremobility/integration/h/c;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/df;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/df;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/df;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/coremobility/k/df;->n:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/df;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/df;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/df;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/df;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final l()[J
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/df;->b:[J

    return-object v0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Lcom/coremobility/k/df;->a:J

    return-wide v0
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lcom/coremobility/k/df;->d:J

    return-wide v0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lcom/coremobility/k/df;->e:J

    return-wide v0
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/k/df;->u:Z

    return-void
.end method
