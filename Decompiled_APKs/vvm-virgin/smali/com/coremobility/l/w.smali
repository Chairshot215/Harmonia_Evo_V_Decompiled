.class public final Lcom/coremobility/l/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/g/g;


# instance fields
.field protected a:Lcom/coremobility/l/v;

.field final synthetic b:Lcom/coremobility/l/v;


# direct methods
.method protected constructor <init>(Lcom/coremobility/l/v;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/l/w;->b:Lcom/coremobility/l/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coremobility/l/v;)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/l/w;->a:Lcom/coremobility/l/v;

    invoke-static {}, Lcom/coremobility/g/i;->a()Lcom/coremobility/g/i;

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/coremobility/g/i;->a(Lcom/coremobility/g/g;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/coremobility/l/w;->a:Lcom/coremobility/l/v;

    invoke-virtual {v0, p1}, Lcom/coremobility/l/v;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
