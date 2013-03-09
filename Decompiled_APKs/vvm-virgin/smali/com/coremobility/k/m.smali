.class public final Lcom/coremobility/k/m;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30564655

    iput v0, p0, Lcom/coremobility/k/m;->m:I

    iput p1, p0, Lcom/coremobility/k/m;->a:I

    iput p2, p0, Lcom/coremobility/k/m;->b:I

    iput-object p3, p0, Lcom/coremobility/k/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/coremobility/k/m;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/coremobility/k/m;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/coremobility/k/m;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/16 v1, 0x1c

    const-string v2, "CM+VN Create( %d, %d, %s, %s, %s, %s )"

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v4, p0, Lcom/coremobility/k/m;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget v4, p0, Lcom/coremobility/k/m;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/coremobility/k/m;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/k/m;->c:Ljava/lang/String;

    :goto_0
    aput-object v0, v3, v4

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/coremobility/k/m;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/k/m;->d:Ljava/lang/String;

    :goto_1
    aput-object v0, v3, v4

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/coremobility/k/m;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/k/m;->e:Ljava/lang/String;

    :goto_2
    aput-object v0, v3, v4

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/coremobility/k/m;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/k/m;->f:Ljava/lang/String;

    :goto_3
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    const-string v0, "null"

    goto :goto_1

    :cond_2
    const-string v0, "null"

    goto :goto_2

    :cond_3
    const-string v0, "null"

    goto :goto_3
.end method
