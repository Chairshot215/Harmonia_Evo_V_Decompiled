.class public final Lcom/coremobility/k/cv;
.super Lcom/coremobility/e/aw;

# interfaces
.implements Lcom/coremobility/g/a;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field protected e:Lcom/coremobility/k/cx;

.field protected f:Z

.field protected g:Lcom/coremobility/l/v;

.field protected h:I

.field protected i:Lcom/coremobility/e/ar;

.field protected j:Ljava/lang/String;

.field private k:Lcom/coremobility/g/b;

.field private l:Lcom/coremobility/i/b;

.field private m:Lcom/coremobility/g/m;

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "date-created"

    sput-object v0, Lcom/coremobility/k/cv;->a:Ljava/lang/String;

    const-string v0, "date-notified"

    sput-object v0, Lcom/coremobility/k/cv;->b:Ljava/lang/String;

    const-string v0, "from-name"

    sput-object v0, Lcom/coremobility/k/cv;->c:Ljava/lang/String;

    const-string v0, "in-reply-to"

    sput-object v0, Lcom/coremobility/k/cv;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/e/aw;-><init>()V

    iput-object v1, p0, Lcom/coremobility/k/cv;->g:Lcom/coremobility/l/v;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/k/cv;->h:I

    iput-object v1, p0, Lcom/coremobility/k/cv;->i:Lcom/coremobility/e/ar;

    iput-object v1, p0, Lcom/coremobility/k/cv;->j:Ljava/lang/String;

    new-instance v0, Lcom/coremobility/k/j;

    invoke-direct {v0}, Lcom/coremobility/k/j;-><init>()V

    iput-object v0, p0, Lcom/coremobility/k/cv;->D:Lcom/coremobility/e/a;

    new-instance v0, Lcom/coremobility/e/bd;

    invoke-direct {v0, p0}, Lcom/coremobility/e/bd;-><init>(Lcom/coremobility/e/aw;)V

    iput-object v0, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    new-instance v0, Lcom/coremobility/e/ay;

    invoke-direct {v0, p0}, Lcom/coremobility/e/ay;-><init>(Lcom/coremobility/e/aw;)V

    iput-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    new-instance v0, Lcom/coremobility/e/ay;

    invoke-direct {v0, p0}, Lcom/coremobility/e/ay;-><init>(Lcom/coremobility/e/aw;)V

    iput-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    return-void
.end method

.method static synthetic a(Lcom/coremobility/k/cv;)I
    .locals 1

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->i()I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    if-le v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 12

    const-wide/16 v10, 0x1

    const/4 v1, 0x6

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v10

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x2

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    :cond_0
    move-wide v0, v4

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v2, 0x12

    cmp-long v0, p1, v2

    if-nez v0, :cond_5

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    new-instance v7, Lcom/coremobility/integration/h;

    invoke-direct {v7}, Lcom/coremobility/integration/h;-><init>()V

    new-instance v2, Lcom/coremobility/integration/r;

    invoke-direct {v2}, Lcom/coremobility/integration/r;-><init>()V

    invoke-static {p0, v7}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v7, v2}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v0

    iget v3, v2, Lcom/coremobility/integration/r;->a:I

    new-array v8, v3, [B

    if-nez v0, :cond_3

    invoke-static {v7, v8, v2}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v0

    :cond_3
    if-nez v0, :cond_9

    iget v9, v2, Lcom/coremobility/integration/r;->a:I

    const/4 v0, 0x0

    aget-byte v0, v8, v0

    const/16 v2, 0x23

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    aget-byte v0, v8, v0

    const/16 v2, 0x21

    if-ne v0, v2, :cond_8

    const/4 v0, 0x2

    aget-byte v0, v8, v0

    const/16 v2, 0x41

    if-ne v0, v2, :cond_8

    const/4 v0, 0x3

    aget-byte v0, v8, v0

    const/16 v2, 0x4d

    if-ne v0, v2, :cond_8

    const/4 v0, 0x4

    aget-byte v0, v8, v0

    const/16 v2, 0x52

    if-ne v0, v2, :cond_8

    const/4 v0, 0x5

    aget-byte v0, v8, v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_8

    move-wide v2, v4

    move v6, v1

    :goto_1
    if-ge v6, v9, :cond_4

    aget-byte v0, v8, v6

    and-int/lit8 v0, v0, 0x78

    shr-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, -0x1

    :goto_2
    invoke-static {v7}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    :goto_3
    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/coremobility/integration/d/h;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xd

    :goto_4
    add-long/2addr v2, v10

    add-int/2addr v0, v6

    move v6, v0

    goto :goto_1

    :pswitch_1
    const/16 v0, 0xe

    goto :goto_4

    :pswitch_2
    const/16 v0, 0x10

    goto :goto_4

    :pswitch_3
    const/16 v0, 0x12

    goto :goto_4

    :pswitch_4
    const/16 v0, 0x14

    goto :goto_4

    :pswitch_5
    const/16 v0, 0x15

    goto :goto_4

    :pswitch_6
    const/16 v0, 0x1b

    goto :goto_4

    :pswitch_7
    const/16 v0, 0x20

    goto :goto_4

    :pswitch_8
    move v0, v1

    goto :goto_4

    :cond_4
    move-wide v0, v2

    :goto_5
    const-wide/16 v2, 0x14

    mul-long/2addr v0, v2

    goto :goto_2

    :cond_5
    const-wide/16 v0, 0x15

    cmp-long v0, p1, v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x16

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    :cond_6
    invoke-static {p0, p1, p2}, Lcom/coremobility/e/a/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    move-wide v0, v4

    goto :goto_3

    :cond_8
    move-wide v0, v4

    goto :goto_5

    :cond_9
    move-wide v0, v4

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private a(ILcom/coremobility/e/ar;)V
    .locals 13

    const/16 v7, 0xd

    const-wide/16 v11, 0x1

    const/16 v10, 0x1c

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p2, Lcom/coremobility/e/ar;->c:Ljava/lang/String;

    if-eqz v0, :cond_b

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p2, Lcom/coremobility/e/ar;->w:I

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/coremobility/e/ar;->w:I

    const/16 v3, 0x80

    if-ne v0, v3, :cond_c

    :cond_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v8, Lcom/coremobility/k/de;

    invoke-direct {v8}, Lcom/coremobility/k/de;-><init>()V

    invoke-virtual {v8}, Lcom/coremobility/k/de;->b()[J

    move-result-object v0

    iget v3, p2, Lcom/coremobility/e/ar;->d:I

    int-to-long v3, v3

    aput-wide v3, v0, v1

    invoke-virtual {v8}, Lcom/coremobility/k/de;->b()[J

    move-result-object v0

    iget v3, p2, Lcom/coremobility/e/ar;->e:I

    if-eqz v3, :cond_d

    iget v3, p2, Lcom/coremobility/e/ar;->e:I

    int-to-long v3, v3

    :goto_2
    aput-wide v3, v0, v2

    iget v0, p2, Lcom/coremobility/e/ar;->f:I

    int-to-long v3, v0

    invoke-virtual {v8, v3, v4}, Lcom/coremobility/k/de;->a(J)V

    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->b(I)V

    iget-object v3, p2, Lcom/coremobility/e/ar;->h:Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-virtual {v8, v3}, Lcom/coremobility/k/de;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p2, Lcom/coremobility/e/ar;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/coremobility/e/ar;->g:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p2, Lcom/coremobility/e/ar;->g:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->d(Ljava/lang/String;)V

    :cond_2
    :goto_4
    iget-object v0, p2, Lcom/coremobility/e/ar;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/coremobility/e/ar;->k:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->f(Ljava/lang/String;)V

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/coremobility/e/ar;->k:Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_10

    iget-object v0, p2, Lcom/coremobility/e/ar;->k:Ljava/lang/String;

    move-object v3, v0

    :goto_5
    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v0}, Lcom/coremobility/k/cx;->f()Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    move v4, v2

    :goto_6
    if-ge v4, v6, :cond_2d

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/jy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    :goto_7
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v0, v3}, Lcom/coremobility/k/cx;->a(Ljava/lang/String;)I

    :cond_3
    iget-object v0, p2, Lcom/coremobility/e/ar;->m:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/coremobility/e/ar;->m:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->e(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p2, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/coremobility/e/ak;->c:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->h(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p2, Lcom/coremobility/e/ar;->c:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->m(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/coremobility/k/de;->t()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v4, 0x3200

    invoke-virtual {v3, v4, v2, v0}, Lcom/coremobility/integration/a/a;->b(IILjava/lang/String;)Z

    iget-object v0, p2, Lcom/coremobility/e/ar;->v:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/coremobility/e/ar;->v:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->i(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget-object v0, v0, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->l(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/coremobility/e/ar;->z:Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-object v0, p2, Lcom/coremobility/e/ar;->z:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->o(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/coremobility/e/ar;->c:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->p(Ljava/lang/String;)V

    move v6, v1

    :goto_8
    iget-object v0, p0, Lcom/coremobility/k/cv;->g:Lcom/coremobility/l/v;

    if-eqz v0, :cond_2b

    invoke-virtual {v8}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v8}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vtt_notifications@"

    const-string v4, "vtt_notifications@"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    invoke-virtual {v8}, Lcom/coremobility/k/de;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v8}, Lcom/coremobility/k/de;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "+19997775214"

    const-string v4, "+19997775214"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_8
    move v3, v1

    :goto_9
    if-nez v6, :cond_12

    if-nez v3, :cond_12

    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v2}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v4, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v4, v0}, Lcom/coremobility/k/cx;->a(Lcom/coremobility/integration/h/c;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/coremobility/k/cv;->i:Lcom/coremobility/e/ar;

    if-eq v0, p2, :cond_9

    invoke-static {p2}, Lcom/coremobility/e/y;->b(Lcom/coremobility/e/ar;)Lcom/coremobility/e/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/cv;->i:Lcom/coremobility/e/ar;

    :cond_9
    iput p1, p0, Lcom/coremobility/k/cv;->h:I

    const-string v0, "VN-OVERFLOW"

    iget-object v1, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    iget-object v0, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    const-string v1, "VN-OVERFLOW"

    invoke-static {v0, v1}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "CM+VNM unable to rename to overflow"

    invoke-static {v2, v0}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    const-string v0, "CM+VNM unable to rename to overflow"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v7}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->k:Lcom/coremobility/g/b;

    const v1, 0x2d0003

    iget-object v3, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget v3, v3, Lcom/coremobility/e/c;->c:I

    invoke-virtual {v0, v1, p0, v3, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :goto_a
    return-void

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_1

    :cond_d
    iget v3, p2, Lcom/coremobility/e/ar;->d:I

    int-to-long v3, v3

    goto/16 :goto_2

    :cond_e
    move v0, v2

    goto/16 :goto_3

    :cond_f
    iget-object v0, p2, Lcom/coremobility/e/ar;->g:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->c(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    iget-object v3, p2, Lcom/coremobility/e/ar;->k:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_5

    :cond_11
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_6

    :cond_12
    iget v0, p2, Lcom/coremobility/e/ar;->w:I

    const/16 v4, 0xff

    if-eq v0, v4, :cond_13

    iget-object v0, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->f()V

    :cond_13
    iget v0, p2, Lcom/coremobility/e/ar;->A:I

    if-ne v0, v1, :cond_1a

    move v0, v1

    :goto_b
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_c
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/coremobility/e/au;->a:I

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_d
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/coremobility/e/au;->b:I

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_f
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v6, Lcom/coremobility/integration/h/c;

    invoke-direct {v6, v2}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget v0, p2, Lcom/coremobility/e/ar;->A:I

    if-eqz v0, :cond_1f

    iget-object v0, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    if-eqz v0, :cond_1f

    iget-object v0, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/coremobility/e/au;->a:I

    const v4, 0x20001

    if-eq v0, v4, :cond_14

    iget-object v0, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/coremobility/e/au;->a:I

    const v4, 0x20002

    if-ne v0, v4, :cond_15

    :cond_14
    new-instance v0, Lcom/coremobility/integration/r;

    iget-object v4, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/coremobility/e/au;->b:I

    invoke-direct {v0, v4}, Lcom/coremobility/integration/r;-><init>(I)V

    new-instance v4, Lcom/coremobility/integration/r;

    iget-object v5, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/coremobility/e/au;->a:I

    invoke-direct {v4, v5}, Lcom/coremobility/integration/r;-><init>(I)V

    iget-object v5, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    invoke-static {v5, v4, v0}, Lcom/coremobility/e/a/a;->a(Ljava/lang/String;Lcom/coremobility/integration/r;Lcom/coremobility/integration/r;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    iget v9, v0, Lcom/coremobility/integration/r;->a:I

    if-eqz v9, :cond_15

    iget-object v9, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v9, v9, v2

    iget v4, v4, Lcom/coremobility/integration/r;->a:I

    iput v4, v9, Lcom/coremobility/e/au;->a:I

    iget-object v4, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v4, v4, v2

    iget v0, v0, Lcom/coremobility/integration/r;->a:I

    iput v0, v4, Lcom/coremobility/e/au;->b:I

    iget-object v0, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iput-object v5, v0, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    :cond_15
    iget-object v0, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/coremobility/e/au;->a:I

    sparse-switch v0, :sswitch_data_0

    :goto_10
    move v0, v2

    :goto_11
    int-to-long v4, v0

    invoke-virtual {v8, v4, v5}, Lcom/coremobility/k/de;->c(J)V

    iget-object v0, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/coremobility/e/au;->b:I

    int-to-long v4, v0

    invoke-virtual {v8, v4, v5}, Lcom/coremobility/k/de;->d(J)V

    :try_start_0
    invoke-virtual {v8}, Lcom/coremobility/k/de;->d()J

    move-result-wide v4

    invoke-static {v4, v5, v6}, Lcom/coremobility/k/cx;->a(JLcom/coremobility/integration/h/c;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/coremobility/integration/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    iget-object v4, p2, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "CM+VNM unable to rename file"

    invoke-static {v2, v4}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    const-string v4, "CM+VNM unable to rename file"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v10, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {v8}, Lcom/coremobility/k/de;->d()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/coremobility/k/cv;->a(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/coremobility/k/de;->b(J)V

    :goto_12
    iget-object v0, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    iget-object v4, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget v4, v4, Lcom/coremobility/e/c;->b:I

    const/16 v5, 0x81

    iget-object v7, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget-object v7, v7, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v7}, Lcom/coremobility/e/bd;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->g:Lcom/coremobility/l/v;

    if-eqz v0, :cond_23

    if-eqz v3, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bridging async VTT notification from: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to VTT service"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->g:Lcom/coremobility/l/v;

    if-eqz v0, :cond_19

    invoke-virtual {v8}, Lcom/coremobility/k/de;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    :goto_13
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v8}, Lcom/coremobility/k/de;->d()J

    move-result-wide v0

    cmp-long v0, v0, v11

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VTT file type is not text/xml. File type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/coremobility/k/de;->d()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    invoke-virtual {v8}, Lcom/coremobility/k/de;->d()J

    move-result-wide v0

    const-wide/16 v3, 0x2

    cmp-long v0, v0, v3

    if-eqz v0, :cond_18

    invoke-virtual {v8}, Lcom/coremobility/k/de;->d()J

    move-result-wide v0

    cmp-long v0, v0, v11

    if-nez v0, :cond_19

    :cond_18
    invoke-virtual {v8}, Lcom/coremobility/k/de;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing VTT Async Notification msg, xml file name ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/k/cv;->g:Lcom/coremobility/l/v;

    invoke-virtual {v1, v0}, Lcom/coremobility/l/v;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    :cond_19
    iget-object v0, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->e()V

    invoke-direct {p0}, Lcom/coremobility/k/cv;->m()V

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_a

    :cond_1a
    move v0, v2

    goto/16 :goto_b

    :cond_1b
    move v0, v2

    goto/16 :goto_c

    :cond_1c
    move v0, v2

    goto/16 :goto_d

    :cond_1d
    move v0, v2

    goto/16 :goto_e

    :cond_1e
    move v0, v2

    goto/16 :goto_f

    :sswitch_0
    const/16 v0, 0x12

    goto/16 :goto_11

    :sswitch_1
    const/16 v0, 0x13

    goto/16 :goto_11

    :sswitch_2
    move v0, v1

    goto/16 :goto_11

    :sswitch_3
    const/4 v0, 0x2

    goto/16 :goto_11

    :sswitch_4
    const/16 v0, 0xb

    goto/16 :goto_11

    :sswitch_5
    const/16 v0, 0xc

    goto/16 :goto_11

    :sswitch_6
    const/16 v0, 0x11

    goto/16 :goto_11

    :sswitch_7
    const/16 v0, 0xf

    goto/16 :goto_11

    :sswitch_8
    move v0, v7

    goto/16 :goto_11

    :sswitch_9
    const/16 v0, 0x10

    goto/16 :goto_11

    :sswitch_a
    const/16 v0, 0xe

    goto/16 :goto_11

    :sswitch_b
    const/16 v0, 0xa

    goto/16 :goto_11

    :sswitch_c
    const/16 v0, 0x14

    goto/16 :goto_11

    :sswitch_d
    const/16 v0, 0x15

    goto/16 :goto_11

    :sswitch_e
    const/16 v0, 0x16

    goto/16 :goto_11

    :sswitch_f
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto/16 :goto_10

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/coremobility/integration/g;->printStackTrace()V

    iget-object v0, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    iget-object v1, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget v1, v1, Lcom/coremobility/e/c;->b:I

    const/16 v2, 0x81

    iget-object v3, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget-object v3, v3, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/e/bd;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v0, v8}, Lcom/coremobility/k/cx;->a(Lcom/coremobility/k/de;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->e()V

    invoke-direct {p0}, Lcom/coremobility/k/cv;->m()V

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_a

    :cond_1f
    const-string v0, "CM+VNM no msg info"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_20
    move v1, v2

    goto/16 :goto_13

    :cond_21
    invoke-virtual {v8}, Lcom/coremobility/k/de;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v8}, Lcom/coremobility/k/de;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "+19997775212"

    const-string v4, "+19997775212"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "vtt_expiry_notice@davepcs.com"

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->d(Ljava/lang/String;)V

    const-string v0, "Trial expires in 2 days"

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->b(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v8, v0}, Lcom/coremobility/k/de;->c(Ljava/lang/String;)V

    :cond_22
    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v0, v8, v6}, Lcom/coremobility/k/cx;->a(Lcom/coremobility/k/de;Lcom/coremobility/integration/h/c;)V

    iget v0, v6, Lcom/coremobility/integration/h/c;->a:I

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v0, v8}, Lcom/coremobility/k/cx;->a(Lcom/coremobility/k/de;)V

    :goto_14
    iget-object v0, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->e()V

    invoke-direct {p0}, Lcom/coremobility/k/cv;->m()V

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_a

    :cond_23
    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_22

    invoke-virtual {v8}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v8}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vvm_multiline_notifications@"

    const-string v4, "vvm_multiline_notifications@"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_25

    :cond_24
    invoke-virtual {v8}, Lcom/coremobility/k/de;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v8}, Lcom/coremobility/k/de;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "+19997775215"

    const-string v4, "+19997775215"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bridging async VVM Multiline notification from: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to VVM Multiline service"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/coremobility/k/de;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    :goto_15
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v8}, Lcom/coremobility/k/de;->d()J

    move-result-wide v0

    cmp-long v0, v0, v11

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VVM Multiline file type is not text/xml. File type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/coremobility/k/de;->d()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {v8}, Lcom/coremobility/k/de;->d()J

    move-result-wide v0

    const-wide/16 v3, 0x2

    cmp-long v0, v0, v3

    if-eqz v0, :cond_27

    invoke-virtual {v8}, Lcom/coremobility/k/de;->d()J

    move-result-wide v0

    cmp-long v0, v0, v11

    if-nez v0, :cond_29

    :cond_27
    invoke-virtual {v8}, Lcom/coremobility/k/de;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing VVM Multiline Async Notification msg, xml file name ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v1, v0}, Lcom/coremobility/k/cx;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    :goto_16
    iget-object v0, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->e()V

    invoke-direct {p0}, Lcom/coremobility/k/cv;->m()V

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_a

    :cond_28
    move v1, v2

    goto :goto_15

    :cond_29
    const-string v0, "*** VVM Multiline Async Notification msg not processed."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_2a
    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-virtual {v8}, Lcom/coremobility/k/de;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_2b
    move v3, v2

    goto/16 :goto_9

    :cond_2c
    move v6, v2

    goto/16 :goto_8

    :cond_2d
    move v0, v1

    goto/16 :goto_7

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x20001 -> :sswitch_5
        0x20002 -> :sswitch_4
        0x20003 -> :sswitch_6
        0x20004 -> :sswitch_7
        0x20005 -> :sswitch_8
        0x20006 -> :sswitch_9
        0x20007 -> :sswitch_a
        0x20008 -> :sswitch_b
        0x20009 -> :sswitch_0
        0x2000a -> :sswitch_1
        0x2000b -> :sswitch_c
        0x2000c -> :sswitch_e
        0x2000d -> :sswitch_d
        0x80001 -> :sswitch_2
        0x80002 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic b(Lcom/coremobility/k/cv;)Lcom/coremobility/e/bd;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    return-object v0
.end method

.method static synthetic c(Lcom/coremobility/k/cv;)Lcom/coremobility/e/bd;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    return-object v0
.end method

.method static synthetic d(Lcom/coremobility/k/cv;)Lcom/coremobility/e/ay;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    return-object v0
.end method

.method private d(I)V
    .locals 9

    const/16 v8, 0x1c

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    const/16 v1, 0x6b

    int-to-long v2, p1

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/k/cx;->a(IJJ)V

    :cond_0
    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v6}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v1, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v1, v7, v0}, Lcom/coremobility/k/cx;->a(ILcom/coremobility/integration/h/c;)I

    move-result v1

    if-lez v1, :cond_3

    iget v1, v0, Lcom/coremobility/integration/h/c;->a:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v1, v0}, Lcom/coremobility/k/cx;->b(Lcom/coremobility/integration/h/c;)I

    move-result v4

    iget v1, v0, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v1, v4, v7, v0}, Lcom/coremobility/k/cx;->c(IILcom/coremobility/integration/h/c;)Lcom/coremobility/k/df;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/coremobility/k/df;->a(ZLcom/coremobility/integration/h/c;)V

    iget v0, v0, Lcom/coremobility/integration/h/c;->a:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    const/16 v1, 0x65

    const-wide/16 v2, 0x1

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/k/cx;->b(IJJ)V

    goto :goto_0

    :cond_2
    const-string v0, "Error del outbox"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "Outbox is empty"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private l()V
    .locals 12

    const v3, 0x2000c

    const/16 v11, 0x2c

    const/16 v10, 0x1c

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    const v0, 0x2d0001

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->f()I

    move-result v0

    const/16 v4, 0x190

    if-eq v0, v4, :cond_0

    const/16 v4, 0x193

    if-eq v0, v4, :cond_0

    const/16 v4, 0x194

    if-ne v0, v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/coremobility/integration/a/a;->h()V

    :cond_1
    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v2}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v4, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v4, v1, v0}, Lcom/coremobility/k/cx;->a(ILcom/coremobility/integration/h/c;)I

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v4, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v4, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v4, v0}, Lcom/coremobility/k/cx;->b(Lcom/coremobility/integration/h/c;)I

    move-result v4

    iget v5, v0, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v5, :cond_5

    const-string v0, " err ret oldest v fr obox"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    new-instance v5, Lcom/coremobility/k/df;

    invoke-direct {v5}, Lcom/coremobility/k/df;-><init>()V

    invoke-virtual {v5, v4, v0}, Lcom/coremobility/k/df;->b(ILcom/coremobility/integration/h/c;)V

    iget v0, v0, Lcom/coremobility/integration/h/c;->a:I

    if-nez v0, :cond_3

    invoke-virtual {v5}, Lcom/coremobility/k/df;->l()[J

    move-result-object v0

    aget-wide v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_6

    const-string v0, " TIMESTAMP_OUT is not set"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v5}, Lcom/coremobility/k/df;->l()[J

    move-result-object v0

    aget-wide v6, v0, v2

    long-to-int v0, v6

    iput v0, p0, Lcom/coremobility/k/cv;->q:I

    iget v0, p0, Lcom/coremobility/k/cv;->q:I

    iget v4, p0, Lcom/coremobility/k/cv;->r:I

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    iget v0, p0, Lcom/coremobility/k/cv;->q:I

    iput v0, p0, Lcom/coremobility/k/cv;->s:I

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/coremobility/e/ay;->b(I)V

    new-instance v0, Lcom/coremobility/k/cq;

    invoke-direct {v0}, Lcom/coremobility/k/cq;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget v0, p0, Lcom/coremobility/k/cv;->q:I

    int-to-long v6, v0

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    invoke-static {v6, v7, v1}, Lcom/coremobility/g/l;->a(JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/coremobility/k/df;->k()Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v5}, Lcom/coremobility/k/df;->l()[J

    move-result-object v0

    aget-wide v6, v0, v1

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_a

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v5}, Lcom/coremobility/k/df;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v3, Lcom/coremobility/e/am;

    invoke-direct {v3}, Lcom/coremobility/e/am;-><init>()V

    iput-object v4, v3, Lcom/coremobility/e/am;->a:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/coremobility/k/df;->l()[J

    move-result-object v0

    aget-wide v6, v0, v2

    long-to-int v0, v6

    iput v0, v3, Lcom/coremobility/e/am;->c:I

    invoke-virtual {v5}, Lcom/coremobility/k/df;->m()J

    move-result-wide v6

    const-wide/16 v8, 0x2100

    and-long/2addr v6, v8

    long-to-int v0, v6

    iput v0, v3, Lcom/coremobility/e/am;->d:I

    iget-object v0, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/a/a;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/coremobility/e/am;->e:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/coremobility/k/df;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/coremobility/e/am;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/coremobility/k/df;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v5}, Lcom/coremobility/k/df;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v5}, Lcom/coremobility/k/df;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_3
    invoke-virtual {v5}, Lcom/coremobility/k/df;->f()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Lcom/coremobility/k/df;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v0, :cond_8

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v5}, Lcom/coremobility/k/df;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/coremobility/e/am;->g:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/coremobility/k/df;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/coremobility/e/am;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/k/cv;->t:Lcom/coremobility/e/y;

    invoke-virtual {v0, v3}, Lcom/coremobility/e/y;->a(Lcom/coremobility/e/am;)I

    move-result v0

    if-nez v0, :cond_c

    :goto_4
    const-string v3, "kMmsSuccess == Send_MForwardReq"

    invoke-static {v1, v3}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    :goto_5
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/coremobility/k/cv;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v1, v0, v2, v2}, Lcom/coremobility/e/bc;->a(III)V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto/16 :goto_2

    :cond_c
    move v1, v2

    goto :goto_4

    :cond_d
    new-instance v6, Lcom/coremobility/e/at;

    invoke-direct {v6}, Lcom/coremobility/e/at;-><init>()V

    iput-object v4, v6, Lcom/coremobility/e/at;->a:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/coremobility/k/df;->l()[J

    move-result-object v0

    aget-wide v7, v0, v2

    long-to-int v0, v7

    iput v0, v6, Lcom/coremobility/e/at;->c:I

    invoke-virtual {v5}, Lcom/coremobility/k/df;->m()J

    move-result-wide v7

    const-wide/16 v9, 0x2100

    and-long/2addr v7, v9

    long-to-int v0, v7

    iput v0, v6, Lcom/coremobility/e/at;->d:I

    iget-object v0, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/a/a;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/coremobility/e/at;->e:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/coremobility/k/df;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/coremobility/e/at;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/coremobility/k/df;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v5}, Lcom/coremobility/k/df;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v5}, Lcom/coremobility/k/df;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_6
    invoke-virtual {v5}, Lcom/coremobility/k/df;->f()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v5}, Lcom/coremobility/k/df;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_f

    if-eqz v0, :cond_e

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v5}, Lcom/coremobility/k/df;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/coremobility/e/at;->i:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/coremobility/k/df;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/coremobility/e/at;->l:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/coremobility/k/df;->j()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    if-eq v0, v4, :cond_13

    invoke-virtual {v5}, Lcom/coremobility/k/df;->j()Ljava/lang/String;

    move-result-object v0

    :goto_7
    iput-object v0, v6, Lcom/coremobility/e/at;->x:Ljava/lang/String;

    new-instance v0, Lcom/coremobility/e/ak;

    invoke-direct {v0}, Lcom/coremobility/e/ak;-><init>()V

    invoke-virtual {v5}, Lcom/coremobility/k/df;->h()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v5}, Lcom/coremobility/k/df;->h()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    iput v1, v6, Lcom/coremobility/e/at;->g:I

    iput v1, v0, Lcom/coremobility/e/ak;->a:I

    invoke-virtual {v5}, Lcom/coremobility/k/df;->l()[J

    move-result-object v4

    aget-wide v7, v4, v1

    long-to-int v4, v7

    iput v4, v0, Lcom/coremobility/e/ak;->b:I

    invoke-virtual {v5}, Lcom/coremobility/k/df;->h()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/coremobility/e/ak;->c:Ljava/lang/String;

    new-array v4, v1, [Lcom/coremobility/e/ak;

    iput-object v4, v6, Lcom/coremobility/e/at;->h:[Lcom/coremobility/e/ak;

    iget-object v4, v6, Lcom/coremobility/e/at;->h:[Lcom/coremobility/e/ak;

    aput-object v0, v4, v2

    :cond_10
    iput v1, v6, Lcom/coremobility/e/at;->y:I

    new-instance v4, Lcom/coremobility/e/au;

    invoke-direct {v4}, Lcom/coremobility/e/au;-><init>()V

    invoke-virtual {v5}, Lcom/coremobility/k/df;->n()J

    move-result-wide v7

    long-to-int v0, v7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/4 v0, -0x1

    :goto_8
    iput v0, v4, Lcom/coremobility/e/au;->a:I

    invoke-virtual {v5}, Lcom/coremobility/k/df;->o()J

    move-result-wide v7

    long-to-int v0, v7

    iput v0, v4, Lcom/coremobility/e/au;->b:I

    invoke-virtual {v5}, Lcom/coremobility/k/df;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    iget v0, v4, Lcom/coremobility/e/au;->a:I

    if-eq v0, v3, :cond_11

    iget v0, v4, Lcom/coremobility/e/au;->a:I

    const v3, 0x2000d

    if-ne v0, v3, :cond_12

    :cond_11
    new-instance v0, Lcom/coremobility/integration/r;

    iget v3, v4, Lcom/coremobility/e/au;->b:I

    invoke-direct {v0, v3}, Lcom/coremobility/integration/r;-><init>(I)V

    new-instance v3, Lcom/coremobility/integration/r;

    iget v5, v4, Lcom/coremobility/e/au;->a:I

    invoke-direct {v3, v5}, Lcom/coremobility/integration/r;-><init>(I)V

    iget-object v5, v4, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    invoke-static {v5, v3, v0}, Lcom/coremobility/e/a/a;->b(Ljava/lang/String;Lcom/coremobility/integration/r;Lcom/coremobility/integration/r;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    iget v7, v0, Lcom/coremobility/integration/r;->a:I

    if-eqz v7, :cond_12

    iget v3, v3, Lcom/coremobility/integration/r;->a:I

    iput v3, v4, Lcom/coremobility/e/au;->a:I

    iget v0, v0, Lcom/coremobility/integration/r;->a:I

    iput v0, v4, Lcom/coremobility/e/au;->b:I

    iput-object v5, v4, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    :cond_12
    new-array v0, v1, [Lcom/coremobility/e/au;

    iput-object v0, v6, Lcom/coremobility/e/at;->z:[Lcom/coremobility/e/au;

    iget-object v0, v6, Lcom/coremobility/e/at;->z:[Lcom/coremobility/e/au;

    aput-object v4, v0, v2

    iget-object v0, p0, Lcom/coremobility/k/cv;->t:Lcom/coremobility/e/y;

    invoke-virtual {v0, v6, v2}, Lcom/coremobility/e/y;->a(Lcom/coremobility/e/at;I)I

    move-result v0

    if-nez v0, :cond_14

    :goto_9
    const-string v3, "kMmsSuccess == Send_MSendReq"

    invoke-static {v1, v3}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    goto/16 :goto_5

    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_7

    :pswitch_1
    const v0, 0x20009

    goto :goto_8

    :pswitch_2
    const v0, 0x2000a

    goto :goto_8

    :pswitch_3
    const v0, 0x80001

    goto :goto_8

    :pswitch_4
    const v0, 0x20002

    goto :goto_8

    :pswitch_5
    const v0, 0x20001

    goto :goto_8

    :pswitch_6
    const v0, 0x20003

    goto :goto_8

    :pswitch_7
    const v0, 0x20004

    goto :goto_8

    :pswitch_8
    const v0, 0x20005

    goto :goto_8

    :pswitch_9
    const v0, 0x20006

    goto :goto_8

    :pswitch_a
    const v0, 0x20007

    goto :goto_8

    :pswitch_b
    const v0, 0x20008

    goto/16 :goto_8

    :pswitch_c
    const v0, 0x2000b

    goto/16 :goto_8

    :pswitch_d
    const v0, 0x2000d

    goto/16 :goto_8

    :pswitch_e
    move v0, v3

    goto/16 :goto_8

    :cond_14
    move v1, v2

    goto :goto_9

    :cond_15
    move v0, v2

    goto/16 :goto_6

    :cond_16
    move v0, v2

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/cv;->i:Lcom/coremobility/e/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->i:Lcom/coremobility/e/ar;

    invoke-static {v0}, Lcom/coremobility/e/y;->a(Lcom/coremobility/e/ar;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/k/cv;->i:Lcom/coremobility/e/ar;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final a(I)I
    .locals 1

    add-int/lit16 v0, p1, 0x3210

    return v0
.end method

.method public final a(IZ)I
    .locals 9

    const v8, 0x2d0001

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/coremobility/integration/h/c;

    invoke-direct {v2, v1}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v3, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v3, p1, v2}, Lcom/coremobility/k/cx;->b(ILcom/coremobility/integration/h/c;)Lcom/coremobility/k/de;

    move-result-object v3

    iget v4, v2, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v4, :cond_1

    const/4 v1, 0x4

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v3}, Lcom/coremobility/k/de;->b()[J

    move-result-object v4

    aget-wide v4, v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    const/16 v4, 0x1c

    const-string v5, " TIMESTAMP_OUT is not set"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v3}, Lcom/coremobility/k/de;->b()[J

    move-result-object v3

    aget-wide v3, v3, v1

    long-to-int v3, v3

    iput v3, p0, Lcom/coremobility/k/cv;->r:I

    iget v3, p0, Lcom/coremobility/k/cv;->q:I

    iget v4, p0, Lcom/coremobility/k/cv;->r:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v3}, Lcom/coremobility/e/ay;->a()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/coremobility/k/cv;->t:Lcom/coremobility/e/y;

    iget v4, p0, Lcom/coremobility/k/cv;->q:I

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    invoke-static {v4, v5, v0}, Lcom/coremobility/g/l;->a(JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/coremobility/e/y;->c(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/coremobility/integration/h/c;->a:I

    iget v2, v2, Lcom/coremobility/integration/h/c;->a:I

    if-nez v2, :cond_5

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/coremobility/e/ay;->b(I)V

    iget v0, p0, Lcom/coremobility/k/cv;->q:I

    iput v0, p0, Lcom/coremobility/k/cv;->s:I

    :cond_3
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->d()V

    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    invoke-static {v8, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->k:Lcom/coremobility/g/b;

    invoke-virtual {v0, v8, p0, v1, v1}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method protected final a(III)V
    .locals 10

    const v2, 0x2d0002

    const/4 v1, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    invoke-static {v8}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v1, :cond_1

    const v0, 0x2d0001

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    :cond_1
    if-gez p1, :cond_2

    invoke-direct {p0, p3}, Lcom/coremobility/k/cv;->d(I)V

    invoke-direct {p0}, Lcom/coremobility/k/cv;->l()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/coremobility/k/cv;->l()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->k:Lcom/coremobility/g/b;

    const v1, 0x2d0001

    invoke-virtual {v0, v1, p1, p0}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coremobility/k/cv;->C:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/k/cv;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->c()Lcom/coremobility/j/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/j/h;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iput-boolean v8, p0, Lcom/coremobility/k/cv;->C:Z

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    const/16 v1, 0x68

    int-to-long v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/k/cx;->a(IJJ)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/coremobility/g/m;->b()J

    move-result-wide v0

    iget v2, p0, Lcom/coremobility/k/cv;->q:I

    int-to-long v2, v2

    sub-long v6, v0, v2

    iget-object v0, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v1, 0x3209

    const v2, 0x15180

    invoke-virtual {v0, v1, v8, v2}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x40000000

    cmp-long v0, v6, v0

    if-gtz v0, :cond_0

    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v8}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v1, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v1, v9, v0}, Lcom/coremobility/k/cx;->a(ILcom/coremobility/integration/h/c;)I

    move-result v1

    if-lez v1, :cond_0

    iget v1, v0, Lcom/coremobility/integration/h/c;->a:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v1, v0}, Lcom/coremobility/k/cx;->b(Lcom/coremobility/integration/h/c;)I

    move-result v1

    iget v2, v0, Lcom/coremobility/integration/h/c;->a:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v2, v1, v9, v0}, Lcom/coremobility/k/cx;->c(IILcom/coremobility/integration/h/c;)Lcom/coremobility/k/df;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/k/df;->m()J

    move-result-wide v2

    const-wide/32 v8, 0x10000

    and-long/2addr v2, v8

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/coremobility/k/df;->a(Lcom/coremobility/integration/h/c;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    const/16 v1, 0x69

    iget-object v2, p0, Lcom/coremobility/k/cv;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v2}, Lcom/coremobility/e/bc;->f()I

    move-result v2

    int-to-long v2, v2

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/k/cx;->a(IJJ)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v1, :cond_6

    invoke-static {v2, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    :cond_6
    if-gez p1, :cond_7

    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    const/16 v1, 0x6d

    iget-object v2, p0, Lcom/coremobility/k/cv;->u:Lcom/coremobility/e/az;

    invoke-virtual {v2}, Lcom/coremobility/e/az;->f()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/k/cx;->a(IJJ)V

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_0

    :cond_7
    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->k:Lcom/coremobility/g/b;

    invoke-virtual {v0, v2, p1, p0}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coremobility/k/cv;->o:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v1, 0x3201

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v2, 0x3202

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v3, 0x3200

    invoke-virtual {v2, v3}, Lcom/coremobility/integration/a/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/coremobility/k/cv;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_9

    invoke-static {v1, v0}, Lcom/coremobility/k/cv;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    :cond_9
    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    const/16 v1, 0x70

    const-wide/16 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/k/cx;->a(IJJ)V

    iput-boolean v9, p0, Lcom/coremobility/k/cv;->o:Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    invoke-static {v2, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    :cond_a
    if-gez p1, :cond_b

    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    const/16 v1, 0x6d

    iget-object v2, p0, Lcom/coremobility/k/cv;->u:Lcom/coremobility/e/az;

    invoke-virtual {v2}, Lcom/coremobility/e/az;->f()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/k/cx;->a(IJJ)V

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_0

    :cond_b
    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->k:Lcom/coremobility/g/b;

    invoke-virtual {v0, v2, p1, p0}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coremobility/k/cv;->o:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v1, 0x3201

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v2, 0x3202

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v3, 0x3200

    invoke-virtual {v2, v3}, Lcom/coremobility/integration/a/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/coremobility/k/cv;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_d

    invoke-static {v1, v0}, Lcom/coremobility/k/cv;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    :cond_d
    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    const/16 v1, 0x70

    const-wide/16 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/k/cx;->a(IJJ)V

    iput-boolean v9, p0, Lcom/coremobility/k/cv;->o:Z

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
    .locals 7

    const/16 v6, 0x1c

    const/4 v5, 0x6

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    check-cast p3, Lcom/coremobility/e/ap;

    invoke-static {}, Lcom/coremobility/e/a/a;->a()V

    iget v0, p3, Lcom/coremobility/e/ap;->c:I

    const/16 v3, 0x80

    if-ne v0, v3, :cond_5

    iget-object v0, p3, Lcom/coremobility/e/ap;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p3, Lcom/coremobility/e/ap;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/coremobility/e/ap;->f:Ljava/lang/String;

    iget-object v3, p3, Lcom/coremobility/e/ap;->g:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/coremobility/i/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/coremobility/k/cv;->d(I)V

    invoke-direct {p0}, Lcom/coremobility/k/cv;->l()V

    :cond_2
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v5, :cond_0

    :cond_3
    const-string v0, "CM+VNM send ok - kick retrv"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x2d0002

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->k:Lcom/coremobility/g/b;

    const v2, 0x2d0002

    invoke-virtual {v0, v2, v1, p0}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget v0, p3, Lcom/coremobility/e/ap;->c:I

    const/16 v3, 0xc2

    if-eq v0, v3, :cond_6

    iget v0, p3, Lcom/coremobility/e/ap;->c:I

    const/16 v3, 0xe4

    if-ne v0, v3, :cond_2

    :cond_6
    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v2}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v2, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v2, v0}, Lcom/coremobility/k/cx;->b(Lcom/coremobility/integration/h/c;)I

    move-result v2

    iget v3, v0, Lcom/coremobility/integration/h/c;->a:I

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v3, v2, v1, v0}, Lcom/coremobility/k/cx;->c(IILcom/coremobility/integration/h/c;)Lcom/coremobility/k/df;

    move-result-object v1

    iget v3, v0, Lcom/coremobility/integration/h/c;->a:I

    if-nez v3, :cond_7

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/coremobility/k/df;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/coremobility/k/df;->b(Lcom/coremobility/integration/h/c;)V

    new-instance v0, Lcom/coremobility/k/u;

    iget v3, p0, Lcom/coremobility/k/cv;->q:I

    invoke-virtual {v1}, Lcom/coremobility/k/df;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/coremobility/k/u;-><init>(IILjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :cond_7
    iget-object v0, p0, Lcom/coremobility/k/cv;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->d()V

    iget-object v0, p0, Lcom/coremobility/k/cv;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->d()V

    invoke-direct {p0}, Lcom/coremobility/k/cv;->l()V

    goto/16 :goto_0

    :pswitch_2
    check-cast p3, Lcom/coremobility/e/an;

    iget-object v0, p0, Lcom/coremobility/k/cv;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->f()I

    move-result v0

    const/16 v3, 0x191

    if-ne v0, v3, :cond_8

    const-string v0, "CM+VNM waiting pwd"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v1, :cond_a

    iget-boolean v0, p3, Lcom/coremobility/e/an;->f:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v4}, Lcom/coremobility/e/ay;->b(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eq v0, v4, :cond_b

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v5, :cond_d

    :cond_b
    :goto_2
    iget-boolean v0, p3, Lcom/coremobility/e/an;->f:Z

    if-eqz v0, :cond_c

    if-nez v1, :cond_0

    :cond_c
    invoke-virtual {p0, v2}, Lcom/coremobility/k/cv;->a(Z)V

    goto/16 :goto_0

    :cond_d
    move v1, v2

    goto :goto_2

    :pswitch_3
    check-cast p3, Lcom/coremobility/e/ar;

    invoke-direct {p0, p1, p3}, Lcom/coremobility/k/cv;->a(ILcom/coremobility/e/ar;)V

    goto/16 :goto_0

    :pswitch_4
    if-nez p3, :cond_e

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-nez p1, :cond_f

    :goto_4
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto :goto_3

    :cond_f
    move v1, v2

    goto :goto_4

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

    const/4 v6, 0x1

    const/16 v4, 0x1c

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v7, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    if-eq p2, p0, :cond_14

    :goto_1
    return-void

    :sswitch_0
    iget-boolean v0, p0, Lcom/coremobility/k/cv;->B:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    sget-object v0, Lcom/coremobility/e/ah;->l:[I

    aget v0, v0, v7

    if-ne p3, v0, :cond_0

    goto :goto_0

    :sswitch_1
    if-eqz p3, :cond_1

    sget-object v0, Lcom/coremobility/e/ah;->l:[I

    aget v0, v0, v7

    if-ne p3, v0, :cond_0

    :cond_1
    if-ne p4, v6, :cond_2

    iget-boolean v0, p0, Lcom/coremobility/k/cv;->n:Z

    if-nez v0, :cond_2

    iput-boolean v6, p0, Lcom/coremobility/k/cv;->n:Z

    const-string v0, "CM+VNM 1st net unblk"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-boolean v0, p0, Lcom/coremobility/k/cv;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/coremobility/k/cv;->l()V

    :cond_3
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    :cond_4
    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    sget-object v0, Lcom/coremobility/e/ah;->l:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/coremobility/k/cv;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v1}, Lcom/coremobility/e/bc;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coremobility/f/m;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CM+VNM net-unblk retry send"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x2d0001

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/k/cv;->l()V

    :cond_5
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    :cond_6
    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    sget-object v0, Lcom/coremobility/e/ah;->l:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/coremobility/k/cv;->u:Lcom/coremobility/e/az;

    invoke-virtual {v1}, Lcom/coremobility/e/az;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coremobility/f/m;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CM+VNM net-unblk retry recv"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x2d0002

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_0

    :sswitch_2
    if-eqz p3, :cond_7

    sget-object v0, Lcom/coremobility/e/ah;->l:[I

    aget v0, v0, v7

    if-ne v0, p3, :cond_0

    :cond_7
    iget-boolean v0, p0, Lcom/coremobility/k/cv;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/coremobility/k/cv;->l()V

    :cond_8
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    :cond_9
    iget-object v0, p0, Lcom/coremobility/k/cv;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v3, :cond_a

    const-string v0, "CM+VNM net-connectivity retry send"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x2d0001

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/k/cv;->l()V

    :cond_a
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eq v0, v3, :cond_b

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    :cond_b
    const-string v0, "CM+VNM net-connectivity retry recv"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x2d0002

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_0

    :sswitch_3
    if-ne p3, v2, :cond_11

    const/16 v0, 0x1340

    if-ne p4, v0, :cond_11

    new-instance v0, Lcom/coremobility/k/cm;

    invoke-direct {v0}, Lcom/coremobility/k/cm;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v3, :cond_e

    iget-object v0, p0, Lcom/coremobility/k/cv;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x2d0001

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/k/cv;->l()V

    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eq v0, v3, :cond_d

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    :cond_d
    iget-object v0, p0, Lcom/coremobility/k/cv;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x2d0002

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/coremobility/k/cv;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v0}, Lcom/coremobility/e/bc;->e()V

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eq v0, v2, :cond_10

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    :cond_10
    iget-object v0, p0, Lcom/coremobility/k/cv;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->e()V

    goto/16 :goto_0

    :cond_11
    if-ne p3, v2, :cond_12

    const/16 v0, 0x1320

    if-ne p4, v0, :cond_12

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->h()V

    goto/16 :goto_0

    :cond_12
    if-ne p3, v2, :cond_13

    const/16 v0, 0x3201

    if-ne p4, v0, :cond_13

    iget-boolean v0, p0, Lcom/coremobility/k/cv;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v1, 0x3201

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v2, 0x3202

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v3, 0x3200

    invoke-virtual {v2, v3}, Lcom/coremobility/integration/a/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coremobility/k/cv;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Lcom/coremobility/k/cv;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    const/16 v1, 0x70

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/k/cx;->a(IJJ)V

    iput-boolean v7, p0, Lcom/coremobility/k/cv;->o:Z

    goto/16 :goto_0

    :cond_13
    if-ne p3, v2, :cond_0

    const/16 v0, 0x3202

    if-ne p4, v0, :cond_0

    iget-boolean v0, p0, Lcom/coremobility/k/cv;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v1, 0x3201

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v2, 0x3202

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v3, 0x3200

    invoke-virtual {v2, v3}, Lcom/coremobility/integration/a/a;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    invoke-virtual {v3}, Lcom/coremobility/e/c;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Lcom/coremobility/k/cv;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1, v0}, Lcom/coremobility/k/cv;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    const/16 v1, 0x70

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/k/cx;->a(IJJ)V

    iput-boolean v6, p0, Lcom/coremobility/k/cv;->o:Z

    goto/16 :goto_0

    :cond_14
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/coremobility/k/cv;->l()V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_1

    :pswitch_3
    int-to-long v1, p3

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_15

    move v0, v6

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v7}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v3, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v3}, Lcom/coremobility/k/cx;->m()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_16

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/k/cx;->a(J)V

    goto/16 :goto_1

    :cond_15
    move v0, v7

    goto :goto_3

    :cond_16
    iget-object v1, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v1, v0}, Lcom/coremobility/k/cx;->a(Lcom/coremobility/integration/h/c;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/k/cx;->a(J)V

    goto/16 :goto_1

    :cond_17
    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0xd -> :sswitch_2
        0xe -> :sswitch_0
        0x35 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d0001
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 3

    new-instance v0, Lcom/coremobility/k/cn;

    iget-object v1, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v1}, Lcom/coremobility/e/ay;->a()I

    move-result v1

    iget-object v2, p0, Lcom/coremobility/k/cv;->u:Lcom/coremobility/e/az;

    invoke-virtual {v2}, Lcom/coremobility/e/az;->f()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/coremobility/k/cn;-><init>(ZII)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const v0, 0x2d0002

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    iget-boolean v0, p0, Lcom/coremobility/k/cv;->B:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coremobility/k/cv;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->a()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v0, 0x2d

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    iget v0, p0, Lcom/coremobility/k/cv;->q:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->t:Lcom/coremobility/e/y;

    iget v1, p0, Lcom/coremobility/k/cv;->q:I

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/coremobility/g/l;->a(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/coremobility/e/y;->c(Ljava/lang/String;I)I

    :cond_0
    iget-object v0, p0, Lcom/coremobility/k/cv;->t:Lcom/coremobility/e/y;

    invoke-virtual {v0, p0, v5}, Lcom/coremobility/e/y;->b(Lcom/coremobility/e/aw;I)I

    iget-object v0, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->d()V

    iget-object v0, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    invoke-virtual {v0}, Lcom/coremobility/e/bd;->a()V

    return-void
.end method

.method public final c(I)I
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v2}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v3, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v3, p1, v1, v0}, Lcom/coremobility/k/cx;->c(IILcom/coremobility/integration/h/c;)Lcom/coremobility/k/df;

    iget v3, v0, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v3, :cond_1

    iget v2, v0, Lcom/coremobility/integration/h/c;->a:I

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v3, p1, v0}, Lcom/coremobility/k/cx;->b(ILcom/coremobility/integration/h/c;)Lcom/coremobility/k/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/k/de;->b()[J

    move-result-object v3

    aget-wide v3, v3, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    const/16 v3, 0x1c

    const-string v4, " TIMESTAMP_OUT is not set"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Lcom/coremobility/k/de;->b()[J

    move-result-object v3

    aget-wide v3, v3, v2

    iget v5, p0, Lcom/coremobility/k/cv;->r:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/coremobility/k/cv;->r:I

    invoke-virtual {v0}, Lcom/coremobility/k/de;->b()[J

    move-result-object v0

    aget-wide v3, v0, v2

    iget v0, p0, Lcom/coremobility/k/cv;->s:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/k/cv;->q:I

    iget v3, p0, Lcom/coremobility/k/cv;->s:I

    if-ne v0, v3, :cond_5

    :goto_2
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput v2, p0, Lcom/coremobility/k/cv;->s:I

    invoke-direct {p0}, Lcom/coremobility/k/cv;->l()V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    new-instance v0, Lcom/coremobility/k/co;

    iget-object v1, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v1}, Lcom/coremobility/e/ay;->a()I

    move-result v1

    iget-object v2, p0, Lcom/coremobility/k/cv;->v:Lcom/coremobility/e/bc;

    invoke-virtual {v2}, Lcom/coremobility/e/bc;->f()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/coremobility/k/co;-><init>(II)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x2d0001

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/k/cv;->C:Z

    invoke-direct {p0}, Lcom/coremobility/k/cv;->l()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coremobility/k/cv;->l()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/coremobility/k/cv;->f:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/k/cr;

    invoke-direct {v0}, Lcom/coremobility/k/cr;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iput-boolean v1, p0, Lcom/coremobility/k/cv;->f:Z

    iget-boolean v0, p0, Lcom/coremobility/k/cv;->n:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/k/cv;->l()V

    invoke-virtual {p0}, Lcom/coremobility/k/cv;->g()V

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
    .locals 7

    const-wide/16 v2, 0x0

    const v5, 0x2d0002

    const/4 v0, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v1}, Lcom/coremobility/e/ay;->a()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v1}, Lcom/coremobility/e/ay;->a()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_2

    :cond_0
    invoke-static {v5, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/k/cv;->u:Lcom/coremobility/e/az;

    invoke-virtual {v1}, Lcom/coremobility/e/az;->f()I

    move-result v1

    const/16 v4, 0x190

    if-eq v1, v4, :cond_1

    const/16 v4, 0x193

    if-eq v1, v4, :cond_1

    const/16 v4, 0x194

    if-ne v1, v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/coremobility/integration/a/a;->h()V

    :cond_2
    iget-object v1, p0, Lcom/coremobility/k/cv;->i:Lcom/coremobility/e/ar;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/coremobility/k/cv;->i:Lcom/coremobility/e/ar;

    iget-object v0, v0, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v6

    const-string v1, "VN-OVERFLOW"

    iput-object v1, v0, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    iget v0, p0, Lcom/coremobility/k/cv;->h:I

    iget-object v1, p0, Lcom/coremobility/k/cv;->i:Lcom/coremobility/e/ar;

    invoke-direct {p0, v0, v1}, Lcom/coremobility/k/cv;->a(ILcom/coremobility/e/ar;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    invoke-virtual {v1}, Lcom/coremobility/e/bd;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/coremobility/e/ay;->b(I)V

    new-instance v1, Lcom/coremobility/e/ao;

    invoke-direct {v1}, Lcom/coremobility/e/ao;-><init>()V

    iget-object v2, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    iget-object v2, v2, Lcom/coremobility/e/bd;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/coremobility/e/ao;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    iget v2, v2, Lcom/coremobility/e/bd;->a:I

    iput v2, v1, Lcom/coremobility/e/ao;->b:I

    iget-object v2, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    iget v2, v2, Lcom/coremobility/e/bd;->b:I

    iput v2, v1, Lcom/coremobility/e/ao;->d:I

    iget-boolean v2, p0, Lcom/coremobility/k/cv;->B:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/coremobility/k/cv;->u:Lcom/coremobility/e/az;

    invoke-virtual {v2}, Lcom/coremobility/e/az;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/e/ao;->c:Ljava/lang/String;

    :cond_5
    new-instance v2, Lcom/coremobility/k/k;

    iget-object v3, v1, Lcom/coremobility/e/ao;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/coremobility/k/k;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v2, p0, Lcom/coremobility/k/cv;->t:Lcom/coremobility/e/y;

    invoke-virtual {v2, v1, v6}, Lcom/coremobility/e/y;->a(Lcom/coremobility/e/ao;I)I

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    const-string v2, "kMmsSuccess == Send_MNotifyRespInd"

    invoke-static {v0, v2}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/coremobility/k/cv;->u:Lcom/coremobility/e/az;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v6, v2}, Lcom/coremobility/e/az;->a(III)V

    goto :goto_0

    :cond_6
    move v0, v6

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    invoke-virtual {v1}, Lcom/coremobility/e/c;->g()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v1, v0}, Lcom/coremobility/e/ay;->b(I)V

    iget-boolean v0, p0, Lcom/coremobility/k/cv;->o:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    const/16 v1, 0x70

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/k/cx;->a(IJJ)V

    iput-boolean v6, p0, Lcom/coremobility/k/cv;->o:Z

    goto :goto_0

    :cond_8
    new-instance v1, Lcom/coremobility/integration/h/c;

    invoke-direct {v1, v6}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v1, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget v1, v1, Lcom/coremobility/e/c;->c:I

    const v2, 0xaae60

    if-le v1, v2, :cond_9

    const/16 v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+VNM n-ind msg size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget v2, v2, Lcom/coremobility/e/c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    iget-object v1, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget v1, v1, Lcom/coremobility/e/c;->b:I

    const/16 v2, 0xff

    iget-object v3, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget-object v3, v3, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/e/bd;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->u:Lcom/coremobility/e/az;

    invoke-virtual {v0}, Lcom/coremobility/e/az;->d()V

    iget-object v0, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->e()V

    iget-object v0, p0, Lcom/coremobility/k/cv;->k:Lcom/coremobility/g/b;

    invoke-virtual {v0, v5, p0, v6, v6}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget v1, v1, Lcom/coremobility/e/c;->c:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v3}, Lcom/coremobility/k/cx;->m()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_a

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->k:Lcom/coremobility/g/b;

    const v1, 0x2d0003

    iget-object v2, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget v2, v2, Lcom/coremobility/e/c;->c:I

    invoke-virtual {v0, v1, p0, v2, v6}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/coremobility/e/ay;->b(I)V

    new-instance v1, Lcom/coremobility/k/cl;

    iget-object v2, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget-object v2, v2, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/coremobility/k/cl;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v1, p0, Lcom/coremobility/k/cv;->t:Lcom/coremobility/e/y;

    iget-object v2, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget-object v2, v2, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/coremobility/e/y;->a(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_b

    :goto_2
    const-string v1, "kMmsSuccess == Send_GetRequest"

    invoke-static {v0, v1}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move v0, v6

    goto :goto_2
.end method

.method protected final h()V
    .locals 7

    const/16 v6, 0x1c

    const/16 v5, 0x8

    const/4 v4, 0x7

    const v3, 0x2d0002

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/coremobility/e/aw;->h()V

    :goto_0
    iget-object v0, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    invoke-virtual {v0}, Lcom/coremobility/e/bd;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/cv;->t:Lcom/coremobility/e/y;

    iget-object v1, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    iget-object v1, v1, Lcom/coremobility/e/bd;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/y;->c(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v5}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->k:Lcom/coremobility/g/b;

    invoke-virtual {v0, v3, p0, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM+VNM del ack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    iget v1, v1, Lcom/coremobility/e/bd;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    iget-object v1, v1, Lcom/coremobility/e/bd;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    invoke-virtual {v0}, Lcom/coremobility/e/bd;->b()V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/coremobility/k/cv;->t:Lcom/coremobility/e/y;

    iget-object v1, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget-object v1, v1, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/y;->b(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v4}, Lcom/coremobility/e/ay;->b(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->k:Lcom/coremobility/g/b;

    invoke-virtual {v0, v3, p0, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM+VNM del n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget v1, v1, Lcom/coremobility/e/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget v1, v1, Lcom/coremobility/e/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget-object v1, v1, Lcom/coremobility/e/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget-object v1, v1, Lcom/coremobility/e/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    invoke-virtual {v0}, Lcom/coremobility/e/c;->e()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-static {v3, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    :cond_6
    invoke-static {v3, p0}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    const v0, 0x2d0003

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eq v0, v4, :cond_9

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eq v0, v5, :cond_9

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0}, Lcom/coremobility/e/ay;->a()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ay;->b(I)V

    :cond_9
    iget-object v0, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v1, 0x3202

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/a;->a(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v1, 0x3201

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/a;->a(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v1, 0x3200

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/a;->a(I)V

    return-void
.end method

.method public final j()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/coremobility/e/aw;->j()V

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/cv;->k:Lcom/coremobility/g/b;

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/cv;->g:Lcom/coremobility/l/v;

    :cond_0
    invoke-static {}, Lcom/coremobility/i/b;->a()Lcom/coremobility/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/cv;->l:Lcom/coremobility/i/b;

    invoke-static {}, Lcom/coremobility/g/m;->a()Lcom/coremobility/g/m;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/cv;->m:Lcom/coremobility/g/m;

    iput-boolean v3, p0, Lcom/coremobility/k/cv;->n:Z

    iput-boolean v3, p0, Lcom/coremobility/k/cv;->f:Z

    iput v3, p0, Lcom/coremobility/k/cv;->q:I

    iput v3, p0, Lcom/coremobility/k/cv;->r:I

    iput v3, p0, Lcom/coremobility/k/cv;->s:I

    iput-boolean v3, p0, Lcom/coremobility/k/cv;->o:Z

    iget-object v0, p0, Lcom/coremobility/k/cv;->k:Lcom/coremobility/g/b;

    const/high16 v1, 0x2d

    invoke-virtual {v0, v1, p0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    new-instance v0, Lcom/coremobility/k/cw;

    invoke-direct {v0, p0}, Lcom/coremobility/k/cw;-><init>(Lcom/coremobility/k/cv;)V

    iput-object v0, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    iget-object v0, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    check-cast v0, Lcom/coremobility/k/cw;

    invoke-virtual {v0}, Lcom/coremobility/k/cw;->a()V

    iget-object v0, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    const/16 v1, 0x609a

    invoke-virtual {v0, v1}, Lcom/coremobility/e/bd;->a(S)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->w:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v3}, Lcom/coremobility/e/ay;->a(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->x:Lcom/coremobility/e/ay;

    invoke-virtual {v0, v4}, Lcom/coremobility/e/ay;->a(I)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->t:Lcom/coremobility/e/y;

    invoke-virtual {v0, p0, v3}, Lcom/coremobility/e/y;->a(Lcom/coremobility/e/aw;I)I

    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v3}, Lcom/coremobility/integration/h/c;-><init>(B)V

    sget-boolean v1, Lcom/coremobility/a/a;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v2, 0x320e

    invoke-virtual {v1, v2, v3, v3}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/coremobility/k/cv;->p:Lcom/coremobility/integration/a/a;

    const/16 v2, 0x3201

    invoke-virtual {v1, v2, v3, v4}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coremobility/k/cv;->y:Lcom/coremobility/e/c;

    invoke-virtual {v1}, Lcom/coremobility/e/c;->g()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    invoke-virtual {v1}, Lcom/coremobility/e/bd;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coremobility/k/cv;->e:Lcom/coremobility/k/cx;

    invoke-virtual {v1, v4, v0}, Lcom/coremobility/k/cx;->a(ILcom/coremobility/integration/h/c;)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1c

    const-string v1, "CM+VNM force ack"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/k/cv;->z:Lcom/coremobility/e/bd;

    const/16 v1, 0xfc

    const-string v2, "0"

    invoke-virtual {v0, v3, v1, v2}, Lcom/coremobility/e/bd;->a(IILjava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/coremobility/e/a/a;->a()V

    invoke-static {}, Lcom/coremobility/e/a/a;->b()V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    const-string v0, "VN-OVERFLOW"

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    return-void
.end method
