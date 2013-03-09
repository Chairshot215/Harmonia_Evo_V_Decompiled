.class public final Lcom/coremobility/k/f;
.super Lcom/coremobility/j/l;


# instance fields
.field private a:Lcom/coremobility/k/df;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/j/l;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/k/f;->a:Lcom/coremobility/k/df;

    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 8

    const/16 v7, 0x1c

    const/4 v6, 0x0

    iget v0, p0, Lcom/coremobility/k/f;->d:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/coremobility/k/f;->x()I

    move-result v0

    iget v1, p0, Lcom/coremobility/k/f;->r:I

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/coremobility/k/f;->d:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/coremobility/k/f;->d:I

    iget-object v1, p0, Lcom/coremobility/k/f;->a:Lcom/coremobility/k/df;

    invoke-virtual {v1}, Lcom/coremobility/k/df;->m()J

    move-result-wide v1

    int-to-long v3, p1

    or-long/2addr v1, v3

    iget-object v3, p0, Lcom/coremobility/k/f;->a:Lcom/coremobility/k/df;

    invoke-virtual {v3, v1, v2}, Lcom/coremobility/k/df;->a(J)V

    iget-object v1, p0, Lcom/coremobility/k/f;->a:Lcom/coremobility/k/df;

    invoke-virtual {v1}, Lcom/coremobility/k/df;->l()[J

    move-result-object v1

    aget-wide v2, v1, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    aget-wide v2, v1, p2

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    :cond_2
    int-to-long v2, v0

    aput-wide v2, v1, p2

    :cond_3
    iget-object v2, p0, Lcom/coremobility/k/f;->a:Lcom/coremobility/k/df;

    invoke-virtual {v2}, Lcom/coremobility/k/df;->p()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method final a([BIILcom/coremobility/k/df;)Z
    .locals 10

    const/4 v9, 0x4

    const/4 v0, 0x1

    const/4 v8, 0x2

    const/16 v7, 0x1c

    const/4 v1, 0x0

    iput-object p4, p0, Lcom/coremobility/k/f;->a:Lcom/coremobility/k/df;

    iput-boolean v1, p0, Lcom/coremobility/k/f;->e:Z

    iput p2, p0, Lcom/coremobility/k/f;->p:I

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_a

    iget v2, p0, Lcom/coremobility/k/f;->d:I

    if-eqz v2, :cond_a

    :goto_2
    return v0

    :cond_2
    iput-object p1, p0, Lcom/coremobility/k/f;->o:[B

    iput p3, p0, Lcom/coremobility/k/f;->b:I

    iput v1, p0, Lcom/coremobility/k/f;->c:I

    iput v1, p0, Lcom/coremobility/k/f;->d:I

    :goto_3
    iget v2, p0, Lcom/coremobility/k/f;->q:I

    if-ge v2, p2, :cond_8

    iput v1, p0, Lcom/coremobility/k/f;->r:I

    iget-object v2, p0, Lcom/coremobility/k/f;->o:[B

    iget v3, p0, Lcom/coremobility/k/f;->q:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/coremobility/k/f;->q:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    if-ge v2, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    packed-switch v2, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unk field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/k/f;->D()V

    goto :goto_3

    :pswitch_0
    iget-boolean v2, p0, Lcom/coremobility/k/f;->e:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/coremobility/k/f;->b:I

    if-eq v2, v8, :cond_4

    invoke-virtual {p0}, Lcom/coremobility/k/f;->D()V

    const-string v2, "ed const ts-recv"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget v2, p0, Lcom/coremobility/k/f;->d:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_5

    const-string v2, "dup ts-recv"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/coremobility/k/f;->x()I

    move-result v2

    iget v3, p0, Lcom/coremobility/k/f;->r:I

    if-eqz v3, :cond_6

    const-string v2, "fail ts-recv"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/coremobility/k/f;->b:I

    if-ne v3, v8, :cond_7

    iget v3, p0, Lcom/coremobility/k/f;->d:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/coremobility/k/f;->d:I

    iget-object v3, p0, Lcom/coremobility/k/f;->a:Lcom/coremobility/k/df;

    invoke-virtual {v3}, Lcom/coremobility/k/df;->m()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    or-long/2addr v3, v5

    iget-object v5, p0, Lcom/coremobility/k/f;->a:Lcom/coremobility/k/df;

    invoke-virtual {v5, v3, v4}, Lcom/coremobility/k/df;->a(J)V

    :cond_7
    iget-object v3, p0, Lcom/coremobility/k/f;->a:Lcom/coremobility/k/df;

    invoke-virtual {v3}, Lcom/coremobility/k/df;->l()[J

    move-result-object v3

    int-to-long v4, v2

    aput-wide v4, v3, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ts-recv "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1
    const/4 v2, 0x3

    const-string v3, "ts-read"

    invoke-direct {p0, v8, v2, v3}, Lcom/coremobility/k/f;->a(IILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_2
    const-string v2, "ts-repl"

    invoke-direct {p0, v9, v9, v2}, Lcom/coremobility/k/f;->a(IILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    const/16 v2, 0x8

    const/4 v3, 0x5

    const-string v4, "ts-fwd"

    invoke-direct {p0, v2, v3, v4}, Lcom/coremobility/k/f;->a(IILjava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    iget v2, p0, Lcom/coremobility/k/f;->r:I

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/coremobility/k/f;->r:I

    if-ne v2, v8, :cond_1

    :cond_9
    move v2, v0

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
