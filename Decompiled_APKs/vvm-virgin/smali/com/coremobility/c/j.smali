.class public final Lcom/coremobility/c/j;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30444449

    iput v0, p0, Lcom/coremobility/c/j;->m:I

    iput p1, p0, Lcom/coremobility/c/j;->a:I

    iput p2, p0, Lcom/coremobility/c/j;->b:I

    iput p3, p0, Lcom/coremobility/c/j;->c:I

    iput-object p4, p0, Lcom/coremobility/c/j;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/16 v1, 0x1a

    const-string v2, "CM+DMM%d Ack fail %d %d %s"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v4, p0, Lcom/coremobility/c/j;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget v4, p0, Lcom/coremobility/c/j;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget v4, p0, Lcom/coremobility/c/j;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/coremobility/c/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/c/j;->d:Ljava/lang/String;

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
