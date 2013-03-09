.class final Lcom/coremobility/app/vnotes/dz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/dz;->a:Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    check-cast p1, Lcom/coremobility/app/customui/c;

    invoke-virtual {p1}, Lcom/coremobility/app/customui/c;->a()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/dz;->a:Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;)I

    move-result v1

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->e(I)Lcom/coremobility/app/vnotes/jy;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/dz;->a:Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/dz;->a:Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/dz;->a:Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/coremobility/k/cx;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->M()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/dz;->a:Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteFriendlyNamesForm;)V

    :cond_1
    return-void
.end method
