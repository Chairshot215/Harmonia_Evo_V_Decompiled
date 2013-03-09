.class public final Lcom/coremobility/e/ab;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/coremobility/e/au;

.field public b:[B

.field public c:I

.field public d:Z

.field public e:Lcom/coremobility/integration/h;

.field protected f:Lcom/coremobility/integration/file/a;

.field protected g:[Lcom/coremobility/e/au;

.field protected h:I

.field protected i:I

.field final synthetic j:Lcom/coremobility/e/y;


# direct methods
.method public constructor <init>(Lcom/coremobility/e/y;[Lcom/coremobility/e/au;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/coremobility/e/ab;->j:Lcom/coremobility/e/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-lez p3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/ab;->f:Lcom/coremobility/integration/file/a;

    iput-object p2, p0, Lcom/coremobility/e/ab;->g:[Lcom/coremobility/e/au;

    iput v2, p0, Lcom/coremobility/e/ab;->h:I

    iput p3, p0, Lcom/coremobility/e/ab;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/e/ab;->b:[B

    iput-boolean v2, p0, Lcom/coremobility/e/ab;->d:Z

    new-instance v0, Lcom/coremobility/integration/h;

    invoke-direct {v0}, Lcom/coremobility/integration/h;-><init>()V

    iput-object v0, p0, Lcom/coremobility/e/ab;->e:Lcom/coremobility/integration/h;

    iget-object v0, p0, Lcom/coremobility/e/ab;->g:[Lcom/coremobility/e/au;

    iget v1, p0, Lcom/coremobility/e/ab;->h:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    iput v2, p0, Lcom/coremobility/e/ab;->c:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/coremobility/e/ab;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coremobility/e/ab;->c:I

    iget v0, p0, Lcom/coremobility/e/ab;->c:I

    iget-object v3, p0, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    iget v3, v3, Lcom/coremobility/e/au;->b:I

    if-gt v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/ab;->c:I

    iget-object v3, p0, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    iget v3, v3, Lcom/coremobility/e/au;->b:I

    if-ne v0, v3, :cond_0

    iput v2, p0, Lcom/coremobility/e/ab;->c:I

    iget v0, p0, Lcom/coremobility/e/ab;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/e/ab;->h:I

    iget v0, p0, Lcom/coremobility/e/ab;->h:I

    iget v3, p0, Lcom/coremobility/e/ab;->i:I

    if-gt v0, v3, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/ab;->h:I

    iget v3, p0, Lcom/coremobility/e/ab;->i:I

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    :goto_2
    iget-boolean v0, p0, Lcom/coremobility/e/ab;->d:Z

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/ab;->e:Lcom/coremobility/integration/h;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput-boolean v2, p0, Lcom/coremobility/e/ab;->d:Z

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/coremobility/e/ab;->g:[Lcom/coremobility/e/au;

    iget v3, p0, Lcom/coremobility/e/ab;->h:I

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method
