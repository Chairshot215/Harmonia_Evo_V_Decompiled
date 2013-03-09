.class public final Lcom/coremobility/l/aa;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field a:Lcom/coremobility/l/ac;

.field b:Lcom/coremobility/l/ag;

.field c:Ljava/lang/StringBuffer;

.field d:I

.field final synthetic e:Lcom/coremobility/l/v;


# direct methods
.method protected constructor <init>(Lcom/coremobility/l/v;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iput-object v0, p0, Lcom/coremobility/l/aa;->b:Lcom/coremobility/l/ag;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/l/aa;->d:I

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    const/4 v1, -0x1

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->M:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private a(III)V
    .locals 3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput p3, v0, Lcom/coremobility/l/v;->H:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/coremobility/l/af;->b:J

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/af;->a:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(III)V
    .locals 3

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput p3, v0, Lcom/coremobility/l/v;->H:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ad;->c:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(III)V
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput p3, v0, Lcom/coremobility/l/v;->H:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ac;->b:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ac;->f:I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final characters([CII)V
    .locals 4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-boolean v1, v1, Lcom/coremobility/l/v;->u:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chars: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, p2}, Lcom/coremobility/l/aa;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget v1, v1, Lcom/coremobility/l/v;->H:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coremobility/l/aa;->d:I

    return-void

    :pswitch_0
    invoke-direct {p0, v0, v2, v3}, Lcom/coremobility/l/aa;->a(III)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0, v6, v2}, Lcom/coremobility/l/aa;->b(III)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0, v6, v2}, Lcom/coremobility/l/aa;->c(III)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v0, v3, v5}, Lcom/coremobility/l/aa;->a(III)V

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x6

    invoke-direct {p0, v0, v2, v1}, Lcom/coremobility/l/aa;->b(III)V

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x6

    invoke-direct {p0, v0, v2, v1}, Lcom/coremobility/l/aa;->c(III)V

    goto :goto_0

    :pswitch_6
    if-nez v0, :cond_1

    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v3, :cond_1

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput v5, v0, Lcom/coremobility/l/v;->H:I

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v6, :cond_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ac;->b:I

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ac;->f:I

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_e
    if-nez v0, :cond_3

    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput v3, v0, Lcom/coremobility/l/v;->H:I

    goto/16 :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v6, :cond_4

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ac;->b:I

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ac;->f:I

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_16
    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v3, :cond_5

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->G:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aa;->b:Lcom/coremobility/l/ag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v2, :cond_0

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/coremobility/l/aa;->b:Lcom/coremobility/l/ag;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ag;->a:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_18
    iget-object v0, p0, Lcom/coremobility/l/aa;->b:Lcom/coremobility/l/ag;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ag;->b:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_19
    iget-object v0, p0, Lcom/coremobility/l/aa;->b:Lcom/coremobility/l/ag;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ag;->c:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1a
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v3, :cond_6

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput v5, v0, Lcom/coremobility/l/v;->H:I

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v2, :cond_0

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_1b
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ad;->c:I

    goto/16 :goto_0

    :pswitch_1c
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1d
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1e
    const/16 v1, 0x16

    if-ne v0, v1, :cond_7

    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v3, :cond_7

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput v5, v0, Lcom/coremobility/l/v;->H:I

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v2, :cond_0

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_0

    :pswitch_1f
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->L:Lcom/coremobility/l/ae;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ae;->a:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_20
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->L:Lcom/coremobility/l/ae;

    iget-object v1, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ae;->b:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_1a
        :pswitch_16
        :pswitch_1e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x13
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xe
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x17
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/16 v5, 0x31

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-boolean v0, v0, Lcom/coremobility/l/v;->u:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Tag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/coremobility/l/aa;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/l/aa;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aa;->c:Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Lcom/coremobility/l/aa;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget v2, v2, Lcom/coremobility/l/v;->H:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v4, :cond_1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/16 v1, 0x9

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput v4, v0, Lcom/coremobility/l/v;->H:I

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/4 v1, 0x6

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/af;

    invoke-direct {v1}, Lcom/coremobility/l/af;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/16 v1, 0xb

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->G:Ljava/util/Vector;

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/16 v1, 0xc

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/ae;

    invoke-direct {v1}, Lcom/coremobility/l/ae;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->L:Lcom/coremobility/l/ae;

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/16 v1, 0xa

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/ad;

    invoke-direct {v1}, Lcom/coremobility/l/ad;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v3, :cond_1

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput v6, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iput v3, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/af;

    invoke-direct {v1}, Lcom/coremobility/l/af;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v2, v6, :cond_1

    sparse-switch v0, :sswitch_data_2

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/4 v1, 0x4

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/ac;

    invoke-direct {v1}, Lcom/coremobility/l/ac;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/4 v1, 0x5

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/ad;

    invoke-direct {v1}, Lcom/coremobility/l/ad;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    goto/16 :goto_0

    :sswitch_a
    move v0, v1

    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/coremobility/l/aa;->a(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_b
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    goto :goto_2

    :sswitch_c
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    goto :goto_2

    :sswitch_d
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    goto :goto_2

    :sswitch_e
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/coremobility/l/af;->g:I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-boolean v0, v0, Lcom/coremobility/l/v;->u:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResponseCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorDescription: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RetryActionTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v2, v2, Lcom/coremobility/l/af;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    goto :goto_5

    :pswitch_4
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v6, :cond_1

    if-ne v0, v4, :cond_1

    new-instance v0, Lcom/coremobility/l/ac;

    invoke-direct {v0}, Lcom/coremobility/l/ac;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    goto/16 :goto_0

    :pswitch_5
    iget v2, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v2, v3, :cond_1

    sparse-switch v0, :sswitch_data_4

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/4 v1, 0x7

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/ac;

    invoke-direct {v1}, Lcom/coremobility/l/ac;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    const/16 v1, 0x8

    iput v1, v0, Lcom/coremobility/l/v;->H:I

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    new-instance v1, Lcom/coremobility/l/ad;

    invoke-direct {v1}, Lcom/coremobility/l/ad;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    goto/16 :goto_0

    :sswitch_11
    move v0, v1

    :goto_6
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/coremobility/l/aa;->a(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_5

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :sswitch_12
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    goto :goto_7

    :sswitch_13
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    goto :goto_7

    :sswitch_14
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    goto :goto_7

    :sswitch_15
    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/coremobility/l/af;->g:I

    goto :goto_7

    :cond_6
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-boolean v0, v0, Lcom/coremobility/l/v;->u:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResponseCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorDescription: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RetryActionTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v2, v2, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v2, v2, Lcom/coremobility/l/af;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    goto :goto_8

    :cond_8
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    goto :goto_9

    :cond_9
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    goto :goto_a

    :pswitch_6
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v3, :cond_1

    if-ne v0, v4, :cond_1

    new-instance v0, Lcom/coremobility/l/ac;

    invoke-direct {v0}, Lcom/coremobility/l/ac;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aa;->a:Lcom/coremobility/l/ac;

    goto/16 :goto_0

    :pswitch_7
    iget v2, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v2, v3, :cond_1

    const/16 v2, 0x19

    if-ne v0, v2, :cond_1

    :goto_b
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/l/aa;->a(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_6

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :sswitch_16
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/coremobility/l/ad;->d:Ljava/lang/String;

    goto :goto_c

    :sswitch_17
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/coremobility/l/ad;->e:Ljava/lang/String;

    goto :goto_c

    :sswitch_18
    iget-object v0, p0, Lcom/coremobility/l/aa;->e:Lcom/coremobility/l/v;

    iget-object v0, v0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/coremobility/l/ad;->f:Ljava/lang/String;

    goto :goto_c

    :pswitch_8
    iget v1, p0, Lcom/coremobility/l/aa;->d:I

    if-ne v1, v3, :cond_1

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/coremobility/l/ag;

    invoke-direct {v0}, Lcom/coremobility/l/ag;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aa;->b:Lcom/coremobility/l/ag;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xd -> :sswitch_5
        0x11 -> :sswitch_3
        0x16 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_6
        0xa -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_8
        0xd -> :sswitch_9
        0x19 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x8 -> :sswitch_d
        0x1a -> :sswitch_b
        0x1b -> :sswitch_c
        0x1c -> :sswitch_e
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_f
        0xd -> :sswitch_10
        0x19 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x8 -> :sswitch_14
        0x1a -> :sswitch_12
        0x1b -> :sswitch_13
        0x1c -> :sswitch_15
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        0x8 -> :sswitch_18
        0x1a -> :sswitch_16
        0x1b -> :sswitch_17
    .end sparse-switch
.end method
