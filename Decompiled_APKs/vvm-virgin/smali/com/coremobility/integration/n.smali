.class public final Lcom/coremobility/integration/n;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/n;->b:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/integration/n;->a:I

    return-void
.end method

.method public constructor <init>(B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/coremobility/integration/n;->b:[B

    iput v1, p0, Lcom/coremobility/integration/n;->a:I

    return-void
.end method
