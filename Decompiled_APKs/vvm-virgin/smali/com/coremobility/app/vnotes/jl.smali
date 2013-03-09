.class final Lcom/coremobility/app/vnotes/jl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/jl;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/coremobility/integration/i/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/jl;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jl;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jl;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_0
.end method
