.class final Lcom/coremobility/app/vnotes/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_DeletedForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_DeletedForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bb;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bb;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->c(Lcom/coremobility/app/vnotes/CM_DeletedForm;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bb;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->a(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bb;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->d(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v1

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bb;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    iget-object v1, v1, Lcom/coremobility/app/vnotes/CM_DeletedForm;->a:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bb;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    iget-object v1, v1, Lcom/coremobility/app/vnotes/CM_DeletedForm;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bb;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0017

    iget-object v3, p0, Lcom/coremobility/app/vnotes/bb;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->d(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v0, v3, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;IIII)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bb;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    iget-object v1, v1, Lcom/coremobility/app/vnotes/CM_DeletedForm;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
