.class final Lcom/coremobility/app/vnotes/jm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/jm;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jm;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->P()I

    return-void
.end method
