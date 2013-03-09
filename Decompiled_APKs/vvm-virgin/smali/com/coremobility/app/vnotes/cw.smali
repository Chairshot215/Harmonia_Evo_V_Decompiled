.class final Lcom/coremobility/app/vnotes/cw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cw;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cw;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cw;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->finish()V

    :cond_0
    return-void
.end method
