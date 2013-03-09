.class public final Lcom/coremobility/k/cz;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/Vector;

.field b:I

.field final synthetic c:Lcom/coremobility/k/cx;


# direct methods
.method public constructor <init>(Lcom/coremobility/k/cx;)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/k/cz;->c:Lcom/coremobility/k/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/k/cz;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/k/cz;->b:I

    iget-object v0, p0, Lcom/coremobility/k/cz;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public final a(II)V
    .locals 2

    new-instance v0, Lcom/coremobility/k/da;

    invoke-direct {v0, p0, p1, p2}, Lcom/coremobility/k/da;-><init>(Lcom/coremobility/k/cz;II)V

    iget-object v1, p0, Lcom/coremobility/k/cz;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/k/cz;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/k/cz;->b:I

    return-void
.end method

.method public final b()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/k/cz;->a:Ljava/util/Vector;

    return-object v0
.end method
