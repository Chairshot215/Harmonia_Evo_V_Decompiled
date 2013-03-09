.class public final Lcom/coremobility/h/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/g/g;


# instance fields
.field protected a:Lcom/coremobility/h/u;

.field final synthetic b:Lcom/coremobility/h/u;


# direct methods
.method protected constructor <init>(Lcom/coremobility/h/u;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/h/v;->b:Lcom/coremobility/h/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coremobility/h/u;)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/h/v;->a:Lcom/coremobility/h/u;

    invoke-static {}, Lcom/coremobility/g/i;->a()Lcom/coremobility/g/i;

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/coremobility/g/i;->a(Lcom/coremobility/g/g;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/coremobility/h/u;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
