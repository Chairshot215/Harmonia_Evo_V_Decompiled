.class final Lcom/coremobility/app/vnotes/js;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/js;->a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/js;->a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;)I

    move-result v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->f(I)I

    move-result v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter Lock set to:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/js;->a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preference_inbox_filter"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/js;->a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->removeDialog(I)V

    return-void
.end method
