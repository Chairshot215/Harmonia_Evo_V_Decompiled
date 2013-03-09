.class final Lcom/coremobility/app/vnotes/ai;
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

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ai;->c:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/ai;->a:Lcom/coremobility/app/vnotes/be;

    iput-object p3, p0, Lcom/coremobility/app/vnotes/ai;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/16 v1, 0x6d

    const/16 v2, 0x6b

    const/16 v8, 0x64

    const/4 v7, 0x4

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->k()Z

    move-result v3

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/n;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/kb;->a(Ljava/lang/String;)I

    move-result v0

    const-string v5, "com.coremobility.app.vnotes.VTTSUBSCRIBEREQUEST"

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/coremobility/app/vnotes/kb;->a(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/coremobility/app/vnotes/kb;->d(I)V

    invoke-static {v7}, Lcom/coremobility/app/vnotes/cf;->g(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ai;->a:Lcom/coremobility/app/vnotes/be;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/coremobility/app/vnotes/ai;->a:Lcom/coremobility/app/vnotes/be;

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    sget v1, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {v5, v0, v1}, Lcom/coremobility/app/vnotes/be;->a(II)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ai;->a:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, v8}, Lcom/coremobility/app/vnotes/be;->b(I)V

    :goto_1
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscribing  to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ai;->b:Landroid/app/Activity;

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ai;->b:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
