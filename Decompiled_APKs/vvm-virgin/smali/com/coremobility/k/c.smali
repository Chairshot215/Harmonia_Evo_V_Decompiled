.class final Lcom/coremobility/k/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/coremobility/integration/b/d;

.field public b:I

.field public c:Ljava/lang/String;

.field d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    iput v0, p0, Lcom/coremobility/k/c;->b:I

    iput-object v1, p0, Lcom/coremobility/k/c;->c:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/coremobility/k/c;->d:Z

    iput-object p1, p0, Lcom/coremobility/k/c;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/coremobility/k/c;->d:Z

    return-void
.end method
