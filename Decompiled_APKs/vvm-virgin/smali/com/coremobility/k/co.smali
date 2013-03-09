.class public final Lcom/coremobility/k/co;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:Z

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30564c47

    iput v0, p0, Lcom/coremobility/k/co;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/k/co;->a:Z

    iput p1, p0, Lcom/coremobility/k/co;->b:I

    iput p2, p0, Lcom/coremobility/k/co;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/16 v0, 0x1c

    const-string v1, "CM+VNM RetrySend %b %d last err %d "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/coremobility/k/co;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/coremobility/k/co;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/coremobility/k/co;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
