.class final Lcom/coremobility/app/vnotes/o;
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

    iput-object p1, p0, Lcom/coremobility/app/vnotes/o;->c:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/o;->a:Lcom/coremobility/app/vnotes/be;

    iput-object p3, p0, Lcom/coremobility/app/vnotes/o;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/16 v2, 0x86

    sget v0, Lcom/coremobility/a/b;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/o;->a:Lcom/coremobility/app/vnotes/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/o;->a:Lcom/coremobility/app/vnotes/be;

    sget v1, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {v0, v2, v1}, Lcom/coremobility/app/vnotes/be;->a(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/o;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/o;->c:Lcom/coremobility/app/vnotes/a;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/o;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/o;->a:Lcom/coremobility/app/vnotes/be;

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/a;->a(Lcom/coremobility/app/vnotes/a;Landroid/app/Activity;Lcom/coremobility/app/vnotes/be;)V

    goto :goto_0
.end method
