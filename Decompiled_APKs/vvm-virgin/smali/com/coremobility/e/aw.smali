.class public abstract Lcom/coremobility/e/aw;
.super Ljava/lang/Object;


# instance fields
.field protected A:Z

.field protected B:Z

.field protected C:Z

.field protected D:Lcom/coremobility/e/a;

.field private a:Lcom/coremobility/e/ax;

.field private b:Lcom/coremobility/e/ax;

.field protected p:Lcom/coremobility/integration/a/a;

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:Lcom/coremobility/e/y;

.field protected u:Lcom/coremobility/e/az;

.field protected v:Lcom/coremobility/e/bc;

.field protected w:Lcom/coremobility/e/ay;

.field protected x:Lcom/coremobility/e/ay;

.field protected y:Lcom/coremobility/e/c;

.field protected z:Lcom/coremobility/e/bd;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/e/aw;->A:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/e/aw;->B:Z

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/aw;->p:Lcom/coremobility/integration/a/a;

    invoke-static {}, Lcom/coremobility/e/y;->a()Lcom/coremobility/e/y;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/aw;->t:Lcom/coremobility/e/y;

    new-instance v0, Lcom/coremobility/e/az;

    invoke-direct {v0, p0}, Lcom/coremobility/e/az;-><init>(Lcom/coremobility/e/aw;)V

    iput-object v0, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    new-instance v0, Lcom/coremobility/e/bc;

    invoke-direct {v0, p0}, Lcom/coremobility/e/bc;-><init>(Lcom/coremobility/e/aw;)V

    iput-object v0, p0, Lcom/coremobility/e/aw;->v:Lcom/coremobility/e/bc;

    return-void
.end method

.method static synthetic a(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/e/aw;->b:Lcom/coremobility/e/ax;

    return-object v0
.end method

.method static synthetic b(Lcom/coremobility/e/aw;)Lcom/coremobility/e/ax;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/e/aw;->a:Lcom/coremobility/e/ax;

    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(I)I
.end method

.method protected abstract a(III)V
.end method

.method protected abstract a(IILjava/lang/Object;)V
.end method

.method public final b(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/coremobility/e/aw;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/aw;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/aw;->b:Lcom/coremobility/e/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/aw;->b:Lcom/coremobility/e/ax;

    invoke-virtual {v0, p1}, Lcom/coremobility/e/ax;->a(I)V

    :cond_0
    return-void
.end method

.method protected final b(IILjava/lang/Object;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, 0x21

    const/4 v7, 0x1

    const/4 v6, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    invoke-static {v6}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    check-cast p3, Lcom/coremobility/e/ap;

    iget-object v0, p0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v1

    if-eqz p3, :cond_3

    move v3, v7

    :goto_1
    if-eqz p3, :cond_4

    iget v4, p3, Lcom/coremobility/e/ap;->c:I

    :goto_2
    iget v5, p0, Lcom/coremobility/e/aw;->q:I

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/e/a;->a(IIZII)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget v0, p0, Lcom/coremobility/e/aw;->q:I

    if-eqz v0, :cond_5

    move v0, v7

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/coremobility/e/aw;->q:I

    iget v1, p0, Lcom/coremobility/e/aw;->s:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/coremobility/e/aw;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/coremobility/e/aw;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    :cond_2
    :goto_4
    invoke-static {v7}, Lcom/coremobility/integration/c/a;->a(Z)V

    const-string v0, "SendReqId 0 "

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v3, v6

    goto :goto_1

    :cond_4
    move v4, v6

    goto :goto_2

    :cond_5
    move v0, v6

    goto :goto_3

    :cond_6
    move v7, v6

    goto :goto_4

    :cond_7
    const/16 v0, 0x50

    if-ne p1, v0, :cond_8

    const-string v0, "SendReqId %d, StoppedSendReqId %d"

    new-array v1, v9, [Ljava/lang/Object;

    iget v2, p0, Lcom/coremobility/e/aw;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Lcom/coremobility/e/aw;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    if-nez p3, :cond_9

    iget-object v0, p0, Lcom/coremobility/e/aw;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0, p1, v6, v6}, Lcom/coremobility/e/bc;->a(III)V

    goto :goto_0

    :cond_9
    if-nez p1, :cond_b

    move v0, v7

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p3, Lcom/coremobility/e/ap;->a:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p3, Lcom/coremobility/e/ap;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p3, Lcom/coremobility/e/ap;->a:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/coremobility/e/aw;->q:I

    if-ne v0, v1, :cond_c

    move v0, v7

    :goto_6
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_a
    iget v0, p3, Lcom/coremobility/e/ap;->c:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->d()V

    iget-object v0, p0, Lcom/coremobility/e/aw;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->d()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/coremobility/e/aw;->a(IILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    move v0, v6

    goto :goto_5

    :cond_c
    move v0, v6

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v0

    if-nez v0, :cond_f

    iget v0, p3, Lcom/coremobility/e/ap;->c:I

    const/16 v1, 0xc2

    if-eq v0, v1, :cond_e

    iget v0, p3, Lcom/coremobility/e/ap;->c:I

    const/16 v1, 0xe4

    if-ne v0, v1, :cond_f

    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Lcom/coremobility/e/aw;->a(IILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/coremobility/e/aw;->v:Lcom/coremobility/e/bc;

    iget v1, p3, Lcom/coremobility/e/ap;->c:I

    invoke-virtual {v0, v6, v1, v7}, Lcom/coremobility/e/bc;->a(III)V

    goto/16 :goto_0

    :pswitch_2
    check-cast p3, Lcom/coremobility/e/an;

    iget-object v0, p0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v1

    iget-object v2, p3, Lcom/coremobility/e/an;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/coremobility/e/a;->a(IILjava/lang/String;)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    if-nez p1, :cond_11

    move v0, v7

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p3, :cond_12

    move v0, v7

    :goto_8
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p3, Lcom/coremobility/e/an;->a:Ljava/lang/String;

    if-eqz v0, :cond_13

    move v0, v7

    :goto_9
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p3, Lcom/coremobility/e/an;->e:Ljava/lang/String;

    if-eqz v0, :cond_14

    move v0, v7

    :goto_a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/aw;->y:Lcom/coremobility/e/c;

    iget-object v1, p3, Lcom/coremobility/e/an;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coremobility/e/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/e/aw;->z:Lcom/coremobility/e/bd;

    iget-object v1, p3, Lcom/coremobility/e/an;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/coremobility/e/bd;->c:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v0, v0, Lcom/coremobility/e/bd;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_b
    if-eqz v7, :cond_16

    :cond_10
    iget-object v0, p0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v1

    iget-object v2, p3, Lcom/coremobility/e/an;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/coremobility/e/a;->b(IILjava/lang/String;)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/coremobility/e/aw;->a(IILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    move v0, v6

    goto :goto_7

    :cond_12
    move v0, v6

    goto :goto_8

    :cond_13
    move v0, v6

    goto :goto_9

    :cond_14
    move v0, v6

    goto :goto_a

    :cond_15
    move v7, v6

    goto :goto_b

    :cond_16
    invoke-static {}, Lcom/coremobility/g/m;->a()Lcom/coremobility/g/m;

    invoke-static {}, Lcom/coremobility/g/m;->b()J

    move-result-wide v0

    long-to-int v3, v0

    const v0, 0x7fffffff

    iget v1, p3, Lcom/coremobility/e/an;->d:I

    if-eqz v1, :cond_2d

    invoke-static {v6}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p3, Lcom/coremobility/e/an;->d:I

    move v8, v0

    :goto_c
    iget-object v0, p0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v1

    iget v4, p3, Lcom/coremobility/e/an;->c:I

    const v2, 0x7fffffff

    if-ne v8, v2, :cond_17

    const/16 v5, 0xf

    :goto_d
    iget-object v6, p3, Lcom/coremobility/e/an;->a:Ljava/lang/String;

    iget-object v7, p3, Lcom/coremobility/e/an;->e:Ljava/lang/String;

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/e/a;->a(IIIIILjava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v2, p0, Lcom/coremobility/e/aw;->y:Lcom/coremobility/e/c;

    iget v4, p3, Lcom/coremobility/e/an;->c:I

    iget-object v6, p3, Lcom/coremobility/e/an;->a:Ljava/lang/String;

    iget-object v7, p3, Lcom/coremobility/e/an;->e:Ljava/lang/String;

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/coremobility/e/c;->a(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/coremobility/e/aw;->a(IILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_17
    move v5, v8

    goto :goto_d

    :pswitch_3
    check-cast p3, Lcom/coremobility/e/ar;

    iget-object v0, p0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v1

    if-eqz p3, :cond_18

    iget-object v3, p3, Lcom/coremobility/e/ar;->a:Ljava/lang/String;

    :goto_e
    if-eqz p3, :cond_19

    iget v2, p3, Lcom/coremobility/e/ar;->w:I

    int-to-byte v4, v2

    :goto_f
    if-eqz p3, :cond_1a

    iget-object v2, p3, Lcom/coremobility/e/ar;->c:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v5, p3, Lcom/coremobility/e/ar;->c:Ljava/lang/String;

    :goto_10
    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/e/a;->a(IILjava/lang/String;ILjava/lang/String;)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/e/aw;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    const-string v0, "CM+MMS%d ignored r-cnf"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_18
    const-string v3, "null"

    goto :goto_e

    :cond_19
    move v4, v6

    goto :goto_f

    :cond_1a
    const-string v5, "0"

    goto :goto_10

    :cond_1b
    iget-object v0, p0, Lcom/coremobility/e/aw;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->g()Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/aw;->b:Lcom/coremobility/e/ax;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/coremobility/e/aw;->b:Lcom/coremobility/e/ax;

    iget-object v0, p0, Lcom/coremobility/e/aw;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/coremobility/e/aw;->z:Lcom/coremobility/e/bd;

    invoke-virtual {v0}, Lcom/coremobility/e/bd;->c()Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v7

    :goto_11
    invoke-virtual {v1, v0}, Lcom/coremobility/e/ax;->a(Z)V

    :cond_1c
    if-nez p3, :cond_1e

    iget-object v0, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0, p1, v6, v9}, Lcom/coremobility/e/az;->a(III)V

    goto/16 :goto_0

    :cond_1d
    move v0, v6

    goto :goto_11

    :cond_1e
    if-nez p1, :cond_21

    move v0, v7

    :goto_12
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p3, Lcom/coremobility/e/ar;->a:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p3, Lcom/coremobility/e/ar;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/coremobility/e/aw;->y:Lcom/coremobility/e/c;

    iget-object v1, v1, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    :cond_1f
    invoke-static {v7}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p3, Lcom/coremobility/e/ar;->c:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/coremobility/e/aw;->b:Lcom/coremobility/e/ax;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/coremobility/e/aw;->b:Lcom/coremobility/e/ax;

    invoke-virtual {v0}, Lcom/coremobility/e/ax;->d()V

    :cond_20
    iget-object v0, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->d()V

    iget-object v0, p0, Lcom/coremobility/e/aw;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->d()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/coremobility/e/aw;->a(IILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_21
    move v0, v6

    goto :goto_12

    :cond_22
    iget v0, p3, Lcom/coremobility/e/ar;->w:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/coremobility/e/aw;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->f()V

    :cond_23
    iget-object v0, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    iget v1, p3, Lcom/coremobility/e/ar;->w:I

    invoke-virtual {v0, v6, v1, v10}, Lcom/coremobility/e/az;->a(III)V

    goto/16 :goto_0

    :pswitch_4
    check-cast p3, Lcom/coremobility/e/al;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coremobility/e/aw;->a(IILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_5
    check-cast p3, Lcom/coremobility/e/aq;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coremobility/e/aw;->a(IILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    if-nez p3, :cond_24

    move v0, v7

    :goto_13
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/coremobility/e/a;->d(II)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/e/aw;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_25

    const-string v0, "CM+MMS%d ignored ack-done"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_24
    move v0, v6

    goto :goto_13

    :cond_25
    iget-object v0, p0, Lcom/coremobility/e/aw;->z:Lcom/coremobility/e/bd;

    invoke-virtual {v0}, Lcom/coremobility/e/bd;->c()Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "CM+MMS%d no retrievalAck"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_26
    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v6, v1}, Lcom/coremobility/e/az;->a(III)V

    goto/16 :goto_0

    :cond_27
    iget-object v0, p0, Lcom/coremobility/e/aw;->b:Lcom/coremobility/e/ax;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/coremobility/e/aw;->b:Lcom/coremobility/e/ax;

    invoke-virtual {v0}, Lcom/coremobility/e/ax;->a()V

    :cond_28
    iget-object v0, p0, Lcom/coremobility/e/aw;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->d()V

    iget-object v0, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->d()V

    iget-object v0, p0, Lcom/coremobility/e/aw;->z:Lcom/coremobility/e/bd;

    invoke-virtual {v0}, Lcom/coremobility/e/bd;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coremobility/e/aw;->a(IILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_7
    check-cast p3, Lcom/coremobility/e/as;

    if-eqz p3, :cond_0

    iget v0, p3, Lcom/coremobility/e/as;->b:I

    if-nez v0, :cond_29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p3, Lcom/coremobility/e/as;->b:I

    :cond_29
    const-string v0, "CM+MMS%d Q %s( %d, %d ) %d %d"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p3, Lcom/coremobility/e/as;->a:Ljava/lang/String;

    aput-object v2, v1, v7

    iget v2, p3, Lcom/coremobility/e/as;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    iget v2, p3, Lcom/coremobility/e/as;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x4

    iget v3, p3, Lcom/coremobility/e/as;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p3, Lcom/coremobility/e/as;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/e/aw;->v:Lcom/coremobility/e/bc;

    iget v2, p3, Lcom/coremobility/e/as;->e:I

    iget v3, p3, Lcom/coremobility/e/as;->b:I

    iget v4, p3, Lcom/coremobility/e/as;->c:I

    iget v5, p3, Lcom/coremobility/e/as;->d:I

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/e/bc;->a(IIIII)V

    iget-object v0, p0, Lcom/coremobility/e/aw;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->c()Lcom/coremobility/j/h;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/coremobility/e/aw;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v1}, Lcom/coremobility/e/ay;->a()I

    move-result v1

    if-ne v1, v10, :cond_2a

    iget-object v1, p0, Lcom/coremobility/e/aw;->v:Lcom/coremobility/e/bc;

    iput v6, v1, Lcom/coremobility/e/bc;->d:I

    iget-object v1, p0, Lcom/coremobility/e/aw;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0, v1}, Lcom/coremobility/j/h;->a(Lcom/coremobility/j/j;)V

    :cond_2a
    iget-object v0, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    iget v2, p3, Lcom/coremobility/e/as;->e:I

    iget v3, p3, Lcom/coremobility/e/as;->b:I

    iget v4, p3, Lcom/coremobility/e/as;->c:I

    iget v5, p3, Lcom/coremobility/e/as;->d:I

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/e/az;->a(IIIII)V

    iget-object v0, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->c()Lcom/coremobility/j/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coremobility/e/aw;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v1}, Lcom/coremobility/e/ay;->a()I

    move-result v1

    if-ne v1, v7, :cond_2b

    iget-object v1, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    iput v9, v1, Lcom/coremobility/e/az;->d:I

    iget-object v1, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0, v1}, Lcom/coremobility/j/h;->a(Lcom/coremobility/j/j;)V

    goto/16 :goto_0

    :cond_2b
    iget-object v1, p0, Lcom/coremobility/e/aw;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v1}, Lcom/coremobility/e/ay;->a()I

    move-result v1

    if-ne v1, v10, :cond_2c

    iget-object v1, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    iput v9, v1, Lcom/coremobility/e/az;->d:I

    iget-object v1, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0, v1}, Lcom/coremobility/j/h;->a(Lcom/coremobility/j/j;)V

    goto/16 :goto_0

    :cond_2c
    iget-object v1, p0, Lcom/coremobility/e/aw;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v1}, Lcom/coremobility/e/ay;->a()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    const/4 v2, 0x4

    iput v2, v1, Lcom/coremobility/e/az;->d:I

    iget-object v1, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0, v1}, Lcom/coremobility/j/h;->a(Lcom/coremobility/j/j;)V

    goto/16 :goto_0

    :cond_2d
    move v8, v0

    goto/16 :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected h()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/e/aw;->p:Lcom/coremobility/integration/a/a;

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v1

    add-int/lit16 v1, v1, 0x1360

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/a;->a(I)V

    iget-object v0, p0, Lcom/coremobility/e/aw;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/e/aw;->b:Lcom/coremobility/e/ax;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/e/aw;->b:Lcom/coremobility/e/ax;

    invoke-virtual {v0}, Lcom/coremobility/e/ax;->a()V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/e/aw;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->d()V

    goto :goto_0
.end method

.method protected final i()I
    .locals 1

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v0

    add-int/lit16 v0, v0, 0x1360

    return v0
.end method

.method protected j()V
    .locals 4

    iget-boolean v0, p0, Lcom/coremobility/e/aw;->A:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/coremobility/e/ax;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/coremobility/e/ah;->k:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SFLOG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coremobility/e/ax;-><init>(Lcom/coremobility/e/aw;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/e/aw;->a:Lcom/coremobility/e/ax;

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/e/aw;->B:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/coremobility/e/ax;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/coremobility/e/ah;->k:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coremobility/e/aw;->a()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RFLOG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coremobility/e/ax;-><init>(Lcom/coremobility/e/aw;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/e/aw;->b:Lcom/coremobility/e/ax;

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 2

    iget-boolean v0, p0, Lcom/coremobility/e/aw;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/aw;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/aw;->t:Lcom/coremobility/e/y;

    invoke-virtual {v0}, Lcom/coremobility/e/y;->g()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/aw;->b:Lcom/coremobility/e/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/aw;->b:Lcom/coremobility/e/ax;

    invoke-virtual {v0}, Lcom/coremobility/e/ax;->b()V

    :cond_0
    return-void
.end method
