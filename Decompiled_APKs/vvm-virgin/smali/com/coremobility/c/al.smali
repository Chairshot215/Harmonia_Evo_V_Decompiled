.class public final Lcom/coremobility/c/al;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/coremobility/integration/file/a;

.field protected b:Ljava/util/Vector;

.field protected c:I

.field protected d:I

.field protected e:[I

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:I

.field protected j:I

.field protected final k:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coremobility/c/al;->e:[I

    iput v2, p0, Lcom/coremobility/c/al;->k:I

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/al;->a:Lcom/coremobility/integration/file/a;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    iput v2, p0, Lcom/coremobility/c/al;->c:I

    iput v1, p0, Lcom/coremobility/c/al;->d:I

    iput v1, p0, Lcom/coremobility/c/al;->f:I

    iput-object v3, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    iput-object v3, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    iput v1, p0, Lcom/coremobility/c/al;->i:I

    iput v1, p0, Lcom/coremobility/c/al;->j:I

    return-void
.end method

.method private a(Lcom/coremobility/c/am;Lcom/coremobility/integration/h/d;I)I
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v0, v4

    :goto_0
    if-gt p3, v5, :cond_9

    add-int v0, p3, v5

    shr-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget v2, p1, Lcom/coremobility/c/am;->g:I

    iget v6, v0, Lcom/coremobility/c/am;->g:I

    if-eq v2, v6, :cond_0

    iget v2, p1, Lcom/coremobility/c/am;->g:I

    iget v0, v0, Lcom/coremobility/c/am;->g:I

    sub-int v0, v2, v0

    :goto_1
    if-lez v0, :cond_7

    add-int/lit8 v0, v1, 0x1

    move p3, v0

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/coremobility/c/am;->f:I

    iget v6, v0, Lcom/coremobility/c/am;->f:I

    if-eq v2, v6, :cond_1

    sget-object v2, Lcom/coremobility/c/an;->p:[Ljava/lang/String;

    iget v6, p1, Lcom/coremobility/c/am;->f:I

    aget-object v2, v2, v6

    sget-object v6, Lcom/coremobility/c/an;->p:[Ljava/lang/String;

    iget v0, v0, Lcom/coremobility/c/am;->f:I

    aget-object v0, v6, v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/coremobility/c/al;->b(Lcom/coremobility/c/am;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    if-eqz v2, :cond_4

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lcom/coremobility/c/al;->b(Lcom/coremobility/c/am;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v3

    :goto_3
    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_3

    :cond_6
    move v0, v4

    goto :goto_1

    :cond_7
    if-gez v0, :cond_8

    add-int/lit8 v0, v1, -0x1

    move v5, v0

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    move v0, v1

    :cond_9
    return v0
.end method

.method private static a(Lcom/coremobility/c/al;Lcom/coremobility/c/al;Z)V
    .locals 12

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/c/al;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v11, :cond_1

    move v1, v2

    :goto_0
    move v4, v3

    :goto_1
    iget v0, p0, Lcom/coremobility/c/al;->d:I

    if-ge v4, v0, :cond_8

    iget v0, p1, Lcom/coremobility/c/al;->d:I

    if-eqz v0, :cond_8

    invoke-virtual {p0, v4}, Lcom/coremobility/c/al;->b(I)Lcom/coremobility/c/am;

    move-result-object v5

    invoke-static {v5}, Lcom/coremobility/c/al;->b(Lcom/coremobility/c/am;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/coremobility/integration/h/d;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v5, v0, v3}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/am;Lcom/coremobility/integration/h/d;I)I

    move-result v6

    iget-object v0, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_2
    if-gez v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/coremobility/c/al;->a(I)V

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const/16 v7, 0x1a

    const-string v8, "CM+DMT %x%c%x %d %d/%s"

    const/4 v0, 0x6

    new-array v9, v0, [Ljava/lang/Object;

    iget-object v0, p1, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v3

    if-eqz p2, :cond_4

    const/16 v0, 0x5b

    :goto_3
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v9, v2

    iget v0, v5, Lcom/coremobility/c/am;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v11

    const/4 v0, 0x3

    iget v10, v5, Lcom/coremobility/c/am;->g:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    const/4 v0, 0x4

    iget v10, v5, Lcom/coremobility/c/am;->f:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    const/4 v0, 0x5

    iget-object v10, v5, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    aput-object v10, v9, v0

    invoke-static {v7, v8, v9}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->d:I

    iget v7, v5, Lcom/coremobility/c/am;->d:I

    if-gt v0, v7, :cond_3

    iget-object v0, p1, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->d:I

    iget v5, v5, Lcom/coremobility/c/am;->d:I

    if-ne v0, v5, :cond_5

    if-nez p2, :cond_5

    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    const/16 v0, 0x5d

    goto :goto_3

    :cond_5
    iget v0, p1, Lcom/coremobility/c/al;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v11, :cond_7

    move v0, v2

    :goto_4
    if-nez v0, :cond_6

    invoke-virtual {p1, v6}, Lcom/coremobility/c/al;->a(I)V

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_4

    :cond_8
    return-void
.end method

.method private a(Lcom/coremobility/c/am;I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    if-gt p2, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/al;->e:[I

    iget v3, p1, Lcom/coremobility/c/am;->f:I

    aget v0, v0, v3

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/c/al;->e:[I

    iget v3, p1, Lcom/coremobility/c/am;->f:I

    aget v0, v0, v3

    iget v3, p0, Lcom/coremobility/c/al;->d:I

    if-gt v0, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/c/al;->d:I

    iget-object v0, p0, Lcom/coremobility/c/al;->e:[I

    iget v1, p1, Lcom/coremobility/c/am;->f:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static a(Lcom/coremobility/integration/h;S)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v3

    new-instance v1, Lcom/coremobility/integration/r;

    invoke-direct {v1}, Lcom/coremobility/integration/r;-><init>()V

    array-length v2, v0

    iput v2, v1, Lcom/coremobility/integration/r;->a:I

    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, v3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;II)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0, v1}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_1
    return-void
.end method

.method private static b(Lcom/coremobility/c/am;)Z
    .locals 1

    iget v0, p0, Lcom/coremobility/c/am;->g:I

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/coremobility/c/am;->h:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    return-void
.end method

.method public final a(I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    if-ge p1, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/coremobility/c/al;->c()V

    invoke-virtual {p0}, Lcom/coremobility/c/al;->b()V

    :cond_0
    :goto_1
    if-ltz p1, :cond_4

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    if-ge p1, v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v3, p0, Lcom/coremobility/c/al;->e:[I

    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->f:I

    aget v0, v3, v0

    if-lez v0, :cond_5

    iget-object v3, p0, Lcom/coremobility/c/al;->e:[I

    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->f:I

    aget v0, v3, v0

    iget v3, p0, Lcom/coremobility/c/al;->d:I

    if-gt v0, v3, :cond_5

    :goto_3
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v1, p0, Lcom/coremobility/c/al;->e:[I

    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->f:I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coremobility/c/al;->d:I

    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    iget-short v0, v0, Lcom/coremobility/c/am;->a:S

    new-instance v3, Lcom/coremobility/integration/h;

    invoke-direct {v3}, Lcom/coremobility/integration/h;-><init>()V

    iget-object v4, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3, v0}, Lcom/coremobility/c/al;->a(Lcom/coremobility/integration/h;S)V

    invoke-static {v3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public final a(Lcom/coremobility/c/al;)V
    .locals 2

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    iget v1, p1, Lcom/coremobility/c/al;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/al;Lcom/coremobility/c/al;Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/al;Lcom/coremobility/c/al;Z)V

    goto :goto_0
.end method

.method public final a(Lcom/coremobility/c/am;)V
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/coremobility/integration/h/d;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/am;Lcom/coremobility/integration/h/d;I)I

    move-result v2

    iget-object v0, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0, p1, v2}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/am;I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(S)V
    .locals 1

    invoke-static {p1}, Lcom/coremobility/c/c;->d(S)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/coremobility/c/am;Lcom/coremobility/integration/h;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/coremobility/integration/h/d;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0, v2}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/am;Lcom/coremobility/integration/h/d;I)I

    move-result v3

    iget-object v0, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/am;I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    const/16 v3, 0x1a

    const-string v4, "CM+DMT %x[%x %d %d/%s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Lcom/coremobility/c/am;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v6, p1, Lcom/coremobility/c/am;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    iget v7, p1, Lcom/coremobility/c/am;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p1, Lcom/coremobility/c/am;->f:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p1, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v3, v0, Lcom/coremobility/c/am;->d:I

    iget v4, p1, Lcom/coremobility/c/am;->d:I

    if-le v3, v4, :cond_1

    iget-short v0, p1, Lcom/coremobility/c/am;->a:S

    invoke-static {p2, v0}, Lcom/coremobility/c/al;->a(Lcom/coremobility/integration/h;S)V

    move v0, v2

    goto :goto_0

    :cond_1
    iget-short v0, v0, Lcom/coremobility/c/am;->a:S

    invoke-static {p2, v0}, Lcom/coremobility/c/al;->a(Lcom/coremobility/integration/h;S)V

    move v0, v1

    goto :goto_0
.end method

.method public final b(I)Lcom/coremobility/c/am;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/c/al;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/am;

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/c/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(S)V
    .locals 1

    invoke-static {p1}, Lcom/coremobility/c/c;->d(S)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    return-void
.end method

.method public final c(I)I
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/al;->e:[I

    aget v0, v0, p1

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/c/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/coremobility/c/al;->d:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/coremobility/c/al;->i:I

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/coremobility/c/al;->j:I

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/c/al;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final f(I)V
    .locals 1

    iget v0, p0, Lcom/coremobility/c/al;->f:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/coremobility/c/al;->f:I

    return-void
.end method

.method public final g()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget v1, p0, Lcom/coremobility/c/al;->i:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v2, Lcom/coremobility/integration/h;

    invoke-direct {v2}, Lcom/coremobility/integration/h;-><init>()V

    iget-object v1, p0, Lcom/coremobility/c/al;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v3

    if-nez v3, :cond_5

    new-instance v4, Lcom/coremobility/integration/r;

    invoke-direct {v4}, Lcom/coremobility/integration/r;-><init>()V

    invoke-static {v2, v4}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v1

    iget v4, v4, Lcom/coremobility/integration/r;->a:I

    iput v4, p0, Lcom/coremobility/c/al;->i:I

    :goto_1
    if-nez v3, :cond_4

    invoke-static {v2}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_2

    :cond_4
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput v0, p0, Lcom/coremobility/c/al;->i:I

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_1
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/coremobility/c/al;->i:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/coremobility/c/al;->j:I

    return v0
.end method

.method public final j()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/coremobility/c/al;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/coremobility/c/al;->f:I

    return v0
.end method

.method public final l()V
    .locals 1

    iget v0, p0, Lcom/coremobility/c/al;->f:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/coremobility/c/al;->f:I

    return-void
.end method
