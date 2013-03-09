.class public final Lcom/coremobility/app/vnotes/jz;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/coremobility/integration/f/b;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/coremobility/integration/f/b;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/jz;->a:Lcom/coremobility/integration/f/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/jz;->b:Z

    iput-object p1, p0, Lcom/coremobility/app/vnotes/jz;->a:Lcom/coremobility/integration/f/b;

    iput-boolean p2, p0, Lcom/coremobility/app/vnotes/jz;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/coremobility/integration/f/b;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jz;->a:Lcom/coremobility/integration/f/b;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jz;->a:Lcom/coremobility/integration/f/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jz;->a:Lcom/coremobility/integration/f/b;

    iget v0, v0, Lcom/coremobility/integration/f/b;->g:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/jz;->b:Z

    return v0
.end method
