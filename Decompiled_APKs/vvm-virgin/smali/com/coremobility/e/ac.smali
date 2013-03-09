.class public final Lcom/coremobility/e/ac;
.super Ljava/util/Vector;


# instance fields
.field final synthetic a:Lcom/coremobility/e/y;


# direct methods
.method protected constructor <init>(Lcom/coremobility/e/y;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/e/ac;->a:Lcom/coremobility/e/y;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/coremobility/e/ac;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/coremobility/e/ac;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ad;

    iget v1, v0, Lcom/coremobility/e/ad;->a:I

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, v0, Lcom/coremobility/e/ad;->b:Lcom/coremobility/e/aj;

    check-cast v0, Lcom/coremobility/e/ar;

    invoke-static {v0}, Lcom/coremobility/e/y;->a(Lcom/coremobility/e/ar;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILcom/coremobility/e/aj;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/e/ad;

    iget-object v1, p0, Lcom/coremobility/e/ac;->a:Lcom/coremobility/e/y;

    invoke-direct {v0, v1}, Lcom/coremobility/e/ad;-><init>(Lcom/coremobility/e/y;)V

    iput p1, v0, Lcom/coremobility/e/ad;->a:I

    iput-object p2, v0, Lcom/coremobility/e/ad;->b:Lcom/coremobility/e/aj;

    invoke-virtual {p0, v0}, Lcom/coremobility/e/ac;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
