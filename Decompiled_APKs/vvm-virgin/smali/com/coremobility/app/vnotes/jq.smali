.class final Lcom/coremobility/app/vnotes/jq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/jq;->a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jq;->a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->removeDialog(I)V

    return-void
.end method
