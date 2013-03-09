.class public final Lcom/coremobility/f/p;
.super Lcom/coremobility/f/i;


# instance fields
.field a:Lcom/coremobility/f/o;

.field final synthetic b:Lcom/coremobility/f/o;


# direct methods
.method public constructor <init>(Lcom/coremobility/f/o;Lcom/coremobility/f/o;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/f/p;->b:Lcom/coremobility/f/o;

    invoke-direct {p0, p1}, Lcom/coremobility/f/i;-><init>(Lcom/coremobility/f/g;)V

    iput-object p2, p0, Lcom/coremobility/f/p;->a:Lcom/coremobility/f/o;

    invoke-virtual {p0}, Lcom/coremobility/f/p;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/f/p;->b:Lcom/coremobility/f/o;

    iget-object v0, v0, Lcom/coremobility/f/o;->c:Lcom/coremobility/integration/e/j;

    iget v0, v0, Lcom/coremobility/integration/x;->b:I

    if-eq v0, v4, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/coremobility/f/p;->b:Lcom/coremobility/f/o;

    iget-object v3, v3, Lcom/coremobility/f/o;->b:Lcom/coremobility/integration/e/a;

    iget v3, v3, Lcom/coremobility/integration/x;->b:I

    if-eq v3, v4, :cond_3

    move v3, v1

    :goto_2
    if-nez v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v3, p0, Lcom/coremobility/f/p;->b:Lcom/coremobility/f/o;

    iget-object v3, v3, Lcom/coremobility/f/o;->e:Lcom/coremobility/integration/e/c;

    iget v3, v3, Lcom/coremobility/integration/x;->b:I

    if-eq v3, v4, :cond_4

    :goto_3
    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    invoke-static {}, Lcom/coremobility/integration/e/e;->a()Lcom/coremobility/integration/e/e;

    move-result-object v1

    iget-object v3, p0, Lcom/coremobility/f/p;->a:Lcom/coremobility/f/o;

    invoke-virtual {v1, v0, v3}, Lcom/coremobility/integration/e/e;->b(ILcom/coremobility/integration/app/f;)V

    iget-object v0, p0, Lcom/coremobility/f/p;->a:Lcom/coremobility/f/o;

    iput-boolean v2, v0, Lcom/coremobility/f/o;->i:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_1
.end method
