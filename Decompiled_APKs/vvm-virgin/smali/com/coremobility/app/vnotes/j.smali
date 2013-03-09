.class final Lcom/coremobility/app/vnotes/j;
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

    iput-object p1, p0, Lcom/coremobility/app/vnotes/j;->c:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/j;->a:Lcom/coremobility/app/vnotes/be;

    iput-object p3, p0, Lcom/coremobility/app/vnotes/j;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/16 v5, 0x74

    const/16 v4, 0x6a

    const/4 v3, 0x5

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v0

    iget-object v0, v0, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/ke;->a:Ljava/lang/String;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/kb;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/coremobility/app/vnotes/kb;->a(I)V

    const-string v1, "com.coremobility.app.vnotes.VTTUNSUBSCRIBEREQUES"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->g(I)V

    const/4 v0, 0x6

    const-string v1, "Displaying dialog DIALOG_UNSUBSCRIBE_CHOICE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/j;->a:Lcom/coremobility/app/vnotes/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/j;->a:Lcom/coremobility/app/vnotes/be;

    sget v1, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {v0, v5, v1}, Lcom/coremobility/app/vnotes/be;->a(II)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/j;->a:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/be;->b(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/j;->b:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->showDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/j;->b:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0
.end method
