.class public final Lcom/coremobility/l/aq;
.super Lorg/xml/sax/helpers/DefaultHandler;


# static fields
.field static j:Ljava/util/Hashtable;


# instance fields
.field a:Ljava/lang/StringBuffer;

.field b:I

.field c:I

.field d:Lcom/coremobility/l/an;

.field e:Lcom/coremobility/l/aj;

.field f:Lcom/coremobility/l/ak;

.field g:Lcom/coremobility/l/al;

.field h:Lcom/coremobility/l/am;

.field i:Lcom/coremobility/l/ai;

.field k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/l/aq;->j:Ljava/util/Hashtable;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    iput v2, p0, Lcom/coremobility/l/aq;->b:I

    iput v2, p0, Lcom/coremobility/l/aq;->c:I

    iput-object v1, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    iput-object v1, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iput-object v1, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iput-object v1, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    iput-object v1, p0, Lcom/coremobility/l/aq;->h:Lcom/coremobility/l/am;

    iput-object v1, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    iput-boolean v2, p0, Lcom/coremobility/l/aq;->k:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    const/4 v1, -0x1

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/coremobility/l/aq;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

.method private static a()V
    .locals 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/coremobility/l/aq;->j:Ljava/util/Hashtable;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/coremobility/l/ao;->a:[Lcom/coremobility/j/o;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/coremobility/l/aq;->j:Ljava/util/Hashtable;

    sget-object v2, Lcom/coremobility/l/ao;->a:[Lcom/coremobility/j/o;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/coremobility/j/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/Integer;

    sget-object v4, Lcom/coremobility/l/ao;->a:[Lcom/coremobility/j/o;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/coremobility/j/o;->b:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/coremobility/l/an;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    iput v2, p0, Lcom/coremobility/l/aq;->b:I

    iput v2, p0, Lcom/coremobility/l/aq;->c:I

    iput-object v1, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iput-object v1, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iput-object v1, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    iput-object v1, p0, Lcom/coremobility/l/aq;->h:Lcom/coremobility/l/am;

    iput-object v1, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    sget-object v0, Lcom/coremobility/l/aq;->j:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coremobility/l/aq;->a()V

    :cond_0
    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/l/v;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/l/aq;->k:Z

    return-void
.end method

.method public final characters([CII)V
    .locals 4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-boolean v1, p0, Lcom/coremobility/l/aq;->k:Z

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
    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-static {p2}, Lcom/coremobility/l/aq;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/coremobility/l/aq;->c:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/coremobility/l/aq;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coremobility/l/aq;->b:I

    return-void

    :pswitch_1
    if-nez v0, :cond_1

    iget v0, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v0, v5, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :pswitch_2
    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    iget-object v0, v0, Lcom/coremobility/l/an;->b:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iput v5, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v6, :cond_2

    iput v2, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v4, :cond_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/aj;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/aj;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/aj;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/aj;->d:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v0, v0, Lcom/coremobility/l/aj;->e:Ljava/util/Vector;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/aj;->e:Ljava/util/Vector;

    :cond_3
    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v0, v0, Lcom/coremobility/l/aj;->e:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_9
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v6, :cond_4

    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v0, v0, Lcom/coremobility/l/aj;->f:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iput v2, p0, Lcom/coremobility/l/aq;->c:I

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v4, :cond_0

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ak;->c:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ak;->a:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ak;->b:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_d
    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v0, v4, :cond_0

    iput v4, p0, Lcom/coremobility/l/aq;->c:I

    goto/16 :goto_0

    :pswitch_e
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iget-object v0, v0, Lcom/coremobility/l/ak;->d:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    const/4 v0, 0x5

    iput v0, p0, Lcom/coremobility/l/aq;->c:I

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/al;->a:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/al;->b:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_11
    const/16 v1, 0x12

    if-ne v0, v1, :cond_6

    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    iget-object v0, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    iget-object v0, v0, Lcom/coremobility/l/al;->c:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aq;->h:Lcom/coremobility/l/am;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/coremobility/l/aq;->h:Lcom/coremobility/l/am;

    const/4 v0, 0x6

    iput v0, p0, Lcom/coremobility/l/aq;->c:I

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/coremobility/l/aq;->h:Lcom/coremobility/l/am;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/am;->a:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/coremobility/l/aq;->h:Lcom/coremobility/l/am;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/am;->b:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_12
    const/16 v1, 0x14

    if-ne v0, v1, :cond_7

    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v2, :cond_7

    iput v5, p0, Lcom/coremobility/l/aq;->c:I

    iget-object v0, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    iget-object v0, v0, Lcom/coremobility/l/an;->c:Ljava/util/Vector;

    iget-object v1, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v6, :cond_0

    packed-switch v0, :pswitch_data_4

    :pswitch_13
    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ai;->c:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ai;->a:I

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ai;->b:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ai;->d:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_18
    iget-object v0, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ai;->e:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_19
    iget-object v0, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    iget-object v1, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ai;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x10
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0xd
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/coremobility/l/aq;->k:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/coremobility/l/aq;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/l/aq;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->a:Ljava/lang/StringBuffer;

    invoke-static {p2}, Lcom/coremobility/l/aq;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/coremobility/l/aq;->c:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v0, v3, :cond_1

    iput v3, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v4, :cond_1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    iget-object v0, v0, Lcom/coremobility/l/an;->b:Ljava/util/Vector;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/an;->b:Ljava/util/Vector;

    :cond_2
    new-instance v0, Lcom/coremobility/l/aj;

    invoke-direct {v0}, Lcom/coremobility/l/aj;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iput v4, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    iget-object v0, v0, Lcom/coremobility/l/an;->c:Ljava/util/Vector;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/l/aq;->d:Lcom/coremobility/l/an;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/an;->c:Ljava/util/Vector;

    :cond_3
    new-instance v0, Lcom/coremobility/l/ai;

    invoke-direct {v0}, Lcom/coremobility/l/ai;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->i:Lcom/coremobility/l/ai;

    const/16 v0, 0x8

    iput v0, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_0

    :pswitch_3
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v5, :cond_1

    packed-switch v0, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    :pswitch_5
    iput v5, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    iget-object v0, v0, Lcom/coremobility/l/aj;->f:Ljava/util/Vector;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/l/aq;->e:Lcom/coremobility/l/aj;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/aj;->f:Ljava/util/Vector;

    :cond_4
    new-instance v0, Lcom/coremobility/l/ak;

    invoke-direct {v0}, Lcom/coremobility/l/ak;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    iput v6, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_0

    :pswitch_7
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v6, :cond_1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/coremobility/l/aq;->f:Lcom/coremobility/l/ak;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/ak;->d:Ljava/util/Vector;

    iput v7, p0, Lcom/coremobility/l/aq;->c:I

    goto :goto_0

    :pswitch_9
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    if-ne v1, v7, :cond_1

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lcom/coremobility/l/al;

    invoke-direct {v0}, Lcom/coremobility/l/al;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->g:Lcom/coremobility/l/al;

    const/4 v0, 0x6

    iput v0, p0, Lcom/coremobility/l/aq;->c:I

    goto/16 :goto_0

    :pswitch_b
    iget v1, p0, Lcom/coremobility/l/aq;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Lcom/coremobility/l/am;

    invoke-direct {v0}, Lcom/coremobility/l/am;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/aq;->h:Lcom/coremobility/l/am;

    const/4 v0, 0x7

    iput v0, p0, Lcom/coremobility/l/aq;->c:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x12
        :pswitch_c
    .end packed-switch
.end method
