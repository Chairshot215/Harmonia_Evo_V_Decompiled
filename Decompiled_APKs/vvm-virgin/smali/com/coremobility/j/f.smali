.class public final Lcom/coremobility/j/f;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field protected c:I

.field protected d:[B

.field final synthetic e:Lcom/coremobility/j/e;


# direct methods
.method public constructor <init>(Lcom/coremobility/j/e;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/j/f;->e:Lcom/coremobility/j/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lcom/coremobility/j/f;->c:I

    iget v1, p0, Lcom/coremobility/j/f;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(I)V
    .locals 2

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/coremobility/j/f;->d:[B

    iput p1, p0, Lcom/coremobility/j/f;->c:I

    iput v1, p0, Lcom/coremobility/j/f;->a:I

    iput v1, p0, Lcom/coremobility/j/f;->b:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
