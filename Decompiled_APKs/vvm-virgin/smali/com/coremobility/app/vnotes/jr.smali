.class final Lcom/coremobility/app/vnotes/jr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/jr;->a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jr;->a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_inbox_filter"

    const v2, 0x1869f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jr;->a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->removeDialog(I)V

    return-void
.end method
