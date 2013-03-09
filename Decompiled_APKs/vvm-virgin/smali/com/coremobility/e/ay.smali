.class public Lcom/coremobility/e/ay;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field public final c:[Ljava/lang/String;

.field final synthetic d:Lcom/coremobility/e/aw;


# direct methods
.method public constructor <init>(Lcom/coremobility/e/aw;)V
    .locals 3

    iput-object p1, p0, Lcom/coremobility/e/ay;->d:Lcom/coremobility/e/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "startup"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "empty"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "active"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pending retry"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "in-q full"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ack active"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ack pending retry"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cleared active *"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cleared ack active *"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "<stopped>"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "<deleting *>"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "<skipping expired *>"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "skipping too big *"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "checking space *"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "out-q busy *"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/coremobility/e/ay;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/coremobility/e/ay;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Lcom/coremobility/e/ay;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/e/ay;->b:I

    return-void
.end method

.method public final b(I)V
    .locals 3

    iget v0, p0, Lcom/coremobility/e/ay;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/e/ay;->d:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    iget-object v1, p0, Lcom/coremobility/e/ay;->d:Lcom/coremobility/e/aw;

    invoke-virtual {v1}, Lcom/coremobility/e/aw;->a()I

    move-result v1

    iget v2, p0, Lcom/coremobility/e/ay;->b:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/coremobility/e/a;->a(III)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :goto_0
    iput p1, p0, Lcom/coremobility/e/ay;->b:I

    return-void

    :cond_0
    iget v0, p0, Lcom/coremobility/e/ay;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coremobility/e/ay;->d:Lcom/coremobility/e/aw;

    iget-object v0, v0, Lcom/coremobility/e/aw;->D:Lcom/coremobility/e/a;

    iget-object v1, p0, Lcom/coremobility/e/ay;->d:Lcom/coremobility/e/aw;

    invoke-virtual {v1}, Lcom/coremobility/e/aw;->a()I

    move-result v1

    iget v2, p0, Lcom/coremobility/e/ay;->b:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/coremobility/e/a;->b(III)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_0
.end method
