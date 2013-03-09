.class public final Lcom/coremobility/c/l;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x3044444d

    iput v0, p0, Lcom/coremobility/c/l;->m:I

    iput p1, p0, Lcom/coremobility/c/l;->a:I

    iput p2, p0, Lcom/coremobility/c/l;->b:I

    iput p3, p0, Lcom/coremobility/c/l;->c:I

    iput p4, p0, Lcom/coremobility/c/l;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/16 v0, 0x1a

    const-string v1, "CM+DMM%d send fail %d %d %x"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/coremobility/c/l;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/coremobility/c/l;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/coremobility/c/l;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/coremobility/c/l;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
