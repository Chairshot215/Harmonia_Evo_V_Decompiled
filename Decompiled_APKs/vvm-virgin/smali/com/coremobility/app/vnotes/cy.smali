.class final Lcom/coremobility/app/vnotes/cy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cy;->b:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/cy;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cy;->b:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cy;->b:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cy;->b:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cy;->b:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cy;->b:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cy;->b:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/cy;->b:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cy;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cy;->b:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cy;->b:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->e(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cy;->b:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
