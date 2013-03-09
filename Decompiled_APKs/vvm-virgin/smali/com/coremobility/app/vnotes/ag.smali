.class final Lcom/coremobility/app/vnotes/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/coremobility/app/vnotes/be;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;Ljava/lang/String;Lcom/coremobility/app/vnotes/be;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ag;->d:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/ag;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/coremobility/app/vnotes/ag;->b:Lcom/coremobility/app/vnotes/be;

    iput-object p4, p0, Lcom/coremobility/app/vnotes/ag;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/16 v5, 0x83

    const/16 v4, 0x74

    const/4 v3, 0x4

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ag;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/kb;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/coremobility/app/vnotes/kb;->a(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/kb;->d(I)V

    const-string v1, "com.coremobility.app.vnotes.VTTSUBSCRIBEREQUEST"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->g(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ag;->b:Lcom/coremobility/app/vnotes/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ag;->b:Lcom/coremobility/app/vnotes/be;

    sget v1, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {v0, v4, v1}, Lcom/coremobility/app/vnotes/be;->a(II)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ag;->b:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/be;->b(I)V

    :goto_0
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscribing  to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ag;->c:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->showDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ag;->c:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0
.end method
