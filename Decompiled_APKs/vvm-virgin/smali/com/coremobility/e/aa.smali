.class public final Lcom/coremobility/e/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/g/g;


# instance fields
.field protected a:Lcom/coremobility/e/y;

.field final synthetic b:Lcom/coremobility/e/y;


# direct methods
.method protected constructor <init>(Lcom/coremobility/e/y;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/e/aa;->b:Lcom/coremobility/e/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coremobility/e/y;)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/e/aa;->a:Lcom/coremobility/e/y;

    invoke-static {}, Lcom/coremobility/g/i;->a()Lcom/coremobility/g/i;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/coremobility/g/i;->a(Lcom/coremobility/g/g;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/coremobility/e/aa;->a:Lcom/coremobility/e/y;

    invoke-virtual {v0, p1}, Lcom/coremobility/e/y;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
