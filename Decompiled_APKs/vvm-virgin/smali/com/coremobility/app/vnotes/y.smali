.class final Lcom/coremobility/app/vnotes/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/be;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;Lcom/coremobility/app/vnotes/be;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/y;->c:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/y;->a:Lcom/coremobility/app/vnotes/be;

    iput-object p3, p0, Lcom/coremobility/app/vnotes/y;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v2, 0x74

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/coremobility/app/vnotes/y;->a:Lcom/coremobility/app/vnotes/be;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coremobility/app/vnotes/y;->a:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v1, v2}, Lcom/coremobility/app/vnotes/be;->b(I)V

    :goto_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/y;->c:Lcom/coremobility/app/vnotes/a;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/a;->c(Lcom/coremobility/app/vnotes/a;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/y;->c:Lcom/coremobility/app/vnotes/a;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/a;->c(Lcom/coremobility/app/vnotes/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/y;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
