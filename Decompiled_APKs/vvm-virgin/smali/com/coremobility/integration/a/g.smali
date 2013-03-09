.class final Lcom/coremobility/integration/a/g;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/a/a;

.field private b:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/coremobility/integration/a/a;)V
    .locals 3

    iput-object p1, p0, Lcom/coremobility/integration/a/g;->a:Lcom/coremobility/integration/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/a/g;->b:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/a/g;->b:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/integration/a/g;->b:Ljava/util/Vector;

    new-instance v2, Lcom/coremobility/integration/a/f;

    invoke-direct {v2, p1}, Lcom/coremobility/integration/a/f;-><init>(Lcom/coremobility/integration/a/a;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final a(I)Lcom/coremobility/integration/a/f;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/a/g;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/a/f;

    return-object v0
.end method
