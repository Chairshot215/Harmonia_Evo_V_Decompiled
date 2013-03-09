.class final Lcom/coremobility/app/vnotes/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;ILandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ad;->c:Lcom/coremobility/app/vnotes/a;

    iput p2, p0, Lcom/coremobility/app/vnotes/ad;->a:I

    iput-object p3, p0, Lcom/coremobility/app/vnotes/ad;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/16 v2, 0x7c

    const/16 v1, 0x7b

    iget v0, p0, Lcom/coremobility/app/vnotes/ad;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ad;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ad;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bw;->b(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/coremobility/app/vnotes/ad;->a:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ad;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeDialog(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ad;->b:Landroid/app/Activity;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/bw;->b(Landroid/app/Activity;I)V

    goto :goto_0
.end method
