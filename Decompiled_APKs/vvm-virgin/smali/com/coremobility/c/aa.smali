.class public final Lcom/coremobility/c/aa;
.super Lcom/coremobility/e/aw;

# interfaces
.implements Lcom/coremobility/g/a;


# static fields
.field public static a:Ljava/lang/String;

.field protected static l:I

.field protected static final o:[I


# instance fields
.field protected b:Lcom/coremobility/g/b;

.field protected c:Lcom/coremobility/g/m;

.field protected d:Lcom/coremobility/c/d;

.field protected e:Lcom/coremobility/c/ad;

.field protected f:Lcom/coremobility/c/ah;

.field protected g:Lcom/coremobility/integration/message/c;

.field protected h:I

.field protected i:I

.field protected j:Z

.field protected k:Z

.field protected final m:[Ljava/lang/String;

.field protected final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "date-notified"

    sput-object v0, Lcom/coremobility/c/aa;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/coremobility/c/aa;->l:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coremobility/c/aa;->o:[I

    return-void

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/coremobility/e/aw;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "activate@nab.sprint.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/coremobility/c/aa;->m:[Ljava/lang/String;

    const-string v0, "dm@cm.com"

    iput-object v0, p0, Lcom/coremobility/c/aa;->n:Ljava/lang/String;

    new-instance v0, Lcom/coremobility/c/f;

    invoke-direct {v0}, Lcom/coremobility/c/f;-><init>()V

    iput-object v0, p0, Lcom/coremobility/c/aa;->D:Lcom/coremobility/e/a;

    new-instance v0, Lcom/coremobility/e/bd;

    invoke-direct {v0, p0}, Lcom/coremobility/e/bd;-><init>(Lcom/coremobility/e/aw;)V

    iput-object v0, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    new-instance v0, Lcom/coremobility/c/ac;

    invoke-direct {v0, p0}, Lcom/coremobility/c/ac;-><init>(Lcom/coremobility/c/aa;)V

    iput-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    new-instance v0, Lcom/coremobility/c/ac;

    invoke-direct {v0, p0}, Lcom/coremobility/c/ac;-><init>(Lcom/coremobility/c/aa;)V

    iput-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    return-void
.end method

.method static synthetic a(Lcom/coremobility/c/aa;)I
    .locals 1

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->i()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/coremobility/c/aa;)Lcom/coremobility/e/bd;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    return-object v0
.end method

.method static synthetic c(Lcom/coremobility/c/aa;)Lcom/coremobility/e/bd;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    return-object v0
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/c/aa;->f:Lcom/coremobility/c/ah;

    invoke-virtual {v0}, Lcom/coremobility/c/ah;->g()Lcom/coremobility/c/ai;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/c/aa;->i:I

    invoke-virtual {v0, v1}, Lcom/coremobility/c/ai;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-direct {p0}, Lcom/coremobility/c/aa;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/c/aa;->e:Lcom/coremobility/c/ad;

    invoke-virtual {v0}, Lcom/coremobility/c/ad;->g()S

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coremobility/c/aa;->e:Lcom/coremobility/c/ad;

    invoke-virtual {v0}, Lcom/coremobility/c/ad;->c()V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/c/aa;->e:Lcom/coremobility/c/ad;

    invoke-virtual {v0}, Lcom/coremobility/c/ad;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/coremobility/c/aa;)Lcom/coremobility/e/ay;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DM-PRO-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/c/aa;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private m()V
    .locals 13

    const/4 v3, 0x0

    const/16 v9, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const v0, 0x50001

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->f()I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_0

    const/16 v1, 0x193

    if-eq v0, v1, :cond_0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/coremobility/integration/a/a;->h()V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/c/aa;->f:Lcom/coremobility/c/ah;

    invoke-virtual {v0}, Lcom/coremobility/c/ah;->g()Lcom/coremobility/c/ai;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/c/aa;->i:I

    invoke-virtual {v0, v1}, Lcom/coremobility/c/ai;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/coremobility/c/aa;->i:I

    if-ltz v0, :cond_3

    if-ge v0, v8, :cond_3

    move v0, v7

    :goto_0
    if-nez v0, :cond_4

    invoke-static {v6}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/coremobility/c/aa;->f:Lcom/coremobility/c/ah;

    invoke-virtual {v0}, Lcom/coremobility/c/ah;->g()Lcom/coremobility/c/ai;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/c/aa;->i:I

    iget-object v2, v0, Lcom/coremobility/c/ai;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_5

    invoke-static {v6}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v0, v6

    :goto_2
    iput v0, p0, Lcom/coremobility/c/aa;->q:I

    iget v0, p0, Lcom/coremobility/c/aa;->q:I

    iget v1, p0, Lcom/coremobility/c/aa;->r:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v9}, Lcom/coremobility/e/ay;->b(I)V

    iget v0, p0, Lcom/coremobility/c/aa;->q:I

    iput v0, p0, Lcom/coremobility/c/aa;->s:I

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lcom/coremobility/c/ai;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/ak;

    iget v0, v0, Lcom/coremobility/c/ak;->b:I

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v8}, Lcom/coremobility/e/ay;->b(I)V

    const/16 v0, 0x1a

    const-string v1, "CM+DMM%d send %d"

    new-array v2, v8, [Ljava/lang/Object;

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    iget v4, p0, Lcom/coremobility/c/aa;->h:I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/coremobility/c/aa;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/c/aa;->q:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1, v7}, Lcom/coremobility/g/l;->a(JZ)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/coremobility/e/at;

    invoke-direct {v1}, Lcom/coremobility/e/at;-><init>()V

    iput-object v0, v1, Lcom/coremobility/e/at;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/c/aa;->p:Lcom/coremobility/integration/a/a;

    invoke-virtual {v0, v6}, Lcom/coremobility/integration/a/a;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/coremobility/e/at;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/c/aa;->m:[Ljava/lang/String;

    iget v2, p0, Lcom/coremobility/c/aa;->i:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/coremobility/e/at;->i:Ljava/lang/String;

    iput v7, v1, Lcom/coremobility/e/at;->y:I

    new-array v2, v7, [Lcom/coremobility/e/au;

    const-string v0, "This is a dm provisioning message"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    :try_start_0
    invoke-direct {p0}, Lcom/coremobility/c/aa;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/coremobility/integration/file/b;->a(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance v0, Lcom/coremobility/e/au;

    invoke-direct {v0}, Lcom/coremobility/e/au;-><init>()V

    aput-object v0, v2, v6

    aget-object v0, v2, v6

    const v4, 0x80001

    iput v4, v0, Lcom/coremobility/e/au;->a:I

    aget-object v0, v2, v6

    iput v3, v0, Lcom/coremobility/e/au;->b:I

    aget-object v0, v2, v6

    invoke-direct {p0}, Lcom/coremobility/c/aa;->l()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/coremobility/e/at;->z:[Lcom/coremobility/e/au;

    iget-object v0, p0, Lcom/coremobility/c/aa;->t:Lcom/coremobility/e/y;

    sget-object v2, Lcom/coremobility/c/aa;->o:[I

    iget v3, p0, Lcom/coremobility/c/aa;->h:I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/y;->a(Lcom/coremobility/e/at;I)I

    move-result v1

    if-nez v1, :cond_7

    move v0, v7

    :goto_4
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/coremobility/c/aa;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0, v1, v6, v6}, Lcom/coremobility/e/bc;->a(III)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_7
    move v0, v6

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/coremobility/c/aa;->e:Lcom/coremobility/c/ad;

    invoke-virtual {v0}, Lcom/coremobility/c/ad;->g()S

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v7}, Lcom/coremobility/e/ay;->b(I)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/coremobility/c/aa;->e:Lcom/coremobility/c/ad;

    invoke-virtual {v0}, Lcom/coremobility/c/ad;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/coremobility/c/aa;->e:Lcom/coremobility/c/ad;

    invoke-virtual {v0}, Lcom/coremobility/c/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    goto/16 :goto_1

    :cond_a
    new-instance v1, Lcom/coremobility/integration/h/d;

    invoke-direct {v1, v3}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/coremobility/integration/h/d;

    invoke-direct {v2, v3}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/coremobility/integration/h/d;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/coremobility/integration/h/d;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/coremobility/integration/h/d;

    iget v0, p0, Lcom/coremobility/c/aa;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->e:Lcom/coremobility/c/ad;

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/c/ad;->a(Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)V

    iget-object v0, v1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v3, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v4, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v5, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/coremobility/c/aa;->q:I

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    move v2, v7

    :goto_5
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_e

    :cond_b
    if-nez v4, :cond_d

    move v2, v7

    :goto_6
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v2, p0, Lcom/coremobility/c/aa;->q:I

    if-eqz v2, :cond_10

    move v2, v7

    :goto_7
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v2, p0, Lcom/coremobility/c/aa;->q:I

    iget v5, p0, Lcom/coremobility/c/aa;->r:I

    if-ne v2, v5, :cond_11

    iget-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v9}, Lcom/coremobility/e/ay;->b(I)V

    iget v0, p0, Lcom/coremobility/c/aa;->q:I

    iput v0, p0, Lcom/coremobility/c/aa;->s:I

    goto/16 :goto_1

    :cond_c
    move v2, v6

    goto :goto_5

    :cond_d
    move v2, v6

    goto :goto_6

    :cond_e
    if-eqz v4, :cond_f

    move v2, v7

    goto :goto_6

    :cond_f
    move v2, v6

    goto :goto_6

    :cond_10
    move v2, v6

    goto :goto_7

    :cond_11
    iget-object v2, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v2, v8}, Lcom/coremobility/e/ay;->b(I)V

    new-instance v2, Lcom/coremobility/c/u;

    sget-object v5, Lcom/coremobility/c/aa;->o:[I

    iget v9, p0, Lcom/coremobility/c/aa;->h:I

    aget v5, v5, v9

    iget v9, p0, Lcom/coremobility/c/aa;->q:I

    invoke-direct {v2, v5, v9}, Lcom/coremobility/c/u;-><init>(II)V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget v2, p0, Lcom/coremobility/c/aa;->q:I

    int-to-long v9, v2

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    invoke-static {v9, v10, v7}, Lcom/coremobility/g/l;->a(JZ)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/coremobility/e/at;

    invoke-direct {v5}, Lcom/coremobility/e/at;-><init>()V

    iput-object v2, v5, Lcom/coremobility/e/at;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/c/aa;->p:Lcom/coremobility/integration/a/a;

    invoke-virtual {v2, v6}, Lcom/coremobility/integration/a/a;->d(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/coremobility/e/at;->e:Ljava/lang/String;

    const-string v2, "dm@cm.com"

    iput-object v2, v5, Lcom/coremobility/e/at;->i:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move v2, v7

    :goto_8
    iput v2, v5, Lcom/coremobility/e/at;->y:I

    new-array v2, v8, [Lcom/coremobility/e/au;

    new-instance v8, Lcom/coremobility/e/au;

    invoke-direct {v8}, Lcom/coremobility/e/au;-><init>()V

    aput-object v8, v2, v6

    aget-object v8, v2, v6

    const v9, 0x10003

    iput v9, v8, Lcom/coremobility/e/au;->a:I

    aget-object v8, v2, v6

    iput v3, v8, Lcom/coremobility/e/au;->b:I

    aget-object v3, v2, v6

    iput-object v0, v3, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    if-eqz v1, :cond_13

    new-instance v0, Lcom/coremobility/e/au;

    invoke-direct {v0}, Lcom/coremobility/e/au;-><init>()V

    aput-object v0, v2, v7

    aget-object v0, v2, v7

    const v3, 0x10002

    iput v3, v0, Lcom/coremobility/e/au;->a:I

    aget-object v0, v2, v7

    iput v4, v0, Lcom/coremobility/e/au;->b:I

    aget-object v0, v2, v7

    iput-object v1, v0, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    :cond_13
    iput-object v2, v5, Lcom/coremobility/e/at;->z:[Lcom/coremobility/e/au;

    iget-object v0, p0, Lcom/coremobility/c/aa;->t:Lcom/coremobility/e/y;

    sget-object v1, Lcom/coremobility/c/aa;->o:[I

    iget v2, p0, Lcom/coremobility/c/aa;->h:I

    aget v1, v1, v2

    invoke-virtual {v0, v5, v1}, Lcom/coremobility/e/y;->a(Lcom/coremobility/e/at;I)I

    move-result v0

    if-nez v0, :cond_15

    :goto_9
    invoke-static {v7}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coremobility/c/aa;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v1, v0, v6, v6}, Lcom/coremobility/e/bc;->a(III)V

    goto/16 :goto_1

    :cond_14
    move v2, v8

    goto :goto_8

    :cond_15
    move v7, v6

    goto :goto_9
.end method


# virtual methods
.method protected final a()I
    .locals 2

    sget-object v0, Lcom/coremobility/c/aa;->o:[I

    iget v1, p0, Lcom/coremobility/c/aa;->h:I

    aget v0, v0, v1

    return v0
.end method

.method protected final a(I)I
    .locals 1

    add-int/lit16 v0, p1, 0x1510

    return v0
.end method

.method protected final a(III)V
    .locals 6

    const v5, 0x50001

    const/4 v4, 0x6

    const/4 v3, 0x0

    const v2, 0x50002

    const/4 v1, 0x3

    packed-switch p2, :pswitch_data_0

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {v5, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    :cond_1
    if-gez p1, :cond_2

    invoke-direct {p0, p3}, Lcom/coremobility/c/aa;->c(I)V

    invoke-direct {p0}, Lcom/coremobility/c/aa;->m()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/coremobility/c/aa;->m()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->b:Lcom/coremobility/g/b;

    invoke-virtual {v0, v5, p1, p0}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coremobility/c/aa;->C:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/c/aa;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->c()Lcom/coremobility/j/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/j/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iput-boolean v3, p0, Lcom/coremobility/c/aa;->C:Z

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/coremobility/c/aa;->e:Lcom/coremobility/c/ad;

    invoke-virtual {v0}, Lcom/coremobility/c/ad;->c()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-static {v2, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    :cond_5
    if-gez p1, :cond_6

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->b:Lcom/coremobility/g/b;

    invoke-virtual {v0, v2, p1, p0}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v4, :cond_8

    invoke-static {v2, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    :cond_8
    if-gez p1, :cond_9

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    goto :goto_0

    :cond_9
    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v4}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->b:Lcom/coremobility/g/b;

    invoke-virtual {v0, v2, p1, p0}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(IILjava/lang/Object;)V
    .locals 8

    const v7, 0x50002

    const/16 v6, 0x1a

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    check-cast p3, Lcom/coremobility/e/ap;

    iget v0, p3, Lcom/coremobility/e/ap;->c:I

    const/16 v3, 0x80

    if-ne v0, v3, :cond_4

    iget-object v0, p3, Lcom/coremobility/e/ap;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p3, Lcom/coremobility/e/ap;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/coremobility/integration/message/d;

    invoke-direct {v0}, Lcom/coremobility/integration/message/d;-><init>()V

    iget-object v3, p3, Lcom/coremobility/e/ap;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/message/d;->a(Ljava/lang/String;)V

    iget-object v3, p3, Lcom/coremobility/e/ap;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/message/d;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/message/c;->a(Lcom/coremobility/integration/message/d;)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/c/aa;->f:Lcom/coremobility/c/ah;

    invoke-virtual {v0}, Lcom/coremobility/c/ah;->g()Lcom/coremobility/c/ai;

    move-result-object v0

    iget v3, p0, Lcom/coremobility/c/aa;->i:I

    invoke-virtual {v0, v3}, Lcom/coremobility/c/ai;->a(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/coremobility/c/aa;->e:Lcom/coremobility/c/ad;

    invoke-virtual {v4}, Lcom/coremobility/c/ad;->d()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/coremobility/c/aa;->c(I)V

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/coremobility/c/aa;->i:I

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/c/ai;->a(II)V

    :cond_3
    invoke-direct {p0}, Lcom/coremobility/c/aa;->m()V

    :cond_4
    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eq v0, v5, :cond_5

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    :cond_5
    const-string v0, "CM+DMM%d send ok - kick retrv"

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/coremobility/c/aa;->o:[I

    iget v5, p0, Lcom/coremobility/c/aa;->h:I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v6, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->b:Lcom/coremobility/g/b;

    invoke-virtual {v0, v7, v1, p0}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/c/aa;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->f()I

    move-result v0

    const/16 v3, 0x191

    if-ne v0, v3, :cond_7

    const-string v0, "CM+DMM%d waiting pwd"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    iget v4, p0, Lcom/coremobility/c/aa;->h:I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/coremobility/c/t;

    sget-object v1, Lcom/coremobility/c/aa;->o:[I

    iget v2, p0, Lcom/coremobility/c/aa;->h:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v2}, Lcom/coremobility/e/ay;->a()I

    move-result v2

    iget-object v3, p0, Lcom/coremobility/c/aa;->u:Lcom/coremobility/e/az;

    invoke-virtual {v3}, Lcom/coremobility/e/az;->f()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/coremobility/c/t;-><init>(III)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eq v0, v5, :cond_9

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    :cond_9
    invoke-static {v7, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    goto/16 :goto_0

    :pswitch_3
    check-cast p3, Lcom/coremobility/e/ar;

    iget v0, p3, Lcom/coremobility/e/ar;->w:I

    const/16 v3, 0xff

    if-eq v0, v3, :cond_a

    iget-object v0, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->f()V

    :cond_a
    iget-object v0, p3, Lcom/coremobility/e/ar;->c:Ljava/lang/String;

    if-eqz v0, :cond_d

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p3, Lcom/coremobility/e/ar;->w:I

    if-eqz v0, :cond_b

    iget v0, p3, Lcom/coremobility/e/ar;->w:I

    const/16 v3, 0x80

    if-ne v0, v3, :cond_e

    :cond_b
    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p3, Lcom/coremobility/e/ar;->A:I

    if-eqz v0, :cond_f

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p3, Lcom/coremobility/e/ar;->A:I

    if-ge v0, v5, :cond_10

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p3, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    if-eqz v0, :cond_11

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p3, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/coremobility/e/au;->a:I

    const v3, 0x10003

    if-ne v0, v3, :cond_12

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p3, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/coremobility/e/au;->b:I

    if-eqz v0, :cond_13

    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p3, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p3, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p3, Lcom/coremobility/e/ar;->A:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_c

    iget-object v0, p3, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/coremobility/e/au;->a:I

    const v3, 0x10002

    if-ne v0, v3, :cond_15

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p3, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/coremobility/e/au;->b:I

    if-eqz v0, :cond_16

    move v0, v1

    :goto_b
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p3, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p3, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_c
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_c
    iget v0, p3, Lcom/coremobility/e/ar;->A:I

    if-eqz v0, :cond_19

    iget-object v0, p3, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    if-eqz v0, :cond_19

    iget v0, p3, Lcom/coremobility/e/ar;->A:I

    if-ge v0, v5, :cond_19

    iget v0, p3, Lcom/coremobility/e/ar;->A:I

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/coremobility/c/aa;->f:Lcom/coremobility/c/ah;

    iget-object v1, p3, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/coremobility/c/aa;->i:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/c/ah;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_d
    iget-object v0, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    iget-object v1, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget v1, v1, Lcom/coremobility/e/c;->b:I

    const/16 v2, 0x81

    iget-object v3, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget-object v3, v3, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/e/bd;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->e()V

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto/16 :goto_2

    :cond_e
    move v0, v2

    goto/16 :goto_3

    :cond_f
    move v0, v2

    goto/16 :goto_4

    :cond_10
    move v0, v2

    goto/16 :goto_5

    :cond_11
    move v0, v2

    goto/16 :goto_6

    :cond_12
    move v0, v2

    goto/16 :goto_7

    :cond_13
    move v0, v2

    goto/16 :goto_8

    :cond_14
    move v0, v2

    goto/16 :goto_9

    :cond_15
    move v0, v2

    goto :goto_a

    :cond_16
    move v0, v2

    goto :goto_b

    :cond_17
    move v0, v2

    goto :goto_c

    :cond_18
    iget-object v0, p0, Lcom/coremobility/c/aa;->f:Lcom/coremobility/c/ah;

    iget-object v3, p3, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v2, v3, v2

    iget-object v2, v2, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    iget-object v3, p3, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v1, v3, v1

    iget-object v1, v1, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    iget v3, p0, Lcom/coremobility/c/aa;->i:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/coremobility/c/ah;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_d

    :cond_19
    const-string v0, "CM+DMM%d bad msg info"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    iget v4, p0, Lcom/coremobility/c/aa;->h:I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :pswitch_4
    if-nez p3, :cond_1a

    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-nez p1, :cond_1b

    :goto_f
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    goto/16 :goto_0

    :cond_1a
    move v0, v2

    goto :goto_e

    :cond_1b
    move v1, v2

    goto :goto_f

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILjava/lang/Object;II)V
    .locals 8

    const/4 v3, 0x2

    const/16 v7, 0x1a

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    if-eq p2, p0, :cond_13

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    if-eqz p3, :cond_2

    sget-object v2, Lcom/coremobility/e/ah;->l:[I

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    iget v4, p0, Lcom/coremobility/c/aa;->h:I

    aget v3, v3, v4

    aget v2, v2, v3

    if-eqz v2, :cond_1

    :cond_2
    if-ne p4, v0, :cond_3

    iget-boolean v2, p0, Lcom/coremobility/c/aa;->j:Z

    if-nez v2, :cond_3

    iput-boolean v0, p0, Lcom/coremobility/c/aa;->j:Z

    const-string v2, "CM+DMM%d 1st net-unblk"

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/coremobility/c/aa;->o:[I

    iget v5, p0, Lcom/coremobility/c/aa;->h:I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-boolean v2, p0, Lcom/coremobility/c/aa;->k:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v2}, Lcom/coremobility/e/ay;->a()I

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/coremobility/c/aa;->m()V

    :cond_4
    iget-object v2, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v2}, Lcom/coremobility/e/ay;->a()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    :cond_5
    iget-object v2, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v2}, Lcom/coremobility/e/ay;->a()I

    move-result v2

    if-ne v2, v6, :cond_6

    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    sget-object v2, Lcom/coremobility/e/ah;->l:[I

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    iget v4, p0, Lcom/coremobility/c/aa;->h:I

    aget v3, v3, v4

    aget v2, v2, v3

    iget-object v3, p0, Lcom/coremobility/c/aa;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v3}, Lcom/coremobility/e/bc;->f()I

    move-result v3

    invoke-static {v2, v3}, Lcom/coremobility/f/m;->b(II)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "CM+DMM%d net-unblk retry send"

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/coremobility/c/aa;->o:[I

    iget v5, p0, Lcom/coremobility/c/aa;->h:I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const v2, 0x50001

    invoke-static {v2, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/c/aa;->m()V

    :cond_6
    iget-object v2, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v2}, Lcom/coremobility/e/ay;->a()I

    move-result v2

    if-eq v2, v6, :cond_7

    iget-object v2, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v2}, Lcom/coremobility/e/ay;->a()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    :cond_7
    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    sget-object v2, Lcom/coremobility/e/ah;->l:[I

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    iget v4, p0, Lcom/coremobility/c/aa;->h:I

    aget v3, v3, v4

    aget v2, v2, v3

    iget-object v3, p0, Lcom/coremobility/c/aa;->u:Lcom/coremobility/e/az;

    invoke-virtual {v3}, Lcom/coremobility/e/az;->f()I

    move-result v3

    invoke-static {v2, v3}, Lcom/coremobility/f/m;->b(II)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CM+DMM%d net-unblk retry recv"

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    iget v4, p0, Lcom/coremobility/c/aa;->h:I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v7, v2, v0}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x50002

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    goto/16 :goto_1

    :sswitch_1
    if-eqz p3, :cond_8

    sget-object v2, Lcom/coremobility/e/ah;->l:[I

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    iget v4, p0, Lcom/coremobility/c/aa;->h:I

    aget v3, v3, v4

    aget v2, v2, v3

    if-ne v2, p3, :cond_0

    :cond_8
    iget-boolean v2, p0, Lcom/coremobility/c/aa;->k:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v2}, Lcom/coremobility/e/ay;->a()I

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0}, Lcom/coremobility/c/aa;->m()V

    :cond_9
    iget-object v2, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v2}, Lcom/coremobility/e/ay;->a()I

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    :cond_a
    iget-object v2, p0, Lcom/coremobility/c/aa;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v2}, Lcom/coremobility/e/bc;->f()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v2}, Lcom/coremobility/e/ay;->a()I

    move-result v2

    if-ne v2, v6, :cond_b

    const-string v2, "CM+DMM%d net-unblk retry send"

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/coremobility/c/aa;->o:[I

    iget v5, p0, Lcom/coremobility/c/aa;->h:I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const v2, 0x50001

    invoke-static {v2, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/c/aa;->m()V

    :cond_b
    iget-object v2, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v2}, Lcom/coremobility/e/ay;->a()I

    move-result v2

    if-eq v2, v6, :cond_c

    iget-object v2, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v2}, Lcom/coremobility/e/ay;->a()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    :cond_c
    const-string v2, "CM+DMM%d net-unblk retry recv"

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/coremobility/c/aa;->o:[I

    iget v5, p0, Lcom/coremobility/c/aa;->h:I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const v2, 0x50002

    invoke-static {v2, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    goto/16 :goto_0

    :sswitch_2
    if-ne p3, v3, :cond_12

    sget-object v0, Lcom/coremobility/c/aa;->o:[I

    iget v1, p0, Lcom/coremobility/c/aa;->h:I

    aget v0, v0, v1

    add-int/lit16 v0, v0, 0x1340

    if-ne p4, v0, :cond_12

    new-instance v0, Lcom/coremobility/c/s;

    sget-object v1, Lcom/coremobility/c/aa;->o:[I

    iget v2, p0, Lcom/coremobility/c/aa;->h:I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Lcom/coremobility/c/s;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v6, :cond_f

    iget-object v0, p0, Lcom/coremobility/c/aa;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x50001

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/c/aa;->m()V

    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eq v0, v6, :cond_e

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    :cond_e
    iget-object v0, p0, Lcom/coremobility/c/aa;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x50002

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v3, :cond_d

    iget-object v0, p0, Lcom/coremobility/c/aa;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->e()V

    goto :goto_2

    :cond_10
    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eq v0, v3, :cond_11

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_11
    iget-object v0, p0, Lcom/coremobility/c/aa;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->e()V

    goto/16 :goto_1

    :cond_12
    if-ne p3, v3, :cond_1

    sget-object v0, Lcom/coremobility/c/aa;->o:[I

    iget v1, p0, Lcom/coremobility/c/aa;->h:I

    aget v0, v0, v1

    add-int/lit16 v0, v0, 0x1320

    if-ne p4, v0, :cond_1

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->h()V

    goto/16 :goto_1

    :cond_13
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/coremobility/c/aa;->m()V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    goto/16 :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v2}, Lcom/coremobility/e/ay;->a()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_15

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->d:Lcom/coremobility/c/d;

    invoke-virtual {v0}, Lcom/coremobility/c/d;->c()I

    move-result v0

    if-gt p3, v0, :cond_14

    iget-object v0, p0, Lcom/coremobility/c/aa;->d:Lcom/coremobility/c/d;

    invoke-virtual {v0}, Lcom/coremobility/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    goto/16 :goto_1

    :cond_15
    move v0, v1

    goto :goto_3

    :cond_16
    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xd -> :sswitch_1
        0x35 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50001
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/coremobility/c/ah;I)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/coremobility/c/aa;->l:I

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput-object p1, p0, Lcom/coremobility/c/aa;->f:Lcom/coremobility/c/ah;

    sget v0, Lcom/coremobility/c/aa;->l:I

    add-int/lit8 v3, v0, 0x1

    sput v3, Lcom/coremobility/c/aa;->l:I

    iput v0, p0, Lcom/coremobility/c/aa;->h:I

    iput p2, p0, Lcom/coremobility/c/aa;->i:I

    invoke-super {p0}, Lcom/coremobility/e/aw;->j()V

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/aa;->b:Lcom/coremobility/g/b;

    invoke-static {}, Lcom/coremobility/integration/message/c;->a()Lcom/coremobility/integration/message/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/aa;->g:Lcom/coremobility/integration/message/c;

    invoke-static {}, Lcom/coremobility/g/m;->a()Lcom/coremobility/g/m;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/aa;->c:Lcom/coremobility/g/m;

    invoke-virtual {p1, p2}, Lcom/coremobility/c/ah;->b(I)Lcom/coremobility/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/aa;->d:Lcom/coremobility/c/d;

    invoke-virtual {p1, p2}, Lcom/coremobility/c/ah;->c(I)Lcom/coremobility/c/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/aa;->e:Lcom/coremobility/c/ad;

    iput-boolean v2, p0, Lcom/coremobility/c/aa;->j:Z

    iput-boolean v2, p0, Lcom/coremobility/c/aa;->k:Z

    iput v2, p0, Lcom/coremobility/c/aa;->q:I

    iput v2, p0, Lcom/coremobility/c/aa;->r:I

    iput v2, p0, Lcom/coremobility/c/aa;->s:I

    iget-object v0, p0, Lcom/coremobility/c/aa;->p:Lcom/coremobility/integration/a/a;

    iget v3, p0, Lcom/coremobility/c/aa;->i:I

    add-int/lit16 v3, v3, 0x15a0

    invoke-virtual {v0, v3, v2, v2}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1a

    const-string v3, "CM+DMM%d reset"

    new-array v4, v1, [Ljava/lang/Object;

    sget-object v5, Lcom/coremobility/c/aa;->o:[I

    iget v6, p0, Lcom/coremobility/c/aa;->h:I

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->p:Lcom/coremobility/integration/a/a;

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    iget v4, p0, Lcom/coremobility/c/aa;->h:I

    aget v3, v3, v4

    add-int/lit16 v3, v3, 0x1320

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/a/a;->a(I)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->p:Lcom/coremobility/integration/a/a;

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    iget v4, p0, Lcom/coremobility/c/aa;->h:I

    aget v3, v3, v4

    add-int/lit16 v3, v3, 0x1340

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/a/a;->a(I)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->p:Lcom/coremobility/integration/a/a;

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/a/a;->a(I)V

    invoke-static {}, Lcom/coremobility/integration/b/c;->a()Lcom/coremobility/integration/b/c;

    move-result-object v0

    iget v3, p0, Lcom/coremobility/c/aa;->h:I

    add-int/lit16 v3, v3, 0x1030

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/b/c;->a(I)V

    iget v3, p0, Lcom/coremobility/c/aa;->h:I

    add-int/lit16 v3, v3, 0x1040

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/b/c;->a(I)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->f:Lcom/coremobility/c/ah;

    invoke-virtual {v0}, Lcom/coremobility/c/ah;->g()Lcom/coremobility/c/ai;

    move-result-object v0

    iget v3, p0, Lcom/coremobility/c/aa;->i:I

    invoke-virtual {v0, v3}, Lcom/coremobility/c/ai;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-direct {p0}, Lcom/coremobility/c/aa;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget v3, p0, Lcom/coremobility/c/aa;->i:I

    invoke-virtual {v0, v3, v2}, Lcom/coremobility/c/ai;->a(II)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/c/aa;->b:Lcom/coremobility/g/b;

    const/high16 v3, 0x5

    invoke-virtual {v0, v3, p0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    new-instance v0, Lcom/coremobility/c/ab;

    invoke-direct {v0, p0}, Lcom/coremobility/c/ab;-><init>(Lcom/coremobility/c/aa;)V

    iput-object v0, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget-object v0, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    check-cast v0, Lcom/coremobility/c/ab;

    invoke-virtual {v0}, Lcom/coremobility/c/ab;->a()V

    iget-object v0, p0, Lcom/coremobility/c/aa;->t:Lcom/coremobility/e/y;

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    iget v4, p0, Lcom/coremobility/c/aa;->h:I

    aget v3, v3, v4

    invoke-virtual {v0, p0, v3}, Lcom/coremobility/e/y;->a(Lcom/coremobility/e/aw;I)I

    iget-object v0, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    iget v3, p0, Lcom/coremobility/c/aa;->h:I

    add-int/lit16 v3, v3, 0x1040

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Lcom/coremobility/e/bd;->a(S)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    check-cast v0, Lcom/coremobility/c/ac;

    iget v3, p0, Lcom/coremobility/c/aa;->h:I

    invoke-virtual {v0, v3, v2}, Lcom/coremobility/c/ac;->a(II)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    check-cast v0, Lcom/coremobility/c/ac;

    iget v2, p0, Lcom/coremobility/c/aa;->h:I

    invoke-virtual {v0, v2, v1}, Lcom/coremobility/c/ac;->a(II)V

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected final b()S
    .locals 1

    iget v0, p0, Lcom/coremobility/c/aa;->h:I

    add-int/lit16 v0, v0, 0x1030

    int-to-short v0, v0

    return v0
.end method

.method public final c()V
    .locals 5

    const/high16 v0, 0x5

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    iget v0, p0, Lcom/coremobility/c/aa;->q:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/c/aa;->t:Lcom/coremobility/e/y;

    iget v1, p0, Lcom/coremobility/c/aa;->q:I

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/coremobility/g/l;->a(JZ)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/coremobility/c/aa;->o:[I

    iget v3, p0, Lcom/coremobility/c/aa;->h:I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/y;->c(Ljava/lang/String;I)I

    :cond_0
    iget-object v0, p0, Lcom/coremobility/c/aa;->t:Lcom/coremobility/e/y;

    sget-object v1, Lcom/coremobility/c/aa;->o:[I

    iget v2, p0, Lcom/coremobility/c/aa;->h:I

    aget v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/e/y;->b(Lcom/coremobility/e/aw;I)I

    iget-object v0, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->d()V

    iget-object v0, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    invoke-virtual {v0}, Lcom/coremobility/e/bd;->a()V

    const/4 v0, 0x0

    sput v0, Lcom/coremobility/c/aa;->l:I

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/c/aa;->m()V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/coremobility/c/aa;->k:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/c/w;

    sget-object v2, Lcom/coremobility/c/aa;->o:[I

    iget v3, p0, Lcom/coremobility/c/aa;->h:I

    aget v2, v2, v3

    invoke-direct {v0, v2}, Lcom/coremobility/c/w;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iput-boolean v1, p0, Lcom/coremobility/c/aa;->k:Z

    iget-boolean v0, p0, Lcom/coremobility/c/aa;->j:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/c/aa;->m()V

    invoke-virtual {p0}, Lcom/coremobility/c/aa;->g()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method protected final g()V
    .locals 9

    const/16 v8, 0x1a

    const v7, 0x50002

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v2}, Lcom/coremobility/e/ay;->a()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v2}, Lcom/coremobility/e/ay;->a()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    :cond_0
    invoke-static {v7, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/coremobility/c/aa;->u:Lcom/coremobility/e/az;

    invoke-virtual {v2}, Lcom/coremobility/e/az;->f()I

    move-result v2

    const/16 v3, 0x190

    if-eq v2, v3, :cond_1

    const/16 v3, 0x193

    if-eq v2, v3, :cond_1

    const/16 v3, 0x194

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/coremobility/integration/a/a;->h()V

    :cond_2
    iget-object v2, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    invoke-virtual {v2}, Lcom/coremobility/e/bd;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/coremobility/e/ay;->b(I)V

    new-instance v2, Lcom/coremobility/e/ao;

    invoke-direct {v2}, Lcom/coremobility/e/ao;-><init>()V

    iget-object v3, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    iget-object v3, v3, Lcom/coremobility/e/bd;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/coremobility/e/ao;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    iget v3, v3, Lcom/coremobility/e/bd;->a:I

    iput v3, v2, Lcom/coremobility/e/ao;->b:I

    iget-object v3, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    iget v3, v3, Lcom/coremobility/e/bd;->b:I

    iput v3, v2, Lcom/coremobility/e/ao;->d:I

    iget-boolean v3, p0, Lcom/coremobility/c/aa;->B:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/coremobility/c/aa;->u:Lcom/coremobility/e/az;

    invoke-virtual {v3}, Lcom/coremobility/e/az;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coremobility/e/ao;->c:Ljava/lang/String;

    :cond_3
    new-instance v3, Lcom/coremobility/c/g;

    sget-object v4, Lcom/coremobility/c/aa;->o:[I

    iget v5, p0, Lcom/coremobility/c/aa;->h:I

    aget v4, v4, v5

    iget-object v5, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    iget-object v5, v5, Lcom/coremobility/e/bd;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/coremobility/c/g;-><init>(ILjava/lang/String;)V

    invoke-static {v3}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v3, p0, Lcom/coremobility/c/aa;->t:Lcom/coremobility/e/y;

    sget-object v4, Lcom/coremobility/c/aa;->o:[I

    iget v5, p0, Lcom/coremobility/c/aa;->h:I

    aget v4, v4, v5

    invoke-virtual {v3, v2, v4}, Lcom/coremobility/e/y;->a(Lcom/coremobility/e/ao;I)I

    move-result v2

    if-nez v2, :cond_5

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/coremobility/c/aa;->u:Lcom/coremobility/e/az;

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Lcom/coremobility/e/az;->a(III)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    invoke-virtual {v2}, Lcom/coremobility/e/c;->g()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v1, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v1, v0}, Lcom/coremobility/e/ay;->b(I)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/coremobility/g/m;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget v4, v4, Lcom/coremobility/e/c;->d:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    const-string v2, "CM+DMM%d exp n-ind %s"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lcom/coremobility/c/aa;->o:[I

    iget v5, p0, Lcom/coremobility/c/aa;->h:I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget-object v4, v4, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v8, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    iget-object v2, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget v2, v2, Lcom/coremobility/e/c;->b:I

    sget v3, Lcom/coremobility/e/av;->a:I

    iget-object v4, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget-object v4, v4, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/coremobility/e/bd;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->d()V

    iget-object v0, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->e()V

    iget-object v0, p0, Lcom/coremobility/c/aa;->b:Lcom/coremobility/g/b;

    invoke-virtual {v0, v7, p0, v1, v1}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget v2, v2, Lcom/coremobility/e/c;->c:I

    iget-object v3, p0, Lcom/coremobility/c/aa;->d:Lcom/coremobility/c/d;

    invoke-virtual {v3}, Lcom/coremobility/c/d;->d()I

    move-result v3

    if-le v2, v3, :cond_9

    const-string v2, "CM+DMM%d n-ind msg size %d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lcom/coremobility/c/aa;->o:[I

    iget v5, p0, Lcom/coremobility/c/aa;->h:I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget v4, v4, Lcom/coremobility/e/c;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v8, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    iget-object v2, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget v2, v2, Lcom/coremobility/e/c;->b:I

    const/16 v3, 0xff

    iget-object v4, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget-object v4, v4, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/coremobility/e/bd;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->d()V

    iget-object v0, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->e()V

    iget-object v0, p0, Lcom/coremobility/c/aa;->b:Lcom/coremobility/g/b;

    invoke-virtual {v0, v7, p0, v1, v1}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget v2, v2, Lcom/coremobility/e/c;->c:I

    iget-object v3, p0, Lcom/coremobility/c/aa;->d:Lcom/coremobility/c/d;

    invoke-virtual {v3}, Lcom/coremobility/c/d;->c()I

    move-result v3

    if-gt v2, v3, :cond_a

    iget-object v2, p0, Lcom/coremobility/c/aa;->d:Lcom/coremobility/c/d;

    invoke-virtual {v2}, Lcom/coremobility/c/d;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->b:Lcom/coremobility/g/b;

    const v2, 0x50003

    iget-object v3, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget v3, v3, Lcom/coremobility/e/c;->c:I

    invoke-virtual {v0, v2, p0, v3, v1}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v2, v6}, Lcom/coremobility/e/ay;->b(I)V

    new-instance v2, Lcom/coremobility/c/q;

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    iget v4, p0, Lcom/coremobility/c/aa;->h:I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget-object v4, v4, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/coremobility/c/q;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v2, p0, Lcom/coremobility/c/aa;->t:Lcom/coremobility/e/y;

    iget-object v3, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget-object v3, v3, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/coremobility/c/aa;->o:[I

    iget v5, p0, Lcom/coremobility/c/aa;->h:I

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/coremobility/e/y;->a(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_c

    :goto_2
    const-string v1, "kMmsSuccess == Send_GetRequest"

    invoke-static {v0, v1}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    move v0, v1

    goto :goto_2
.end method

.method protected final h()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const v6, 0x50002

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/coremobility/e/aw;->h()V

    :goto_0
    iget-object v0, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    invoke-virtual {v0}, Lcom/coremobility/e/bd;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coremobility/c/aa;->t:Lcom/coremobility/e/y;

    iget-object v1, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    iget-object v1, v1, Lcom/coremobility/e/bd;->c:Ljava/lang/String;

    sget-object v2, Lcom/coremobility/c/aa;->o:[I

    iget v3, p0, Lcom/coremobility/c/aa;->h:I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/y;->c(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->b:Lcom/coremobility/g/b;

    invoke-virtual {v0, v6, p0, v5, v5}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_0
    const/16 v0, 0x1a

    const-string v1, "CM+DMM%d del ack %x %s"

    new-array v2, v9, [Ljava/lang/Object;

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    iget v4, p0, Lcom/coremobility/c/aa;->h:I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    iget v3, v3, Lcom/coremobility/e/bd;->b:I

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    iget-object v3, v3, Lcom/coremobility/e/bd;->c:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->z:Lcom/coremobility/e/bd;

    invoke-virtual {v0}, Lcom/coremobility/e/bd;->b()V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/coremobility/c/aa;->t:Lcom/coremobility/e/y;

    iget-object v1, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget-object v1, v1, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    sget-object v2, Lcom/coremobility/c/aa;->o:[I

    iget v3, p0, Lcom/coremobility/c/aa;->h:I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/y;->b(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->b:Lcom/coremobility/g/b;

    invoke-virtual {v0, v6, p0, v5, v5}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_2
    const/16 v0, 0x1a

    const-string v1, "CM+DMM%d del n %d %x %s %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/coremobility/c/aa;->o:[I

    iget v4, p0, Lcom/coremobility/c/aa;->h:I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget v3, v3, Lcom/coremobility/e/c;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget v3, v3, Lcom/coremobility/e/c;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget-object v3, v3, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    aput-object v3, v2, v9

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    iget-object v4, v4, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/c/aa;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->e()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eq v0, v9, :cond_4

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-static {v6, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    :cond_6
    invoke-static {v6, p0}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    const v0, 0x50003

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/c/aa;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v7}, Lcom/coremobility/e/ay;->b(I)V

    :cond_9
    return-void
.end method
