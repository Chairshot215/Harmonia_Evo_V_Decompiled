.class final Lcom/coremobility/app/vnotes/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/coremobility/app/vnotes/be;

.field final synthetic c:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;Landroid/app/Activity;Lcom/coremobility/app/vnotes/be;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ap;->c:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/ap;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/coremobility/app/vnotes/ap;->b:Lcom/coremobility/app/vnotes/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ap;->c:Lcom/coremobility/app/vnotes/a;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ap;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ap;->b:Lcom/coremobility/app/vnotes/be;

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/a;->a(Lcom/coremobility/app/vnotes/a;Landroid/app/Activity;Lcom/coremobility/app/vnotes/be;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ap;->a:Landroid/app/Activity;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(ZLandroid/content/Context;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/kb;->d()V

    return-void
.end method
