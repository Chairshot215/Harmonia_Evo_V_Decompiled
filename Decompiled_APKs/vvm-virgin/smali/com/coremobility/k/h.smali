.class public final Lcom/coremobility/k/h;
.super Lcom/coremobility/c/ap;


# instance fields
.field a:Lcom/coremobility/k/g;

.field final synthetic b:Lcom/coremobility/k/g;


# direct methods
.method protected constructor <init>(Lcom/coremobility/k/g;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/k/h;->b:Lcom/coremobility/k/g;

    invoke-direct {p0}, Lcom/coremobility/c/ap;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coremobility/c/ao;Ljava/lang/Byte;)I
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1c

    const-string v1, "confl not sup"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/k/h;->a:Lcom/coremobility/k/g;

    invoke-virtual {v0, p1}, Lcom/coremobility/k/g;->a(Lcom/coremobility/c/ao;)I

    move-result v0

    return v0
.end method

.method public final a(II)V
    .locals 3

    const/16 v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM_VnotesDm - UpdateOutSuccess with Sent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Pending = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
