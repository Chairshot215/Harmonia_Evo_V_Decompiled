.class public final Lcom/coremobility/l/ad;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/l/ad;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/l/ad;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/l/ad;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/l/ad;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/l/ad;->g:Z

    return-void
.end method


# virtual methods
.method final a()Lcom/coremobility/l/ad;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Lcom/coremobility/l/ad;

    invoke-direct {v2}, Lcom/coremobility/l/ad;-><init>()V

    iget-object v0, p0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, v2, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, v2, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    iget v0, p0, Lcom/coremobility/l/ad;->c:I

    iput v0, v2, Lcom/coremobility/l/ad;->c:I

    iget-object v0, p0, Lcom/coremobility/l/ad;->d:Ljava/lang/String;

    iput-object v0, v2, Lcom/coremobility/l/ad;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/ad;->e:Ljava/lang/String;

    iput-object v0, v2, Lcom/coremobility/l/ad;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/ad;->f:Ljava/lang/String;

    iput-object v0, v2, Lcom/coremobility/l/ad;->f:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/coremobility/l/ad;->g:Z

    iput-boolean v0, v2, Lcom/coremobility/l/ad;->g:Z

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
