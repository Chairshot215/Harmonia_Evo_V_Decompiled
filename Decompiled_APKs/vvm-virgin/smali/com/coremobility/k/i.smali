.class public final Lcom/coremobility/k/i;
.super Lcom/coremobility/j/m;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/j/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[I)[B
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/coremobility/k/i;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/k/i;->d:Z

    invoke-virtual {p0}, Lcom/coremobility/k/i;->b()V

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/k/i;->a(J)V

    iget v0, p0, Lcom/coremobility/k/i;->c:I

    aput v0, p2, v2

    iget v0, p0, Lcom/coremobility/k/i;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremobility/k/i;->b:[B

    iput-boolean v2, p0, Lcom/coremobility/k/i;->d:Z

    invoke-virtual {p0}, Lcom/coremobility/k/i;->b()V

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/coremobility/k/i;->a(J)V

    return-object v0
.end method
