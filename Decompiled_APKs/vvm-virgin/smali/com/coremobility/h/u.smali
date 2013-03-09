.class public final Lcom/coremobility/h/u;
.super Lcom/coremobility/h/aa;

# interfaces
.implements Lcom/coremobility/g/a;


# static fields
.field protected static a:Lcom/coremobility/h/u;


# instance fields
.field protected b:Lcom/coremobility/h/z;

.field protected c:Lcom/coremobility/h/v;

.field protected d:[Lcom/coremobility/h/a;

.field protected e:Lcom/coremobility/integration/file/a;

.field protected f:Lcom/coremobility/h/x;

.field protected g:I

.field private j:Lcom/coremobility/g/b;

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/h/u;->a:Lcom/coremobility/h/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/h/aa;-><init>()V

    iput-object v1, p0, Lcom/coremobility/h/u;->j:Lcom/coremobility/g/b;

    iput-object v1, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/coremobility/h/a;

    iput-object v0, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    iput-object v1, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    const-string v0, "text/plain"

    iput-object v0, p0, Lcom/coremobility/h/u;->k:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/coremobility/h/u;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/coremobility/h/u;->a:Lcom/coremobility/h/u;

    if-nez v0, :cond_0

    const/16 v0, 0x32

    const-string v1, "Creating CM_RestService instance"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/h/u;

    invoke-direct {v0}, Lcom/coremobility/h/u;-><init>()V

    sput-object v0, Lcom/coremobility/h/u;->a:Lcom/coremobility/h/u;

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/h/u;->j:Lcom/coremobility/g/b;

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/h/u;->e:Lcom/coremobility/integration/file/a;

    iput v3, v0, Lcom/coremobility/h/u;->g:I

    iget-object v1, v0, Lcom/coremobility/h/u;->j:Lcom/coremobility/g/b;

    const/high16 v2, 0x3a

    invoke-virtual {v1, v2, v0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    new-instance v1, Lcom/coremobility/h/z;

    invoke-direct {v1}, Lcom/coremobility/h/z;-><init>()V

    iput-object v1, v0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    iget-object v1, v0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    invoke-virtual {v1}, Lcom/coremobility/h/z;->b()V

    new-instance v1, Lcom/coremobility/h/x;

    invoke-direct {v1, v0}, Lcom/coremobility/h/x;-><init>(Lcom/coremobility/h/u;)V

    iput-object v1, v0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    new-instance v1, Lcom/coremobility/h/v;

    invoke-direct {v1, v0}, Lcom/coremobility/h/v;-><init>(Lcom/coremobility/h/u;)V

    iput-object v1, v0, Lcom/coremobility/h/u;->c:Lcom/coremobility/h/v;

    iget-object v1, v0, Lcom/coremobility/h/u;->c:Lcom/coremobility/h/v;

    invoke-virtual {v1, v0}, Lcom/coremobility/h/v;->a(Lcom/coremobility/h/u;)V

    :cond_0
    sget-object v0, Lcom/coremobility/h/u;->a:Lcom/coremobility/h/u;

    return-object v0
.end method

.method private a(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v2}, Lcom/coremobility/h/x;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/h/t;

    iget-object v2, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v2}, Lcom/coremobility/h/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/coremobility/h/t;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/h/w;

    const/4 v2, 0x0

    iput v2, v0, Lcom/coremobility/h/w;->j:I

    if-nez p1, :cond_2

    iget-object v2, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    :cond_1
    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/coremobility/h/x;->removeElementAt(I)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/coremobility/h/u;->d()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static a(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    if-gtz v2, :cond_0

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM+RS q rm URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    add-int/lit16 v2, v2, 0x1820

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/a/a;->a(I)V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/h/u;->a:Lcom/coremobility/h/u;

    return-void
.end method

.method private d()V
    .locals 5

    const/16 v4, 0x32

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestQ size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v1}, Lcom/coremobility/h/x;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/h/u;->g:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/h/w;

    iget v1, v0, Lcom/coremobility/h/w;->a:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+RS incorrect operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/coremobility/h/w;->g:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/coremobility/h/u;->a(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    iget-object v2, v0, Lcom/coremobility/h/w;->b:Ljava/lang/String;

    iget v3, v0, Lcom/coremobility/h/w;->f:I

    iget-object v0, v0, Lcom/coremobility/h/w;->k:Lcom/coremobility/f/b;

    invoke-virtual {v1, v2, v3, v0}, Lcom/coremobility/h/z;->a(Ljava/lang/String;ILcom/coremobility/f/b;)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    iget-object v2, v0, Lcom/coremobility/h/w;->b:Ljava/lang/String;

    iget v3, v0, Lcom/coremobility/h/w;->f:I

    iget-object v0, v0, Lcom/coremobility/h/w;->k:Lcom/coremobility/f/b;

    invoke-virtual {v1, v2, v3, v0}, Lcom/coremobility/h/z;->b(Ljava/lang/String;ILcom/coremobility/f/b;)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, v0, Lcom/coremobility/h/w;->e:Lcom/coremobility/h/ab;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    iget-object v2, v0, Lcom/coremobility/h/w;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/h/w;->c:[B

    iget v4, v0, Lcom/coremobility/h/w;->f:I

    iget-object v0, v0, Lcom/coremobility/h/w;->k:Lcom/coremobility/f/b;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/coremobility/h/z;->b(Ljava/lang/String;[BILcom/coremobility/f/b;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    iget-object v2, v0, Lcom/coremobility/h/w;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/h/w;->e:Lcom/coremobility/h/ab;

    iget v4, v0, Lcom/coremobility/h/w;->f:I

    iget-object v0, v0, Lcom/coremobility/h/w;->k:Lcom/coremobility/f/b;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/coremobility/h/z;->a(Ljava/lang/String;Lcom/coremobility/h/ab;ILcom/coremobility/f/b;)Z

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    iget-object v2, v0, Lcom/coremobility/h/w;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/h/w;->c:[B

    iget v4, v0, Lcom/coremobility/h/w;->f:I

    iget-object v0, v0, Lcom/coremobility/h/w;->k:Lcom/coremobility/f/b;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/coremobility/h/z;->a(Ljava/lang/String;[BILcom/coremobility/f/b;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(ILjava/lang/String;Lcom/coremobility/f/b;)I
    .locals 6

    const/16 v3, 0x32

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-static {v1}, Lcom/coremobility/h/u;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "CM+RS getreq bad param"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x4b0

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    const-string v0, "CM+RS getreq cl not reg"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x4b2

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/coremobility/h/m;

    invoke-direct {v0, p2}, Lcom/coremobility/h/m;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+RS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/h/u;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v2}, Lcom/coremobility/h/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    const/4 v4, 0x0

    move-object v2, p2

    move v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/h/x;->a(ILjava/lang/String;I[BLcom/coremobility/f/b;)Lcom/coremobility/h/w;

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/coremobility/h/u;->d()V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;[BLcom/coremobility/f/b;)I
    .locals 7

    const/16 v4, 0x32

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    invoke-static {v6}, Lcom/coremobility/h/u;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "CM+RS post req bad param"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    aget-object v0, v0, v6

    if-nez v0, :cond_2

    const-string v0, "CM+RS post req cl not reg"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/coremobility/h/n;

    array-length v2, p3

    invoke-direct {v0, p2, v2}, Lcom/coremobility/h/n;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const-string v0, "CM+RS %d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/coremobility/h/u;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v3}, Lcom/coremobility/h/x;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v4, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/h/x;->a(ILjava/lang/String;I[BLcom/coremobility/f/b;)Lcom/coremobility/h/w;

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/coremobility/h/u;->d()V

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method public final a(Lcom/coremobility/h/a;)I
    .locals 3

    const/16 v2, 0x32

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/coremobility/h/u;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Rest reg bad param"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const-string v1, "Rest reg dup"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    aput-object p1, v1, v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/coremobility/h/ab;Lcom/coremobility/f/b;)I
    .locals 8

    const/16 v2, 0x32

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-static {v7}, Lcom/coremobility/h/u;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "CM+RS post req bad param"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    aget-object v0, v0, v7

    if-nez v0, :cond_2

    const-string v0, "CM+RS post req cl not reg"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/coremobility/h/x;->a(ILjava/lang/String;I[BLcom/coremobility/h/ab;Lcom/coremobility/f/b;)Lcom/coremobility/h/w;

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/coremobility/h/u;->d()V

    :cond_3
    move v0, v7

    goto :goto_0
.end method

.method public final a([BIII)I
    .locals 10

    const/16 v9, 0x4b5

    const/16 v8, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/h/w;

    iget v3, v0, Lcom/coremobility/h/w;->f:I

    invoke-static {v3}, Lcom/coremobility/h/u;->a(I)Z

    move-result v3

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v3, Lcom/coremobility/h/k;

    invoke-direct {v3, p3, p4}, Lcom/coremobility/h/k;-><init>(II)V

    invoke-static {v3}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget v3, v0, Lcom/coremobility/h/w;->j:I

    if-nez v3, :cond_4

    if-lez p3, :cond_4

    move v3, v1

    :goto_1
    iget v4, v0, Lcom/coremobility/h/w;->j:I

    add-int/2addr v4, p3

    iput v4, v0, Lcom/coremobility/h/w;->j:I

    iget v4, v0, Lcom/coremobility/h/w;->j:I

    add-int/2addr v4, p3

    if-ne v4, p4, :cond_5

    move v4, v1

    :goto_2
    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REST"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/coremobility/h/w;->f:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/coremobility/h/w;->h:Ljava/lang/String;

    new-instance v5, Lcom/coremobility/integration/q;

    invoke-direct {v5}, Lcom/coremobility/integration/q;-><init>()V

    iget-object v3, v0, Lcom/coremobility/h/w;->h:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/q;)I

    move-result v3

    if-nez v3, :cond_6

    move v3, v1

    :goto_3
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-boolean v3, v5, Lcom/coremobility/integration/q;->a:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/coremobility/h/w;->h:Ljava/lang/String;

    invoke-static {v3}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    :cond_0
    new-instance v3, Lcom/coremobility/integration/h;

    invoke-direct {v3}, Lcom/coremobility/integration/h;-><init>()V

    iput-object v3, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    iget-object v3, v0, Lcom/coremobility/h/w;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    invoke-static {v3, v5}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v3

    if-eqz v3, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REST recv file open error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/coremobility/h/w;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v3, v1

    move v4, v1

    :goto_4
    if-eqz p1, :cond_8

    if-lez p3, :cond_8

    new-instance v5, Lcom/coremobility/integration/r;

    invoke-direct {v5, p3}, Lcom/coremobility/integration/r;-><init>(I)V

    iget-object v6, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    invoke-static {v6, p1, p2, v5}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;[BILcom/coremobility/integration/r;)I

    move-result v5

    if-eqz v5, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REST recv file write error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/coremobility/h/w;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v3, v1

    :goto_5
    new-instance v4, Lcom/coremobility/h/l;

    invoke-direct {v4, p3}, Lcom/coremobility/h/l;-><init>(I)V

    invoke-static {v4}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    invoke-static {v3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    :cond_1
    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    invoke-virtual {v0, v9}, Lcom/coremobility/h/z;->a(I)V

    invoke-virtual {p0, v9, v2}, Lcom/coremobility/h/u;->a(IZ)V

    move p3, v2

    :cond_2
    :goto_6
    return p3

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v3, v2

    goto/16 :goto_1

    :cond_5
    move v4, v2

    goto/16 :goto_2

    :cond_6
    move v3, v2

    goto/16 :goto_3

    :cond_7
    new-instance v1, Lcom/coremobility/h/y;

    invoke-direct {v1, p0}, Lcom/coremobility/h/y;-><init>(Lcom/coremobility/h/u;)V

    iget v3, v0, Lcom/coremobility/h/w;->f:I

    iput v3, v1, Lcom/coremobility/h/y;->c:I

    iget-object v3, v0, Lcom/coremobility/h/w;->h:Ljava/lang/String;

    iput-object v3, v1, Lcom/coremobility/h/y;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/h/w;->d:Ljava/lang/String;

    iput-object v3, v1, Lcom/coremobility/h/y;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/h/u;->j:Lcom/coremobility/g/b;

    const v4, 0x3a0006

    iget v0, v0, Lcom/coremobility/h/w;->g:I

    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_6

    :cond_8
    move v1, v3

    move v3, v4

    goto :goto_5

    :cond_9
    move v3, v2

    goto/16 :goto_4
.end method

.method public final a(ILjava/lang/Object;II)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Lcom/coremobility/h/y;

    iget-object v0, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    iget v1, p2, Lcom/coremobility/h/y;->c:I

    aget-object v0, v0, v1

    const v1, 0x3a0006

    iget-object v2, p2, Lcom/coremobility/h/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p3, v2, p4}, Lcom/coremobility/h/a;->a(IILjava/lang/String;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/h/u;->a(Z)V

    goto :goto_0

    :pswitch_1
    check-cast p2, Lcom/coremobility/h/y;

    iget-object v0, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    iget v1, p2, Lcom/coremobility/h/y;->c:I

    aget-object v0, v0, v1

    const v1, 0x3a0007

    iget-object v2, p2, Lcom/coremobility/h/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p3, v2, p4}, Lcom/coremobility/h/a;->a(IILjava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3a0006
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(IZ)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->size()I

    move-result v0

    if-lez v0, :cond_3

    :goto_1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/h/o;

    iget-object v1, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v1}, Lcom/coremobility/h/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/coremobility/h/o;-><init>(IZLjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/h/w;

    if-nez p2, :cond_0

    new-instance v1, Lcom/coremobility/h/y;

    invoke-direct {v1, p0}, Lcom/coremobility/h/y;-><init>(Lcom/coremobility/h/u;)V

    iget v2, v0, Lcom/coremobility/h/w;->f:I

    iput v2, v1, Lcom/coremobility/h/y;->c:I

    iget-object v2, v0, Lcom/coremobility/h/w;->h:Ljava/lang/String;

    iput-object v2, v1, Lcom/coremobility/h/y;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/coremobility/h/w;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/coremobility/h/y;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/h/u;->j:Lcom/coremobility/g/b;

    const v3, 0x3a0007

    iget v0, v0, Lcom/coremobility/h/w;->g:I

    invoke-virtual {v2, v3, v1, v0, p1}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/coremobility/h/u;->a(Z)V

    return-void

    :cond_1
    if-lez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public final b(Lcom/coremobility/h/a;)I
    .locals 4

    const/16 v3, 0x32

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/coremobility/h/u;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Rest unreg bad param"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_2

    const-string v1, "Rest reg dup"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/h/u;->j:Lcom/coremobility/g/b;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3a

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    invoke-virtual {v0}, Lcom/coremobility/h/z;->c()V

    return-void
.end method
