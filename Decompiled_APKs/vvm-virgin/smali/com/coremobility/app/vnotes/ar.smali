.class final Lcom/coremobility/app/vnotes/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/coremobility/app/vnotes/be;

.field final synthetic c:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;Landroid/app/Activity;Lcom/coremobility/app/vnotes/be;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ar;->c:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/ar;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/coremobility/app/vnotes/ar;->b:Lcom/coremobility/app/vnotes/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ar;->a:Landroid/app/Activity;

    const/16 v2, 0x86

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ar;->c:Lcom/coremobility/app/vnotes/a;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ar;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/coremobility/app/vnotes/ar;->b:Lcom/coremobility/app/vnotes/be;

    invoke-static {v1, v2, v3}, Lcom/coremobility/app/vnotes/a;->a(Lcom/coremobility/app/vnotes/a;Landroid/app/Activity;Lcom/coremobility/app/vnotes/be;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
