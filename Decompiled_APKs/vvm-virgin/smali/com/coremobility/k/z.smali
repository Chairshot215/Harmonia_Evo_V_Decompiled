.class public final Lcom/coremobility/k/z;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x3056414b

    iput v0, p0, Lcom/coremobility/k/z;->m:I

    iput p1, p0, Lcom/coremobility/k/z;->a:I

    iput p2, p0, Lcom/coremobility/k/z;->b:I

    iput-object p3, p0, Lcom/coremobility/k/z;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/16 v5, 0x1c

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/k/z;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "CM+VN >Delete( %d, %s )"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/coremobility/k/z;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/coremobility/k/z;->c:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CM+VN >Delete( %d, %d )"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/coremobility/k/z;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/coremobility/k/z;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
