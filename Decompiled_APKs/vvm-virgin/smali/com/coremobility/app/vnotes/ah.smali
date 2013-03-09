.class final Lcom/coremobility/app/vnotes/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/be;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;Lcom/coremobility/app/vnotes/be;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ah;->c:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/ah;->a:Lcom/coremobility/app/vnotes/be;

    iput-object p3, p0, Lcom/coremobility/app/vnotes/ah;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/16 v5, 0x82

    const/16 v4, 0x74

    const/4 v3, 0x3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->e()I

    move-result v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/coremobility/app/vnotes/kb;->a(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/kb;->d(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ah;->a:Lcom/coremobility/app/vnotes/be;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ah;->a:Lcom/coremobility/app/vnotes/be;

    sget v2, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {v1, v4, v2}, Lcom/coremobility/app/vnotes/be;->a(II)V

    :goto_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/ah;->c:Lcom/coremobility/app/vnotes/a;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/a;->b(Lcom/coremobility/app/vnotes/a;)V

    const-string v1, "com.coremobility.app.vnotes.VTTSUBSCRIBEREQUEST"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->g(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ah;->a:Lcom/coremobility/app/vnotes/be;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ah;->a:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/be;->b(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/ah;->b:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ah;->b:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_1
.end method
