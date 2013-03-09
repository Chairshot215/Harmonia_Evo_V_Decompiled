.class final Lcom/coremobility/app/vnotes/i;
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

    iput-object p1, p0, Lcom/coremobility/app/vnotes/i;->c:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/i;->a:Lcom/coremobility/app/vnotes/be;

    iput-object p3, p0, Lcom/coremobility/app/vnotes/i;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/16 v1, 0x6a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/i;->a:Lcom/coremobility/app/vnotes/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/i;->a:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->b(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/i;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0
.end method
