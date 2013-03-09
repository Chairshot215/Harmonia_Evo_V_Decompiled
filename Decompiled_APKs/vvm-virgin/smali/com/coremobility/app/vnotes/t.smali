.class final Lcom/coremobility/app/vnotes/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/t;->c:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/t;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/coremobility/app/vnotes/t;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/16 v6, 0x6e

    const/4 v1, 0x0

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/n;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/t;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscribing  to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/t;->b:Landroid/app/Activity;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/t;->b:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->removeDialog(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/t;->b:Landroid/app/Activity;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/t;->b:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_1
.end method
