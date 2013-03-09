.class public final Lcom/coremobility/e/y;
.super Lcom/coremobility/e/ah;

# interfaces
.implements Lcom/coremobility/g/a;


# static fields
.field protected static j:Lcom/coremobility/e/y;


# instance fields
.field protected a:[Lcom/coremobility/e/aw;

.field protected b:Lcom/coremobility/e/ag;

.field protected c:Lcom/coremobility/e/z;

.field protected d:Lcom/coremobility/e/ab;

.field protected e:Lcom/coremobility/e/ac;

.field protected f:Lcom/coremobility/e/af;

.field protected g:Lcom/coremobility/e/aa;

.field protected h:I

.field protected i:Lcom/coremobility/integration/file/a;

.field private m:Lcom/coremobility/integration/k;

.field private n:Lcom/coremobility/g/b;

.field private o:Lcom/coremobility/e/b;

.field private p:Lcom/coremobility/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/e/y;->j:Lcom/coremobility/e/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/e/ah;-><init>()V

    iput-object v1, p0, Lcom/coremobility/e/y;->m:Lcom/coremobility/integration/k;

    iput-object v1, p0, Lcom/coremobility/e/y;->n:Lcom/coremobility/g/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/coremobility/e/aw;

    iput-object v0, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    iput-object v1, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    iput-object v1, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    iput-object v1, p0, Lcom/coremobility/e/y;->b:Lcom/coremobility/e/ag;

    iput-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iput-object v1, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    iput-object v1, p0, Lcom/coremobility/e/y;->e:Lcom/coremobility/e/ac;

    iput-object v1, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    iput-object v1, p0, Lcom/coremobility/e/y;->g:Lcom/coremobility/e/aa;

    iput-object v1, p0, Lcom/coremobility/e/y;->i:Lcom/coremobility/integration/file/a;

    return-void
.end method

.method public static a()Lcom/coremobility/e/y;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/coremobility/e/y;->j:Lcom/coremobility/e/y;

    if-nez v0, :cond_0

    const/16 v0, 0x21

    const-string v1, "Creating MmsService instance"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/e/y;

    invoke-direct {v0}, Lcom/coremobility/e/y;-><init>()V

    sput-object v0, Lcom/coremobility/e/y;->j:Lcom/coremobility/e/y;

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/e/y;->m:Lcom/coremobility/integration/k;

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/e/y;->n:Lcom/coremobility/g/b;

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/e/y;->i:Lcom/coremobility/integration/file/a;

    iput v3, v0, Lcom/coremobility/e/y;->h:I

    iget-object v1, v0, Lcom/coremobility/e/y;->n:Lcom/coremobility/g/b;

    const/high16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    new-instance v1, Lcom/coremobility/e/b;

    invoke-direct {v1}, Lcom/coremobility/e/b;-><init>()V

    iput-object v1, v0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    new-instance v1, Lcom/coremobility/e/d;

    invoke-direct {v1}, Lcom/coremobility/e/d;-><init>()V

    iput-object v1, v0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    new-instance v1, Lcom/coremobility/e/ag;

    invoke-direct {v1}, Lcom/coremobility/e/ag;-><init>()V

    iput-object v1, v0, Lcom/coremobility/e/y;->b:Lcom/coremobility/e/ag;

    new-instance v1, Lcom/coremobility/e/ac;

    invoke-direct {v1, v0}, Lcom/coremobility/e/ac;-><init>(Lcom/coremobility/e/y;)V

    iput-object v1, v0, Lcom/coremobility/e/y;->e:Lcom/coremobility/e/ac;

    new-instance v1, Lcom/coremobility/e/af;

    invoke-direct {v1, v0}, Lcom/coremobility/e/af;-><init>(Lcom/coremobility/e/y;)V

    iput-object v1, v0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    iget-object v1, v0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v1}, Lcom/coremobility/e/b;->a()V

    iget-object v1, v0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/e/d;->a:Lcom/coremobility/integration/file/a;

    iget-object v1, v0, Lcom/coremobility/e/y;->b:Lcom/coremobility/e/ag;

    invoke-virtual {v1}, Lcom/coremobility/e/ag;->b()V

    const-string v1, "MM-TMP"

    invoke-static {v1}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    const-string v1, "MM-1"

    invoke-static {v1}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    const-string v1, "MM-2"

    invoke-static {v1}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    new-instance v1, Lcom/coremobility/e/aa;

    invoke-direct {v1, v0}, Lcom/coremobility/e/aa;-><init>(Lcom/coremobility/e/y;)V

    iput-object v1, v0, Lcom/coremobility/e/y;->g:Lcom/coremobility/e/aa;

    iget-object v1, v0, Lcom/coremobility/e/y;->g:Lcom/coremobility/e/aa;

    invoke-virtual {v1, v0}, Lcom/coremobility/e/aa;->a(Lcom/coremobility/e/y;)V

    :cond_0
    sget-object v0, Lcom/coremobility/e/y;->j:Lcom/coremobility/e/y;

    return-object v0
.end method

.method private a(IILcom/coremobility/i/h;)V
    .locals 4

    const/4 v2, 0x0

    const-string v0, ""

    check-cast p3, Lcom/coremobility/i/c;

    iget-object v1, p3, Lcom/coremobility/i/c;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p3, Lcom/coremobility/i/c;->a:Ljava/lang/String;

    :cond_0
    new-instance v1, Lcom/coremobility/e/as;

    invoke-direct {v1}, Lcom/coremobility/e/as;-><init>()V

    iget v3, p3, Lcom/coremobility/i/c;->b:I

    iput v3, v1, Lcom/coremobility/e/as;->b:I

    iget v3, p3, Lcom/coremobility/i/c;->d:I

    iput v3, v1, Lcom/coremobility/e/as;->c:I

    iget v3, p3, Lcom/coremobility/i/c;->c:I

    iput v3, v1, Lcom/coremobility/e/as;->d:I

    iput-object v0, v1, Lcom/coremobility/e/as;->a:Ljava/lang/String;

    iput p2, v1, Lcom/coremobility/e/as;->e:I

    iget-object v0, p0, Lcom/coremobility/e/y;->e:Lcom/coremobility/e/ac;

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Lcom/coremobility/e/ac;->a(ILcom/coremobility/e/aj;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->n:Lcom/coremobility/g/b;

    const v1, 0xd0002

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static a(Lcom/coremobility/e/ar;)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/coremobility/e/ar;->A:I

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/coremobility/integration/q;

    invoke-direct {v2}, Lcom/coremobility/integration/q;-><init>()V

    iget-object v3, p0, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/q;)I

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v2, v2, Lcom/coremobility/integration/q;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    const/16 v3, 0x21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM+MMS file err "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " delete "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/coremobility/e/aw;IIZ)V
    .locals 6

    const/4 v4, 0x0

    const/16 v5, 0x21

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_9

    iget-object v0, p0, Lcom/coremobility/e/y;->e:Lcom/coremobility/e/ac;

    invoke-virtual {v0}, Lcom/coremobility/e/ac;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/y;->e:Lcom/coremobility/e/ac;

    invoke-virtual {v0}, Lcom/coremobility/e/ac;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ad;

    iget-object v1, v0, Lcom/coremobility/e/ad;->b:Lcom/coremobility/e/aj;

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget p3, v0, Lcom/coremobility/e/ad;->a:I

    const/16 v1, 0xa

    if-ne p3, v1, :cond_6

    iget-object v1, v0, Lcom/coremobility/e/ad;->b:Lcom/coremobility/e/aj;

    :goto_2
    if-nez p1, :cond_1

    if-eqz v1, :cond_7

    :goto_3
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+MMS unk push "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v4

    :goto_4
    if-eqz v2, :cond_1

    move v0, v3

    :goto_5
    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    sget-object v4, Lcom/coremobility/e/y;->k:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    aget-object p1, v4, v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM+MMS cl \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' not reg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3, v1}, Lcom/coremobility/e/aw;->b(IILjava/lang/Object;)V

    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/coremobility/e/y;->e:Lcom/coremobility/e/ac;

    invoke-virtual {v0}, Lcom/coremobility/e/ac;->a()V

    :cond_3
    return-void

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    if-nez p2, :cond_9

    iget-object v1, v0, Lcom/coremobility/e/ad;->b:Lcom/coremobility/e/aj;

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3

    :pswitch_1
    move-object v0, v1

    check-cast v0, Lcom/coremobility/e/an;

    iget-object v0, v0, Lcom/coremobility/e/an;->b:Ljava/lang/String;

    move-object v2, v0

    goto :goto_4

    :pswitch_2
    move-object v0, v1

    check-cast v0, Lcom/coremobility/e/al;

    iget-object v0, v0, Lcom/coremobility/e/al;->a:Ljava/lang/String;

    move-object v2, v0

    goto :goto_4

    :pswitch_3
    move-object v0, v1

    check-cast v0, Lcom/coremobility/e/aq;

    iget-object v0, v0, Lcom/coremobility/e/aq;->a:Ljava/lang/String;

    move-object v2, v0

    goto :goto_4

    :pswitch_4
    move-object v0, v1

    check-cast v0, Lcom/coremobility/e/as;

    iget-object v0, v0, Lcom/coremobility/e/as;->a:Ljava/lang/String;

    move-object v2, v0

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    move-object v1, v4

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private a(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v2}, Lcom/coremobility/e/af;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/e/w;

    iget-object v2, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v2}, Lcom/coremobility/e/af;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/coremobility/e/w;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/coremobility/e/af;->removeElementAt(I)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    :cond_2
    invoke-direct {p0}, Lcom/coremobility/e/y;->h()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lcom/coremobility/e/ar;)Lcom/coremobility/e/ar;
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v4, Lcom/coremobility/e/ar;

    invoke-direct {v4}, Lcom/coremobility/e/ar;-><init>()V

    iget-object v0, p0, Lcom/coremobility/e/ar;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, v4, Lcom/coremobility/e/ar;->a:Ljava/lang/String;

    iget v0, p0, Lcom/coremobility/e/ar;->b:I

    iput v0, v4, Lcom/coremobility/e/ar;->b:I

    iget-object v0, p0, Lcom/coremobility/e/ar;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, v4, Lcom/coremobility/e/ar;->c:Ljava/lang/String;

    iget v0, p0, Lcom/coremobility/e/ar;->d:I

    iput v0, v4, Lcom/coremobility/e/ar;->d:I

    iget v0, p0, Lcom/coremobility/e/ar;->e:I

    iput v0, v4, Lcom/coremobility/e/ar;->e:I

    iget v0, p0, Lcom/coremobility/e/ar;->f:I

    iput v0, v4, Lcom/coremobility/e/ar;->f:I

    iget-object v0, p0, Lcom/coremobility/e/ar;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, v4, Lcom/coremobility/e/ar;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/e/ar;->h:Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, v4, Lcom/coremobility/e/ar;->h:Ljava/lang/String;

    iget v0, p0, Lcom/coremobility/e/ar;->i:I

    iput v0, v4, Lcom/coremobility/e/ar;->i:I

    iput-object v1, v4, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    iget-object v0, p0, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    array-length v0, v0

    new-array v0, v0, [Lcom/coremobility/e/ak;

    iput-object v0, v4, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    move v0, v2

    :goto_4
    iget-object v3, p0, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, v4, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    new-instance v5, Lcom/coremobility/e/ak;

    invoke-direct {v5}, Lcom/coremobility/e/ak;-><init>()V

    aput-object v5, v3, v0

    iget-object v3, v4, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    aget-object v3, v3, v0

    iget-object v5, p0, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/coremobility/e/ak;->a:I

    iput v5, v3, Lcom/coremobility/e/ak;->a:I

    iget-object v3, v4, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    aget-object v3, v3, v0

    iget-object v5, p0, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/coremobility/e/ak;->b:I

    iput v5, v3, Lcom/coremobility/e/ak;->b:I

    iget-object v3, v4, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    aget-object v5, v3, v0

    iget-object v3, p0, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/coremobility/e/ak;->c:Ljava/lang/String;

    if-nez v3, :cond_4

    move-object v3, v1

    :goto_5
    iput-object v3, v5, Lcom/coremobility/e/ak;->c:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/ar;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/ar;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/ar;->g:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/ar;->h:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/coremobility/e/ak;->c:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/coremobility/e/ar;->k:Ljava/lang/String;

    if-nez v0, :cond_6

    move-object v0, v1

    :goto_6
    iput-object v0, v4, Lcom/coremobility/e/ar;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/e/ar;->l:Ljava/lang/String;

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_7
    iput-object v0, v4, Lcom/coremobility/e/ar;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/e/ar;->m:Ljava/lang/String;

    if-nez v0, :cond_8

    move-object v0, v1

    :goto_8
    iput-object v0, v4, Lcom/coremobility/e/ar;->m:Ljava/lang/String;

    iget v0, p0, Lcom/coremobility/e/ar;->n:I

    iput v0, v4, Lcom/coremobility/e/ar;->n:I

    iget v0, p0, Lcom/coremobility/e/ar;->o:I

    iput v0, v4, Lcom/coremobility/e/ar;->o:I

    iget v0, p0, Lcom/coremobility/e/ar;->p:I

    iput v0, v4, Lcom/coremobility/e/ar;->p:I

    iget v0, p0, Lcom/coremobility/e/ar;->q:I

    iput v0, v4, Lcom/coremobility/e/ar;->q:I

    iget v0, p0, Lcom/coremobility/e/ar;->r:I

    iput v0, v4, Lcom/coremobility/e/ar;->r:I

    iget v0, p0, Lcom/coremobility/e/ar;->s:I

    iput v0, v4, Lcom/coremobility/e/ar;->s:I

    iget v0, p0, Lcom/coremobility/e/ar;->t:I

    iput v0, v4, Lcom/coremobility/e/ar;->t:I

    iget-object v0, p0, Lcom/coremobility/e/ar;->u:Ljava/lang/String;

    if-nez v0, :cond_9

    move-object v0, v1

    :goto_9
    iput-object v0, v4, Lcom/coremobility/e/ar;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/e/ar;->v:Ljava/lang/String;

    if-nez v0, :cond_a

    move-object v0, v1

    :goto_a
    iput-object v0, v4, Lcom/coremobility/e/ar;->v:Ljava/lang/String;

    iget v0, p0, Lcom/coremobility/e/ar;->w:I

    iput v0, v4, Lcom/coremobility/e/ar;->w:I

    iget-object v0, p0, Lcom/coremobility/e/ar;->x:Ljava/lang/String;

    if-nez v0, :cond_b

    move-object v0, v1

    :goto_b
    iput-object v0, v4, Lcom/coremobility/e/ar;->x:Ljava/lang/String;

    iget v0, p0, Lcom/coremobility/e/ar;->y:I

    iput v0, v4, Lcom/coremobility/e/ar;->y:I

    iget-object v0, p0, Lcom/coremobility/e/ar;->z:Ljava/lang/String;

    if-nez v0, :cond_c

    move-object v0, v1

    :goto_c
    iput-object v0, v4, Lcom/coremobility/e/ar;->z:Ljava/lang/String;

    iget v0, p0, Lcom/coremobility/e/ar;->A:I

    iput v0, v4, Lcom/coremobility/e/ar;->A:I

    iput-object v1, v4, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    iget-object v0, p0, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    array-length v0, v0

    new-array v0, v0, [Lcom/coremobility/e/au;

    iput-object v0, v4, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    :goto_d
    iget-object v0, p0, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    array-length v0, v0

    if-ge v2, v0, :cond_e

    iget-object v0, v4, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    new-instance v3, Lcom/coremobility/e/au;

    invoke-direct {v3}, Lcom/coremobility/e/au;-><init>()V

    aput-object v3, v0, v2

    iget-object v0, v4, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/coremobility/e/au;->a:I

    iput v3, v0, Lcom/coremobility/e/au;->a:I

    iget-object v0, v4, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/coremobility/e/au;->b:I

    iput v3, v0, Lcom/coremobility/e/au;->b:I

    iget-object v0, v4, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v3, v0, v2

    iget-object v0, p0, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    if-nez v0, :cond_d

    move-object v0, v1

    :goto_e
    iput-object v0, v3, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/ar;->k:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_7
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/ar;->l:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/ar;->m:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_9
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/ar;->u:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/ar;->v:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_b
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/ar;->x:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_c
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/e/ar;->z:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_d
    new-instance v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :cond_e
    return-object v4
.end method

.method private b(I)V
    .locals 6

    const/4 v1, 0x1

    const/16 v5, 0x21

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    invoke-virtual {v0, p1}, Lcom/coremobility/e/z;->a(I)Lcom/coremobility/e/ai;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ap;

    :goto_0
    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->m()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->b()I

    move-result v3

    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_0

    sparse-switch v3, :sswitch_data_0

    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->p()V

    :goto_1
    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->s()V

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->B()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/coremobility/e/ap;->a:Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->d()I

    move-result v3

    iput v3, v0, Lcom/coremobility/e/ap;->b:I

    goto :goto_1

    :sswitch_2
    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->d()I

    move-result v3

    iput v3, v0, Lcom/coremobility/e/ap;->c:I

    goto :goto_1

    :sswitch_3
    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/coremobility/e/ap;->d:Ljava/lang/String;

    goto :goto_1

    :sswitch_4
    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->B()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/coremobility/e/ap;->e:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/16 v4, 0x1f

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    const-string v4, "mo-sms-to"

    invoke-virtual {v3, v4}, Lcom/coremobility/e/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->B()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/coremobility/e/ap;->f:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    const-string v4, "mo-sms-content"

    invoke-virtual {v3, v4}, Lcom/coremobility/e/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->B()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/coremobility/e/ap;->g:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->n()V

    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->o()V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->l()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v3, v3, Lcom/coremobility/e/z;->h:I

    if-lez v3, :cond_6

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v3, p0, Lcom/coremobility/e/y;->e:Lcom/coremobility/e/ac;

    invoke-virtual {v3, p1, v0}, Lcom/coremobility/e/ac;->a(ILcom/coremobility/e/aj;)V

    iget v3, v0, Lcom/coremobility/e/ap;->b:I

    if-eqz v3, :cond_8

    iget v3, v0, Lcom/coremobility/e/ap;->b:I

    and-int/lit8 v3, v3, 0x70

    shr-int/lit8 v3, v3, 0x4

    if-ne v3, v1, :cond_7

    :goto_3
    if-nez v1, :cond_8

    const-string v0, "CM+MMS p-conf vers unsupported"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    const/16 v1, 0x3ea

    iput v1, v0, Lcom/coremobility/e/z;->c:I

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lcom/coremobility/e/ap;->a:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/coremobility/e/ap;->b:I

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/coremobility/e/ap;->c:I

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/coremobility/e/ap;->c:I

    const/16 v3, 0x80

    if-ne v1, v3, :cond_a

    iget-object v0, v0, Lcom/coremobility/e/ap;->e:Ljava/lang/String;

    if-nez v0, :cond_a

    :cond_9
    const-string v0, "CM+MMS p-conf field missing"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    const/16 v1, 0x3e8

    iput v1, v0, Lcom/coremobility/e/z;->c:I

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v0}, Lcom/coremobility/e/b;->t()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v0}, Lcom/coremobility/e/b;->r()I

    move-result v0

    if-eqz v0, :cond_5

    :cond_b
    const-string v0, "CM+MMS p-conf parse err"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    const/16 v1, 0x3e9

    iput v1, v0, Lcom/coremobility/e/z;->c:I

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x8b -> :sswitch_4
        0x8d -> :sswitch_1
        0x92 -> :sswitch_2
        0x93 -> :sswitch_3
        0x98 -> :sswitch_0
    .end sparse-switch
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/e/y;->j:Lcom/coremobility/e/y;

    return-void
.end method

.method private h()V
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/e/y;->h:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ae;

    iget-object v1, v0, Lcom/coremobility/e/ae;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/coremobility/e/ae;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/coremobility/e/y;->b:Lcom/coremobility/e/ag;

    iget-object v2, v0, Lcom/coremobility/e/ae;->a:Ljava/lang/String;

    iget v3, v0, Lcom/coremobility/e/ae;->i:I

    iget-object v0, v0, Lcom/coremobility/e/ae;->j:Lcom/coremobility/f/b;

    invoke-virtual {v1, v2, v3, v0}, Lcom/coremobility/e/ag;->a(Ljava/lang/String;ILcom/coremobility/f/b;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/coremobility/e/y;->b:Lcom/coremobility/e/ag;

    iget-object v5, v0, Lcom/coremobility/e/ae;->b:[B

    iget v6, v0, Lcom/coremobility/e/ae;->c:I

    iget v7, v0, Lcom/coremobility/e/ae;->d:I

    iget v8, v0, Lcom/coremobility/e/ae;->i:I

    iget-object v9, v0, Lcom/coremobility/e/ae;->j:Lcom/coremobility/f/b;

    if-eqz v5, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-lez v6, :cond_4

    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-lez v7, :cond_5

    move v1, v2

    :goto_3
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {v8}, Lcom/coremobility/e/ah;->a(I)Z

    move-result v1

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-boolean v1, v4, Lcom/coremobility/e/ag;->l:Z

    if-nez v1, :cond_6

    move v1, v2

    :goto_4
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v1, v4, Lcom/coremobility/e/ag;->i:[B

    if-nez v1, :cond_7

    move v1, v2

    :goto_5
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v1, v4, Lcom/coremobility/e/ag;->m:I

    if-nez v1, :cond_8

    move v1, v2

    :goto_6
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v1, v4, Lcom/coremobility/e/ag;->n:I

    if-nez v1, :cond_9

    move v1, v2

    :goto_7
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v1, Lcom/coremobility/e/u;

    invoke-direct {v1, v8, v6, v7}, Lcom/coremobility/e/u;-><init>(III)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iput v2, v4, Lcom/coremobility/e/ag;->j:I

    iput-object v5, v4, Lcom/coremobility/e/ag;->i:[B

    iput v6, v4, Lcom/coremobility/e/ag;->m:I

    iput v7, v4, Lcom/coremobility/e/ag;->n:I

    iput v8, v4, Lcom/coremobility/e/ag;->k:I

    iput-object v9, v4, Lcom/coremobility/e/ag;->q:Lcom/coremobility/f/b;

    iput-boolean v2, v4, Lcom/coremobility/e/ag;->l:Z

    iget-object v1, v4, Lcom/coremobility/e/ag;->b:Lcom/coremobility/g/b;

    const v2, 0xe0001

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    iget-object v1, v0, Lcom/coremobility/e/ae;->f:[Lcom/coremobility/e/au;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/coremobility/e/ab;

    iget-object v2, v0, Lcom/coremobility/e/ae;->f:[Lcom/coremobility/e/au;

    iget v0, v0, Lcom/coremobility/e/ae;->g:I

    invoke-direct {v1, p0, v2, v0}, Lcom/coremobility/e/ab;-><init>(Lcom/coremobility/e/y;[Lcom/coremobility/e/au;I)V

    iput-object v1, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    goto/16 :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_4

    :cond_7
    move v1, v3

    goto :goto_5

    :cond_8
    move v1, v3

    goto :goto_6

    :cond_9
    move v1, v3

    goto :goto_7
.end method


# virtual methods
.method public final a(Lcom/coremobility/e/am;)I
    .locals 11

    const/4 v10, 0x1

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-static {v6}, Lcom/coremobility/e/y;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "CM+MMS mforwardreq bad param"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v6, 0x4b0

    :cond_1
    :goto_0
    return v6

    :cond_2
    iget-object v0, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    aget-object v0, v0, v6

    if-nez v0, :cond_3

    const-string v0, "CM+MMS mforwardreq cl not reg"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v6, 0x4b2

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/coremobility/e/am;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/coremobility/e/am;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/coremobility/e/am;->g:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/coremobility/e/am;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/coremobility/e/am;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p1, Lcom/coremobility/e/am;->o:Ljava/lang/String;

    if-nez v0, :cond_6

    :cond_5
    const-string v0, "CM+MMS mforwardreq field missing"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v6, 0x3e8

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/coremobility/e/d;->a(Lcom/coremobility/e/am;)I

    move-result v2

    new-array v1, v2, [B

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/d;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x8c

    const/16 v4, 0x89

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x98

    iget-object v4, p1, Lcom/coremobility/e/am;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    invoke-virtual {v0}, Lcom/coremobility/e/d;->a()V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x85

    iget v4, p1, Lcom/coremobility/e/am;->b:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->b(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const-string v3, "date-created"

    iget v4, p1, Lcom/coremobility/e/am;->c:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const-string v3, "flags"

    iget v4, p1, Lcom/coremobility/e/am;->d:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    iget-object v3, p1, Lcom/coremobility/e/am;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/coremobility/e/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const-string v3, "from-name"

    iget-object v4, p1, Lcom/coremobility/e/am;->f:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x97

    iget-object v4, p1, Lcom/coremobility/e/am;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x82

    iget-object v4, p1, Lcom/coremobility/e/am;->h:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x81

    iget-object v4, p1, Lcom/coremobility/e/am;->i:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x88

    iget v4, p1, Lcom/coremobility/e/am;->j:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->c(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x87

    iget v4, p1, Lcom/coremobility/e/am;->k:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->c(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x91

    iget v4, p1, Lcom/coremobility/e/am;->l:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x86

    iget v4, p1, Lcom/coremobility/e/am;->m:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x90

    iget v4, p1, Lcom/coremobility/e/am;->n:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x83

    iget-object v4, p1, Lcom/coremobility/e/am;->o:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->b(ILjava/lang/String;)V

    new-instance v0, Lcom/coremobility/e/m;

    iget-object v3, p1, Lcom/coremobility/e/am;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/coremobility/e/m;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const-string v0, "CM+MMS %d %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/coremobility/e/y;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v4}, Lcom/coremobility/e/af;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v9, Lcom/coremobility/f/b;

    invoke-direct {v9, v6}, Lcom/coremobility/f/b;-><init>(I)V

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    iget-object v4, p1, Lcom/coremobility/e/am;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x6

    move v3, v2

    move v8, v6

    invoke-virtual/range {v0 .. v9}, Lcom/coremobility/e/af;->a([BIILjava/lang/String;[Lcom/coremobility/e/au;IIILcom/coremobility/f/b;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->size()I

    move-result v0

    if-ne v0, v10, :cond_1

    invoke-direct {p0}, Lcom/coremobility/e/y;->h()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/coremobility/e/ao;I)I
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/16 v7, 0x21

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/coremobility/e/y;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "CM+MMS mnotifyrespind bad param"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v6, 0x4b0

    :cond_1
    :goto_0
    return v6

    :cond_2
    iget-object v0, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    aget-object v0, v0, p2

    if-nez v0, :cond_3

    const-string v0, "CM+MMS mnotifyrespind cl not reg"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v6, 0x4b2

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/coremobility/e/ao;->a:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "CM+MMS mnotifyrespind field missing"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v6, 0x3e8

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/coremobility/e/d;->a(Lcom/coremobility/e/ao;)I

    move-result v2

    new-array v1, v2, [B

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/d;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x8c

    const/16 v4, 0x83

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x98

    iget-object v4, p1, Lcom/coremobility/e/ao;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    invoke-virtual {v0}, Lcom/coremobility/e/d;->a()V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const-string v3, "date-notified"

    iget v4, p1, Lcom/coremobility/e/ao;->b:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const-string v3, "retrieval-log"

    iget-object v4, p1, Lcom/coremobility/e/ao;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x95

    iget v4, p1, Lcom/coremobility/e/ao;->d:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x91

    iget v4, p1, Lcom/coremobility/e/ao;->e:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    new-instance v0, Lcom/coremobility/e/n;

    iget-object v3, p1, Lcom/coremobility/e/ao;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/coremobility/e/n;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const-string v0, "CM+MMS %d %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/coremobility/e/y;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v4}, Lcom/coremobility/e/af;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move-object v9, v5

    :goto_1
    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    iget-object v4, p1, Lcom/coremobility/e/ao;->a:Ljava/lang/String;

    const/4 v7, 0x7

    move v3, v2

    move v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/coremobility/e/af;->a([BIILjava/lang/String;[Lcom/coremobility/e/au;IIILcom/coremobility/f/b;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->size()I

    move-result v0

    if-ne v0, v10, :cond_1

    invoke-direct {p0}, Lcom/coremobility/e/y;->h()V

    goto/16 :goto_0

    :pswitch_1
    new-instance v9, Lcom/coremobility/f/b;

    const/4 v0, 0x4

    invoke-direct {v9, v0}, Lcom/coremobility/f/b;-><init>(I)V

    goto :goto_1

    :pswitch_2
    new-instance v9, Lcom/coremobility/f/b;

    const/4 v0, 0x6

    invoke-direct {v9, v0}, Lcom/coremobility/f/b;-><init>(I)V

    goto :goto_1

    :pswitch_3
    new-instance v9, Lcom/coremobility/f/b;

    const/4 v0, 0x5

    invoke-direct {v9, v0}, Lcom/coremobility/f/b;-><init>(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/coremobility/e/at;I)I
    .locals 11

    const/4 v7, 0x1

    const/16 v6, 0x21

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/coremobility/e/y;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "CM+MMS msendreq bad param"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    aget-object v0, v0, p2

    if-nez v0, :cond_2

    const-string v0, "CM+MMS msendreq cl not reg"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/coremobility/e/at;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "CM+MMS msendreq from field missing"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b3

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/coremobility/e/at;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/coremobility/e/at;->i:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/coremobility/e/at;->j:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/coremobility/e/at;->k:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "CM+MMS msendreq field missing"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/coremobility/e/d;->a(Lcom/coremobility/e/at;)I

    move-result v0

    iget v1, p1, Lcom/coremobility/e/at;->y:I

    invoke-static {v1}, Lcom/coremobility/e/d;->b(I)I

    move-result v1

    add-int v2, v0, v1

    new-array v1, v2, [B

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/d;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x8c

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x98

    iget-object v4, p1, Lcom/coremobility/e/at;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    invoke-virtual {v0}, Lcom/coremobility/e/d;->a()V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x85

    iget v4, p1, Lcom/coremobility/e/at;->b:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->b(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const-string v3, "date-created"

    iget v4, p1, Lcom/coremobility/e/at;->c:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const-string v3, "flags"

    iget v4, p1, Lcom/coremobility/e/at;->d:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    iget-object v3, p1, Lcom/coremobility/e/at;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/coremobility/e/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const-string v3, "from-name"

    iget-object v4, p1, Lcom/coremobility/e/at;->f:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    iget-object v3, p1, Lcom/coremobility/e/at;->h:[Lcom/coremobility/e/ak;

    iget v4, p1, Lcom/coremobility/e/at;->g:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a([Lcom/coremobility/e/ak;I)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x97

    iget-object v4, p1, Lcom/coremobility/e/at;->i:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x82

    iget-object v4, p1, Lcom/coremobility/e/at;->j:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x81

    iget-object v4, p1, Lcom/coremobility/e/at;->k:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x96

    iget-object v4, p1, Lcom/coremobility/e/at;->l:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x8a

    iget v4, p1, Lcom/coremobility/e/at;->m:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x88

    iget v4, p1, Lcom/coremobility/e/at;->n:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->c(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x87

    iget v4, p1, Lcom/coremobility/e/at;->o:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->c(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x8f

    iget v4, p1, Lcom/coremobility/e/at;->p:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x94

    iget v4, p1, Lcom/coremobility/e/at;->q:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x86

    iget v4, p1, Lcom/coremobility/e/at;->r:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x90

    iget v4, p1, Lcom/coremobility/e/at;->s:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x9c

    iget v4, p1, Lcom/coremobility/e/at;->t:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x9d

    iget v4, p1, Lcom/coremobility/e/at;->u:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->c(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x9f

    iget v4, p1, Lcom/coremobility/e/at;->v:I

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->b(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x9e

    iget-object v4, p1, Lcom/coremobility/e/at;->w:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const-string v3, "in-reply-to"

    iget-object v4, p1, Lcom/coremobility/e/at;->x:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    const/16 v3, 0x84

    const/16 v4, 0xa3

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/e/d;->a(II)V

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    iget v3, p1, Lcom/coremobility/e/at;->y:I

    invoke-virtual {v0, v3}, Lcom/coremobility/e/d;->a(I)V

    iget-object v0, p1, Lcom/coremobility/e/at;->z:[Lcom/coremobility/e/au;

    iget v3, p1, Lcom/coremobility/e/at;->y:I

    invoke-static {v0, v3}, Lcom/coremobility/e/d;->a([Lcom/coremobility/e/au;I)I

    move-result v3

    new-instance v0, Lcom/coremobility/e/o;

    iget-object v4, p1, Lcom/coremobility/e/at;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/coremobility/e/o;-><init>(IILjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const-string v0, "CM+MMS %d %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/coremobility/e/y;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v5}, Lcom/coremobility/e/af;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6, v0, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v9, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    add-int/2addr v3, v2

    iget-object v4, p1, Lcom/coremobility/e/at;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/coremobility/e/at;->z:[Lcom/coremobility/e/au;

    iget v6, p1, Lcom/coremobility/e/at;->y:I

    move v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/coremobility/e/af;->a([BIILjava/lang/String;[Lcom/coremobility/e/au;IIILcom/coremobility/f/b;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->size()I

    move-result v0

    if-ne v0, v7, :cond_6

    invoke-direct {p0}, Lcom/coremobility/e/y;->h()V

    :cond_6
    move v0, v10

    goto/16 :goto_0

    :pswitch_1
    new-instance v9, Lcom/coremobility/f/b;

    const/4 v0, 0x7

    invoke-direct {v9, v0}, Lcom/coremobility/f/b;-><init>(I)V

    goto :goto_1

    :pswitch_2
    new-instance v9, Lcom/coremobility/f/b;

    const/16 v0, 0x9

    invoke-direct {v9, v0}, Lcom/coremobility/f/b;-><init>(I)V

    goto :goto_1

    :pswitch_3
    new-instance v9, Lcom/coremobility/f/b;

    const/16 v0, 0x8

    invoke-direct {v9, v0}, Lcom/coremobility/f/b;-><init>(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/coremobility/e/aw;I)I
    .locals 3

    const/16 v2, 0x21

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/coremobility/e/y;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "MMS reg bad param"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    aget-object v1, v1, p2

    if-eqz v1, :cond_2

    const-string v1, "MMS reg dup"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    aput-object p1, v1, p2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)I
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0x21

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/coremobility/e/y;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "CM+MMS getreq bad param"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    aget-object v0, v0, p2

    if-nez v0, :cond_2

    const-string v0, "CM+MMS getreq cl not reg"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/coremobility/e/l;

    invoke-direct {v0, p1}, Lcom/coremobility/e/l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+MMS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/e/y;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v2}, Lcom/coremobility/e/af;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v2, p1, p2, v0}, Lcom/coremobility/e/af;->a(Ljava/lang/String;ILcom/coremobility/f/b;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    invoke-direct {p0}, Lcom/coremobility/e/y;->h()V

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/coremobility/f/b;

    invoke-direct {v0, v4}, Lcom/coremobility/f/b;-><init>(I)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/coremobility/f/b;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/coremobility/f/b;-><init>(I)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/coremobility/f/b;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/coremobility/f/b;-><init>(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a([BIII)I
    .locals 8

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-gt p2, p3, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-lez p4, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->size()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ae;

    iget v1, v0, Lcom/coremobility/e/ae;->i:I

    invoke-static {v1}, Lcom/coremobility/e/y;->a(I)Z

    move-result v1

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v1, Lcom/coremobility/e/j;

    invoke-direct {v1, p3, p4}, Lcom/coremobility/e/j;-><init>(II)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v1, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v1, p1, p2, p3}, Lcom/coremobility/e/b;->a([BII)V

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    if-nez v1, :cond_0

    new-instance v1, Lcom/coremobility/e/z;

    invoke-direct {v1, p0, p4}, Lcom/coremobility/e/z;-><init>(Lcom/coremobility/e/y;I)V

    iput-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    :cond_0
    if-gt p3, p4, :cond_8

    const/4 v1, 0x1

    :goto_4
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v1, v1, Lcom/coremobility/e/z;->h:I

    if-ne v1, p4, :cond_f

    const/16 v1, 0x8c

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->d()I

    move-result v2

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->d()I

    move-result v2

    iput v2, v1, Lcom/coremobility/e/z;->b:I

    iget-object v1, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v1}, Lcom/coremobility/e/b;->s()V

    iget-object v1, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v1}, Lcom/coremobility/e/b;->q()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v3, v0, Lcom/coremobility/e/ae;->h:I

    iget-object v1, v2, Lcom/coremobility/e/z;->a:Lcom/coremobility/e/ai;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v1, v2, Lcom/coremobility/e/z;->g:I

    if-nez v1, :cond_a

    const/4 v1, 0x1

    :goto_6
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/4 v1, 0x0

    :goto_7
    if-nez v1, :cond_2

    const/16 v1, 0x21

    const-string v2, "CM+MMS msg type 0x%02x for recv type %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v5, v5, Lcom/coremobility/e/z;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, Lcom/coremobility/e/ae;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    const/4 v2, 0x0

    iput v2, v1, Lcom/coremobility/e/z;->b:I

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    const/16 v2, 0x3ea

    iput v2, v1, Lcom/coremobility/e/z;->c:I

    :cond_1
    :goto_8
    iget-object v1, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v1}, Lcom/coremobility/e/b;->k()V

    :cond_2
    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v2, v1, Lcom/coremobility/e/z;->h:I

    sub-int/2addr v2, p3

    iput v2, v1, Lcom/coremobility/e/z;->h:I

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v1, v1, Lcom/coremobility/e/z;->b:I

    sparse-switch v1, :sswitch_data_0

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget-object v1, v1, Lcom/coremobility/e/z;->a:Lcom/coremobility/e/ai;

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    :goto_9
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v1, v1, Lcom/coremobility/e/z;->b:I

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    :goto_a
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_3
    :goto_b
    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v1, v1, Lcom/coremobility/e/z;->h:I

    if-lez v1, :cond_2b

    iget-object v0, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v0}, Lcom/coremobility/e/b;->r()I

    move-result v0

    sub-int/2addr p3, v0

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v2, v1, Lcom/coremobility/e/z;->h:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/coremobility/e/z;->h:I

    iget-object v0, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget-object v1, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v1}, Lcom/coremobility/e/b;->t()Z

    move-result v1

    iput-boolean v1, v0, Lcom/coremobility/e/z;->j:Z

    :goto_c
    new-instance v0, Lcom/coremobility/e/k;

    invoke-direct {v0, p3}, Lcom/coremobility/e/k;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return p3

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_6

    :pswitch_1
    iget v1, v2, Lcom/coremobility/e/z;->b:I

    const/16 v2, 0x81

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_7

    :pswitch_2
    iget v1, v2, Lcom/coremobility/e/z;->b:I

    const/16 v2, 0x84

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_7

    :pswitch_3
    iget v1, v2, Lcom/coremobility/e/z;->b:I

    const/16 v2, 0x8a

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_7

    :pswitch_4
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_e
    const/16 v1, 0x21

    const-string v2, "CM+MMS bad msg type header field name"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    const/4 v2, 0x0

    iput v2, v1, Lcom/coremobility/e/z;->b:I

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    const/16 v2, 0x3ea

    iput v2, v1, Lcom/coremobility/e/z;->c:I

    goto/16 :goto_8

    :cond_f
    iget-object v1, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget-boolean v2, v2, Lcom/coremobility/e/z;->j:Z

    invoke-virtual {v1, v2}, Lcom/coremobility/e/b;->a(Z)V

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v1, v1, Lcom/coremobility/e/z;->c:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget-boolean v1, v1, Lcom/coremobility/e/z;->j:Z

    if-eqz v1, :cond_2

    goto/16 :goto_8

    :sswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/coremobility/e/y;->b(I)V

    goto/16 :goto_b

    :sswitch_1
    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/coremobility/e/z;->a(I)Lcom/coremobility/e/ai;

    move-result-object v1

    check-cast v1, Lcom/coremobility/e/ar;

    :goto_d
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->m()Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, v1, Lcom/coremobility/e/ar;->y:I

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->b()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_11

    packed-switch v2, :pswitch_data_1

    :pswitch_5
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->p()V

    :goto_e
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->s()V

    goto :goto_d

    :pswitch_6
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->B()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/e/ar;->a:Ljava/lang/String;

    goto :goto_e

    :pswitch_7
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->d()I

    move-result v2

    iput v2, v1, Lcom/coremobility/e/ar;->b:I

    goto :goto_e

    :pswitch_8
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->B()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/e/ar;->c:Ljava/lang/String;

    goto :goto_e

    :pswitch_9
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->e()I

    move-result v2

    iput v2, v1, Lcom/coremobility/e/ar;->d:I

    goto :goto_e

    :pswitch_a
    new-instance v2, Lcom/coremobility/integration/h/d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3, v2}, Lcom/coremobility/e/b;->a(Lcom/coremobility/integration/h/d;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/coremobility/e/ar;->g:Ljava/lang/String;

    iget-object v2, v2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/coremobility/e/ar;->h:Ljava/lang/String;

    goto :goto_e

    :pswitch_b
    new-instance v2, Lcom/coremobility/integration/h/d;

    iget v3, v1, Lcom/coremobility/e/ar;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    iget-object v4, v1, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    invoke-virtual {v3, v4, v2}, Lcom/coremobility/e/b;->a([Lcom/coremobility/e/ak;Lcom/coremobility/integration/h/d;)[Lcom/coremobility/e/ak;

    move-result-object v3

    iput-object v3, v1, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    iget-object v2, v2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/coremobility/e/ar;->i:I

    goto :goto_e

    :pswitch_c
    new-instance v2, Lcom/coremobility/integration/h/d;

    iget v3, v1, Lcom/coremobility/e/ar;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    iget-object v4, v1, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    invoke-virtual {v3, v4, v2}, Lcom/coremobility/e/b;->b([Lcom/coremobility/e/ak;Lcom/coremobility/integration/h/d;)[Lcom/coremobility/e/ak;

    move-result-object v3

    iput-object v3, v1, Lcom/coremobility/e/ar;->j:[Lcom/coremobility/e/ak;

    iget-object v2, v2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/coremobility/e/ar;->i:I

    goto :goto_e

    :pswitch_d
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    iget-object v3, v1, Lcom/coremobility/e/ar;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/coremobility/e/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/e/ar;->k:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_e
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    iget-object v3, v1, Lcom/coremobility/e/ar;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/coremobility/e/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/e/ar;->l:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_f
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/e/ar;->m:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_10
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->i()I

    move-result v2

    iput v2, v1, Lcom/coremobility/e/ar;->n:I

    goto/16 :goto_e

    :pswitch_11
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->d()I

    move-result v2

    iput v2, v1, Lcom/coremobility/e/ar;->o:I

    goto/16 :goto_e

    :pswitch_12
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->d()I

    move-result v2

    iput v2, v1, Lcom/coremobility/e/ar;->p:I

    goto/16 :goto_e

    :pswitch_13
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->d()I

    move-result v2

    iput v2, v1, Lcom/coremobility/e/ar;->q:I

    goto/16 :goto_e

    :pswitch_14
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->d()I

    move-result v2

    iput v2, v1, Lcom/coremobility/e/ar;->r:I

    goto/16 :goto_e

    :pswitch_15
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->j()I

    move-result v2

    iput v2, v1, Lcom/coremobility/e/ar;->s:I

    goto/16 :goto_e

    :pswitch_16
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->e()I

    move-result v2

    iput v2, v1, Lcom/coremobility/e/ar;->t:I

    goto/16 :goto_e

    :pswitch_17
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->B()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/e/ar;->u:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_18
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->d()I

    move-result v2

    iput v2, v1, Lcom/coremobility/e/ar;->w:I

    goto/16 :goto_e

    :pswitch_19
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/e/ar;->x:Ljava/lang/String;

    goto/16 :goto_e

    :pswitch_1a
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->d()I

    move-result v2

    iput v2, v1, Lcom/coremobility/e/ar;->y:I

    iget v2, v1, Lcom/coremobility/e/ar;->y:I

    const/16 v3, 0xa3

    if-ne v2, v3, :cond_10

    const/4 v2, 0x1

    :goto_f
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto/16 :goto_e

    :cond_10
    const/4 v2, 0x0

    goto :goto_f

    :cond_11
    const/16 v3, 0x1f

    if-le v2, v3, :cond_17

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    const-string v3, "date-created"

    invoke-virtual {v2, v3}, Lcom/coremobility/e/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->B()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/coremobility/e/ar;->e:I

    goto/16 :goto_e

    :cond_12
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    const-string v3, "flags"

    invoke-virtual {v2, v3}, Lcom/coremobility/e/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->B()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/coremobility/e/ar;->f:I

    goto/16 :goto_e

    :cond_13
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    const-string v3, "from-name"

    invoke-virtual {v2, v3}, Lcom/coremobility/e/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v1, Lcom/coremobility/e/ar;->h:Ljava/lang/String;

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->B()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/e/ar;->h:Ljava/lang/String;

    goto/16 :goto_e

    :cond_14
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    const-string v3, "in-reply-to"

    invoke-virtual {v2, v3}, Lcom/coremobility/e/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->B()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/e/ar;->v:Ljava/lang/String;

    goto/16 :goto_e

    :cond_15
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    const-string v3, "x-vtt-id"

    invoke-virtual {v2, v3}, Lcom/coremobility/e/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->B()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/e/ar;->z:Ljava/lang/String;

    goto/16 :goto_e

    :cond_16
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->n()V

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->o()V

    goto/16 :goto_e

    :cond_17
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->l()V

    goto/16 :goto_e

    :cond_18
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->m()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v2, v2, Lcom/coremobility/e/z;->i:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget-object v3, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v3}, Lcom/coremobility/e/b;->h()I

    move-result v3

    iput v3, v2, Lcom/coremobility/e/z;->i:I

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->s()V

    :cond_19
    :goto_10
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->m()Z

    move-result v2

    if-eqz v2, :cond_23

    iget v3, v1, Lcom/coremobility/e/ar;->A:I

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v2, v2, Lcom/coremobility/e/z;->e:I

    if-ne v2, v3, :cond_1a

    iget-object v2, v1, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    if-nez v2, :cond_1f

    if-nez v3, :cond_1e

    const/4 v2, 0x1

    :goto_11
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/coremobility/e/au;

    iput-object v2, v1, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    :goto_12
    iget-object v2, v1, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    new-instance v4, Lcom/coremobility/e/au;

    invoke-direct {v4}, Lcom/coremobility/e/au;-><init>()V

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v4, v2, Lcom/coremobility/e/z;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/coremobility/e/z;->e:I

    :cond_1a
    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v2, v2, Lcom/coremobility/e/z;->f:I

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget-object v4, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v4}, Lcom/coremobility/e/b;->g()I

    move-result v4

    iput v4, v2, Lcom/coremobility/e/z;->f:I

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->s()V

    :cond_1b
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->m()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/coremobility/e/au;->b:I

    if-nez v2, :cond_1c

    iget-object v2, v1, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v2, v2, v3

    iget-object v4, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v4}, Lcom/coremobility/e/b;->f()I

    move-result v4

    iput v4, v2, Lcom/coremobility/e/au;->b:I

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->s()V

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget-object v4, v1, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/coremobility/e/au;->b:I

    iput v4, v2, Lcom/coremobility/e/z;->d:I

    :cond_1c
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->m()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/coremobility/e/au;->a:I

    if-nez v2, :cond_1d

    iget-object v2, v1, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v2, v2, v3

    iget-object v4, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    iget-object v5, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v5, v5, Lcom/coremobility/e/z;->f:I

    invoke-virtual {v4, v5}, Lcom/coremobility/e/b;->a(I)I

    move-result v4

    iput v4, v2, Lcom/coremobility/e/au;->a:I

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->s()V

    :cond_1d
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->m()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v2, v2, Lcom/coremobility/e/z;->d:I

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    :goto_13
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v2, v2, Lcom/coremobility/e/z;->d:I

    new-instance v4, Lcom/coremobility/integration/h/d;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2, v4}, Lcom/coremobility/e/b;->b(Lcom/coremobility/integration/h/d;)[B

    move-result-object v5

    iget-object v2, v4, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v4}, Lcom/coremobility/e/b;->s()V

    new-instance v4, Lcom/coremobility/integration/r;

    invoke-direct {v4, v2}, Lcom/coremobility/integration/r;-><init>(I)V

    iget-object v6, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    invoke-virtual {v6, v5, v4}, Lcom/coremobility/e/z;->a([BLcom/coremobility/integration/r;)V

    iget-object v4, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v5, v4, Lcom/coremobility/e/z;->d:I

    sub-int v2, v5, v2

    iput v2, v4, Lcom/coremobility/e/z;->d:I

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v2, v2, Lcom/coremobility/e/z;->d:I

    if-nez v2, :cond_19

    iget v2, v1, Lcom/coremobility/e/ar;->A:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/coremobility/e/ar;->A:I

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    invoke-virtual {v2}, Lcom/coremobility/e/z;->a()V

    iget v2, v1, Lcom/coremobility/e/ar;->A:I

    const v4, 0xffff

    if-gt v2, v4, :cond_22

    const/4 v2, 0x1

    :goto_14
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v2, v1, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v2, v2, v3

    const-string v4, "MM-%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/coremobility/e/ar;->A:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget-object v4, v1, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/coremobility/e/z;->a(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_11

    :cond_1f
    add-int/lit8 v2, v3, 0x1

    new-array v4, v2, [Lcom/coremobility/e/au;

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v3, :cond_20

    iget-object v5, v1, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    aget-object v5, v5, v2

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_20
    iput-object v4, v1, Lcom/coremobility/e/ar;->B:[Lcom/coremobility/e/au;

    goto/16 :goto_12

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_22
    const/4 v2, 0x0

    goto :goto_14

    :cond_23
    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v2, v2, Lcom/coremobility/e/z;->h:I

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/coremobility/e/y;->e:Lcom/coremobility/e/ac;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/coremobility/e/ac;->a(ILcom/coremobility/e/aj;)V

    iget v2, v1, Lcom/coremobility/e/ar;->b:I

    if-eqz v2, :cond_25

    iget v2, v1, Lcom/coremobility/e/ar;->b:I

    and-int/lit8 v2, v2, 0x70

    shr-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    const/4 v2, 0x1

    :goto_16
    if-nez v2, :cond_25

    const/16 v1, 0x21

    const-string v2, "CM+MMS r-conf vers unsupported"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    const/16 v2, 0x3ea

    iput v2, v1, Lcom/coremobility/e/z;->c:I

    goto/16 :goto_b

    :cond_24
    const/4 v2, 0x0

    goto :goto_16

    :cond_25
    iget v2, v1, Lcom/coremobility/e/ar;->b:I

    if-eqz v2, :cond_26

    iget v2, v1, Lcom/coremobility/e/ar;->d:I

    if-eqz v2, :cond_26

    iget v2, v1, Lcom/coremobility/e/ar;->y:I

    if-nez v2, :cond_27

    :cond_26
    const/16 v1, 0x21

    const-string v2, "CM+MMS r-conf field missing"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    const/16 v2, 0x3e8

    iput v2, v1, Lcom/coremobility/e/z;->c:I

    goto/16 :goto_b

    :cond_27
    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->t()Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/coremobility/e/y;->o:Lcom/coremobility/e/b;

    invoke-virtual {v2}, Lcom/coremobility/e/b;->r()I

    move-result v2

    if-gtz v2, :cond_28

    iget v1, v1, Lcom/coremobility/e/ar;->A:I

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v2, v2, Lcom/coremobility/e/z;->e:I

    if-eq v1, v2, :cond_3

    :cond_28
    const/16 v1, 0x21

    const-string v2, "CM+MMS r-conf parse err"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    const/16 v2, 0x3e9

    iput v2, v1, Lcom/coremobility/e/z;->c:I

    goto/16 :goto_b

    :sswitch_2
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/coremobility/e/y;->b(I)V

    goto/16 :goto_b

    :cond_29
    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_2a
    const/4 v1, 0x0

    goto/16 :goto_a

    :cond_2b
    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget-object v1, v1, Lcom/coremobility/e/z;->a:Lcom/coremobility/e/ai;

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v1, v1, Lcom/coremobility/e/z;->c:I

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_2c

    const/4 v1, 0x1

    :goto_17
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v1, p0, Lcom/coremobility/e/y;->n:Lcom/coremobility/g/b;

    const v2, 0xd0003

    iget-object v3, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    iget v4, v0, Lcom/coremobility/e/ae;->i:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v4, v4, Lcom/coremobility/e/z;->c:I

    iget v0, v0, Lcom/coremobility/e/ae;->h:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :goto_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    goto/16 :goto_c

    :cond_2c
    const/4 v1, 0x0

    goto :goto_17

    :cond_2d
    iget-object v1, p0, Lcom/coremobility/e/y;->n:Lcom/coremobility/g/b;

    const v2, 0xd0002

    iget-object v3, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    iget v0, v0, Lcom/coremobility/e/ae;->i:I

    aget-object v0, v3, v0

    iget-object v3, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v3, v3, Lcom/coremobility/e/z;->c:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_18

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x84 -> :sswitch_1
        0x8a -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x82
        :pswitch_e
        :pswitch_5
        :pswitch_1a
        :pswitch_9
        :pswitch_12
        :pswitch_5
        :pswitch_5
        :pswitch_a
        :pswitch_10
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_11
        :pswitch_13
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_f
        :pswitch_d
        :pswitch_6
        :pswitch_18
        :pswitch_19
        :pswitch_5
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_16
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public final a(ILjava/lang/Object;II)V
    .locals 2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/e/y;->e:Lcom/coremobility/e/ac;

    invoke-virtual {v0}, Lcom/coremobility/e/ac;->a()V

    goto :goto_0

    :pswitch_1
    check-cast p2, Lcom/coremobility/e/aw;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/coremobility/e/y;->a(Lcom/coremobility/e/aw;IIZ)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Lcom/coremobility/e/aw;

    invoke-direct {p0, p2, p3, p4, v1}, Lcom/coremobility/e/y;->a(Lcom/coremobility/e/aw;IIZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xd0001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/16 v10, 0x21

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "invalid retry-after"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_4

    aget-char v5, v4, v0

    const/16 v6, 0x30

    if-ge v5, v6, :cond_2

    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    invoke-static {p3, v1}, Lcom/coremobility/g/l;->a(Ljava/lang/String;Z)J

    move-result-wide v4

    long-to-int v0, v4

    :goto_4
    if-lez v0, :cond_7

    new-instance v2, Lcom/coremobility/i/c;

    invoke-direct {v2, v1, p2}, Lcom/coremobility/i/c;-><init>(ILjava/lang/String;)V

    iput v0, v2, Lcom/coremobility/i/c;->c:I

    invoke-direct {p0, p1, v3, v2}, Lcom/coremobility/e/y;->a(IILcom/coremobility/i/h;)V

    goto :goto_1

    :cond_2
    aget-char v5, v4, v0

    const/16 v6, 0x39

    if-le v5, v6, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v4, v6

    long-to-int v0, v4

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid retry-after "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v10, v0, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    const-string v2, "CM+MMS ignore delay %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v10, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(IZ)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0xd0003

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->size()I

    move-result v0

    if-lez v0, :cond_4

    :goto_1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ae;

    iget v1, v0, Lcom/coremobility/e/ae;->i:I

    invoke-static {v1}, Lcom/coremobility/e/y;->a(I)Z

    move-result v1

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v1, Lcom/coremobility/e/r;

    iget-object v3, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v3}, Lcom/coremobility/e/af;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, p2, v3}, Lcom/coremobility/e/r;-><init>(IZLjava/lang/String;)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    if-eqz p2, :cond_0

    iget v1, v0, Lcom/coremobility/e/ae;->h:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    iget v3, v0, Lcom/coremobility/e/ae;->i:I

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Lcom/coremobility/e/aw;->b(I)V

    :cond_0
    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    if-nez v1, :cond_5

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/coremobility/e/y;->n:Lcom/coremobility/g/b;

    iget-object v2, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    iget v3, v0, Lcom/coremobility/e/ae;->i:I

    aget-object v2, v2, v3

    iget v0, v0, Lcom/coremobility/e/ae;->h:I

    invoke-virtual {v1, v4, v2, p1, v0}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_1
    invoke-direct {p0, p2}, Lcom/coremobility/e/y;->a(Z)V

    :goto_2
    return-void

    :cond_2
    if-lez p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget-object v1, v1, Lcom/coremobility/e/z;->a:Lcom/coremobility/e/ai;

    if-nez v1, :cond_7

    if-nez p2, :cond_6

    iget-object v1, p0, Lcom/coremobility/e/y;->n:Lcom/coremobility/g/b;

    iget-object v2, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    iget v3, v0, Lcom/coremobility/e/ae;->i:I

    aget-object v2, v2, v3

    iget v0, v0, Lcom/coremobility/e/ae;->h:I

    invoke-virtual {v1, v4, v2, p1, v0}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_6
    :goto_3
    iput-object v5, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    invoke-direct {p0, p2}, Lcom/coremobility/e/y;->a(Z)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/coremobility/e/y;->e:Lcom/coremobility/e/ac;

    iget-object v3, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v3, v3, Lcom/coremobility/e/z;->g:I

    iget-object v4, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget-object v4, v4, Lcom/coremobility/e/z;->a:Lcom/coremobility/e/ai;

    invoke-virtual {v1, v3, v4}, Lcom/coremobility/e/ac;->a(ILcom/coremobility/e/aj;)V

    if-nez p2, :cond_8

    iget-object v1, p0, Lcom/coremobility/e/y;->n:Lcom/coremobility/g/b;

    const v3, 0xd0002

    iget-object v4, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    iget v0, v0, Lcom/coremobility/e/ae;->i:I

    aget-object v0, v4, v0

    invoke-virtual {v1, v3, v0, p1, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/coremobility/e/y;->n:Lcom/coremobility/g/b;

    const v1, 0xd0001

    invoke-virtual {v0, v1, v5, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x21

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text in utf-8["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/coremobility/i/c;->a(Ljava/lang/String;)Lcom/coremobility/i/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v3, v1, v0}, Lcom/coremobility/e/y;->a(IILcom/coremobility/i/h;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert String to utf-8! using def encoding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/16 v8, 0x21

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v6

    :goto_0
    if-ge v1, v3, :cond_8

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x30

    if-lt v5, v7, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x39

    if-le v5, v7, :cond_4

    :cond_0
    :goto_1
    if-lez v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object p2, v0

    :goto_2
    new-instance v0, Lcom/coremobility/e/q;

    invoke-direct {v0, p2}, Lcom/coremobility/e/q;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    invoke-static {p2}, Lcom/coremobility/i/f;->a(Ljava/lang/String;)Lcom/coremobility/i/h;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-object v0, v1

    check-cast v0, Lcom/coremobility/i/f;

    invoke-virtual {v0, v4}, Lcom/coremobility/i/f;->a(I)Z

    move-result v7

    const-string v3, ""

    check-cast v1, Lcom/coremobility/i/f;

    invoke-virtual {v1}, Lcom/coremobility/i/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/coremobility/i/f;->c()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    move v5, v4

    :goto_3
    if-eqz v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/coremobility/i/f;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/coremobility/i/f;->c()Ljava/lang/String;

    move-result-object v3

    :cond_2
    sget-boolean v5, Lcom/coremobility/a/b;->a:Z

    if-nez v5, :cond_6

    sget-object v5, Lcom/coremobility/e/y;->k:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v1, "Dropping message for QueueId:%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    if-eqz v7, :cond_3

    invoke-virtual {v0, v4}, Lcom/coremobility/i/f;->b(I)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v10}, Lcom/coremobility/i/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v10}, Lcom/coremobility/i/f;->b(I)J

    move-result-wide v3

    long-to-int v1, v3

    :goto_5
    new-instance v3, Lcom/coremobility/i/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    long-to-int v4, v4

    invoke-virtual {v0}, Lcom/coremobility/i/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/coremobility/i/c;-><init>(ILjava/lang/String;II)V

    invoke-direct {p0, v6, v10, v3}, Lcom/coremobility/e/y;->a(IILcom/coremobility/i/h;)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert String to utf-8! using def encoding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    move v5, v6

    goto :goto_3

    :cond_6
    new-instance v5, Lcom/coremobility/e/an;

    invoke-direct {v5}, Lcom/coremobility/e/an;-><init>()V

    invoke-virtual {v1}, Lcom/coremobility/i/f;->a()J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, v5, Lcom/coremobility/e/an;->c:I

    invoke-virtual {v1}, Lcom/coremobility/i/f;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/coremobility/e/an;->a:Ljava/lang/String;

    iput-object v3, v5, Lcom/coremobility/e/an;->b:Ljava/lang/String;

    iput-object v2, v5, Lcom/coremobility/e/an;->e:Ljava/lang/String;

    iput-boolean v7, v5, Lcom/coremobility/e/an;->f:Z

    iget-object v1, p0, Lcom/coremobility/e/y;->e:Lcom/coremobility/e/ac;

    invoke-virtual {v1, v10, v5}, Lcom/coremobility/e/ac;->a(ILcom/coremobility/e/aj;)V

    iget-object v1, p0, Lcom/coremobility/e/y;->n:Lcom/coremobility/g/b;

    const v2, 0xd0002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v6, v6}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_4

    :cond_7
    move v1, v4

    goto :goto_5

    :cond_8
    move v1, v6

    goto/16 :goto_1
.end method

.method public final b(Lcom/coremobility/e/aw;I)I
    .locals 4

    const/16 v3, 0x21

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/coremobility/e/y;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "MMS unreg bad param"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    aget-object v1, v1, p2

    if-eq v1, p1, :cond_2

    const-string v1, "MMS reg dup"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    const/4 v2, 0x0

    aput-object v2, v1, p2

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;I)I
    .locals 4

    const/16 v3, 0x21

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "mms stop get bad para"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS try stop get "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->size()I

    move-result v0

    if-gtz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/coremobility/e/y;->h:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ae;

    iget v0, v0, Lcom/coremobility/e/ae;->i:I

    if-ne v0, p2, :cond_3

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ae;

    iget-object v0, v0, Lcom/coremobility/e/ae;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ae;

    iget-object v0, v0, Lcom/coremobility/e/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/e/y;->b:Lcom/coremobility/e/ag;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/coremobility/e/ag;->a(I)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0, p1, p2}, Lcom/coremobility/e/af;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v0, 0xd

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    iget-object v1, p0, Lcom/coremobility/e/y;->b:Lcom/coremobility/e/ag;

    const/high16 v0, 0xe

    invoke-static {v0, v1}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    iget-object v2, v1, Lcom/coremobility/e/ag;->e:[Lcom/coremobility/j/a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/coremobility/e/ag;->e:[Lcom/coremobility/j/a;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x0

    invoke-virtual {v2, v3}, Lcom/coremobility/j/a;->b(I)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    if-eqz v0, :cond_2

    const/16 v0, 0x50

    invoke-virtual {v1, v0}, Lcom/coremobility/e/ag;->a(I)V

    :cond_2
    iput-object v4, v1, Lcom/coremobility/e/ag;->f:Lcom/coremobility/j/b;

    invoke-static {}, Lcom/coremobility/i/b;->a()Lcom/coremobility/i/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coremobility/i/b;->b(Lcom/coremobility/i/a;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget-object v0, v0, Lcom/coremobility/e/z;->a:Lcom/coremobility/e/ai;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/e/y;->e:Lcom/coremobility/e/ac;

    iget-object v1, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget v1, v1, Lcom/coremobility/e/z;->g:I

    iget-object v2, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    iget-object v2, v2, Lcom/coremobility/e/z;->a:Lcom/coremobility/e/ai;

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/e/ac;->a(ILcom/coremobility/e/aj;)V

    :cond_3
    iput-object v4, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    :cond_4
    iget-object v0, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    if-eqz v0, :cond_5

    iput-object v4, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    :cond_5
    iget-object v0, p0, Lcom/coremobility/e/y;->e:Lcom/coremobility/e/ac;

    invoke-virtual {v0}, Lcom/coremobility/e/ac;->clear()V

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->clear()V

    return-void
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    const/16 v3, 0x21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM+MMq rm URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->m:Lcom/coremobility/integration/k;

    add-int/lit16 v2, v2, 0x1320

    invoke-interface {v0, v2}, Lcom/coremobility/integration/k;->a(I)V

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;I)I
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x21

    const-string v2, "mms stop post bad para"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/coremobility/e/x;

    invoke-direct {v0, p1}, Lcom/coremobility/e/x;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->size()I

    move-result v0

    if-gtz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/coremobility/e/y;->h:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ae;

    iget v0, v0, Lcom/coremobility/e/ae;->i:I

    if-ne v0, p2, :cond_4

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ae;

    iget-object v0, v0, Lcom/coremobility/e/ae;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ae;

    iget-object v0, v0, Lcom/coremobility/e/ae;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/e/y;->b:Lcom/coremobility/e/ag;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/coremobility/e/ag;->a(I)V

    :cond_3
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v3}, Lcom/coremobility/e/af;->size()I

    move-result v4

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    invoke-virtual {v3, v2}, Lcom/coremobility/e/af;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ae;

    iget v5, v0, Lcom/coremobility/e/ae;->i:I

    if-ne v5, p2, :cond_5

    iget-object v5, v0, Lcom/coremobility/e/ae;->e:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v0, v0, Lcom/coremobility/e/ae;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3, v2}, Lcom/coremobility/e/af;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method

.method public final d()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ae;

    iget v3, v0, Lcom/coremobility/e/ae;->i:I

    invoke-static {v3}, Lcom/coremobility/e/y;->a(I)Z

    move-result v3

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v3, p0, Lcom/coremobility/e/y;->c:Lcom/coremobility/e/z;

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v1, Lcom/coremobility/e/p;

    iget v3, v0, Lcom/coremobility/e/ae;->h:I

    invoke-direct {v1, v3}, Lcom/coremobility/e/p;-><init>(I)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget v1, v0, Lcom/coremobility/e/ae;->h:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_2

    iget v1, v0, Lcom/coremobility/e/ae;->h:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    iget v1, v0, Lcom/coremobility/e/ae;->h:I

    const/16 v3, 0x9

    if-eq v1, v3, :cond_2

    const/16 v1, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM+MMS no pdu for recv type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/coremobility/e/ae;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x3eb

    :goto_2
    iget-object v3, p0, Lcom/coremobility/e/y;->n:Lcom/coremobility/g/b;

    const v4, 0xd0003

    iget-object v5, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    iget v6, v0, Lcom/coremobility/e/ae;->i:I

    aget-object v5, v5, v6

    iget v0, v0, Lcom/coremobility/e/ae;->h:I

    invoke-virtual {v3, v4, v5, v1, v0}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    invoke-direct {p0, v2}, Lcom/coremobility/e/y;->a(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public final e()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    iget-object v0, v0, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    iget-object v3, v0, Lcom/coremobility/e/ab;->b:[B

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/coremobility/e/ab;->b:[B

    :cond_0
    iget-object v0, p0, Lcom/coremobility/e/y;->m:Lcom/coremobility/integration/k;

    const/16 v3, 0x1303

    const/16 v4, 0x2800

    invoke-interface {v0, v3, v2, v4}, Lcom/coremobility/integration/k;->a(III)I

    move-result v4

    iget-object v0, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    iget-boolean v0, v0, Lcom/coremobility/e/ab;->d:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    iget v0, v0, Lcom/coremobility/e/ab;->c:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v3, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    iget-object v0, v3, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    iget-object v0, v0, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/integration/q;

    invoke-direct {v0}, Lcom/coremobility/integration/q;-><init>()V

    iget-object v5, v3, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    iget-object v5, v5, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/q;)I

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v0, v0, Lcom/coremobility/integration/q;->a:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, v3, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    iget-object v0, v0, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    iget-object v5, v3, Lcom/coremobility/e/ab;->e:Lcom/coremobility/integration/h;

    invoke-static {v0, v5}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_7

    const/16 v0, 0x21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CM+MMS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    iget-object v3, v3, Lcom/coremobility/e/au;->c:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " already open"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    :goto_5
    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/e/y;->f:Lcom/coremobility/e/af;

    invoke-virtual {v0}, Lcom/coremobility/e/af;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ae;

    iget v1, v0, Lcom/coremobility/e/ae;->i:I

    invoke-static {v1}, Lcom/coremobility/e/y;->a(I)Z

    move-result v1

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v1, p0, Lcom/coremobility/e/y;->a:[Lcom/coremobility/e/aw;

    iget v0, v0, Lcom/coremobility/e/ae;->i:I

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/coremobility/e/aw;->k()V

    iget-object v0, p0, Lcom/coremobility/e/y;->b:Lcom/coremobility/e/ag;

    const/16 v1, 0x44d

    invoke-virtual {v0, v1}, Lcom/coremobility/e/ag;->a(I)V

    :cond_1
    :goto_6
    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput-boolean v1, v3, Lcom/coremobility/e/ab;->d:Z

    new-instance v5, Lcom/coremobility/integration/r;

    invoke-direct {v5}, Lcom/coremobility/integration/r;-><init>()V

    iget-object v0, v3, Lcom/coremobility/e/ab;->e:Lcom/coremobility/integration/h;

    invoke-static {v0, v5}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, v5, Lcom/coremobility/integration/r;->a:I

    iget-object v3, v3, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    iget v3, v3, Lcom/coremobility/e/au;->b:I

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v0, v1

    goto :goto_5

    :cond_8
    move v0, v2

    goto :goto_7

    :cond_9
    move v0, v2

    goto :goto_8

    :cond_a
    move v0, v2

    goto :goto_9

    :cond_b
    iget-object v0, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    iget-object v0, v0, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    invoke-static {v0}, Lcom/coremobility/e/d;->b(Lcom/coremobility/e/au;)I

    move-result v3

    if-gt v3, v4, :cond_d

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v0, v3

    :goto_b
    iget-object v3, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    iget-object v3, v3, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    iget v3, v3, Lcom/coremobility/e/au;->b:I

    iget-object v5, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    iget v5, v5, Lcom/coremobility/e/ab;->c:I

    sub-int v5, v3, v5

    add-int v3, v0, v5

    if-le v3, v4, :cond_11

    sub-int/2addr v3, v4

    sub-int v3, v5, v3

    move v5, v3

    :goto_c
    if-eqz v4, :cond_e

    move v3, v1

    :goto_d
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-array v3, v4, [B

    iget-object v6, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    invoke-virtual {v6, v3, v4}, Lcom/coremobility/e/d;->a([BI)V

    iget-object v6, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    iput-object v3, v6, Lcom/coremobility/e/ab;->b:[B

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    iget-object v6, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    iget-object v6, v6, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    invoke-virtual {v0, v6}, Lcom/coremobility/e/d;->a(Lcom/coremobility/e/au;)V

    :cond_c
    iget-object v0, p0, Lcom/coremobility/e/y;->p:Lcom/coremobility/e/d;

    iget-object v6, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    iget-object v6, v6, Lcom/coremobility/e/ab;->e:Lcom/coremobility/integration/h;

    invoke-virtual {v0, v6, v5}, Lcom/coremobility/e/d;->a(Lcom/coremobility/integration/h;I)V

    iget-object v6, p0, Lcom/coremobility/e/y;->b:Lcom/coremobility/e/ag;

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-lez v4, :cond_f

    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, v6, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    if-eqz v0, :cond_10

    :goto_f
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/e/g;

    invoke-direct {v0, v4}, Lcom/coremobility/e/g;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, v6, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/j/e;->a([BI)V

    iget-object v0, v6, Lcom/coremobility/e/ag;->g:Lcom/coremobility/j/e;

    invoke-virtual {v0}, Lcom/coremobility/j/e;->f()V

    iget-object v0, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/e/y;->d:Lcom/coremobility/e/ab;

    invoke-virtual {v0, v5}, Lcom/coremobility/e/ab;->a(I)V

    goto/16 :goto_6

    :cond_d
    move v0, v2

    goto :goto_a

    :cond_e
    move v3, v2

    goto :goto_d

    :cond_f
    move v0, v2

    goto :goto_e

    :cond_10
    move v1, v2

    goto :goto_f

    :cond_11
    move v4, v3

    goto :goto_c

    :cond_12
    move v0, v2

    goto :goto_b
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/e/y;->a(Z)V

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/coremobility/e/y;->h:I

    return v0
.end method
