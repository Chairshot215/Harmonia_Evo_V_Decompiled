.class final Lcom/coremobility/app/vnotes/fg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/fg;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->f(I)I

    move-result v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filtering by line index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/fg;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c(Lcom/coremobility/app/vnotes/CM_VnoteInbox;I)I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/fg;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d(Lcom/coremobility/app/vnotes/CM_VnoteInbox;I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fg;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->removeDialog(I)V

    return-void
.end method
