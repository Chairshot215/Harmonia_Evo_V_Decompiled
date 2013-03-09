.class public abstract Lcom/coremobility/h/a;
.super Ljava/lang/Object;


# static fields
.field protected static e:Lcom/coremobility/h/c;


# instance fields
.field public a:Ljava/util/Vector;

.field protected b:Lcom/coremobility/integration/a/a;

.field protected c:Lcom/coremobility/h/b;

.field protected d:Lcom/coremobility/h/f;

.field protected f:Lcom/coremobility/h/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/h/a;->a:Ljava/util/Vector;

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/h/a;->b:Lcom/coremobility/integration/a/a;

    new-instance v0, Lcom/coremobility/h/b;

    invoke-direct {v0, p0}, Lcom/coremobility/h/b;-><init>(Lcom/coremobility/h/a;)V

    iput-object v0, p0, Lcom/coremobility/h/a;->c:Lcom/coremobility/h/b;

    invoke-static {}, Lcom/coremobility/h/u;->a()Lcom/coremobility/h/u;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/h/a;->f:Lcom/coremobility/h/u;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/h/a;->b:Lcom/coremobility/integration/a/a;

    invoke-static {}, Lcom/coremobility/h/u;->a()Lcom/coremobility/h/u;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/h/a;->f:Lcom/coremobility/h/u;

    return-void
.end method

.method public abstract a(I)V
.end method

.method public abstract a(IILjava/lang/String;I)V
.end method
