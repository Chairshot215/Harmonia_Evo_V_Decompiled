.class final Lcom/coremobility/app/vnotes/jt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/jt;->a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    check-cast p1, Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jt;->a:Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;I)I

    return-void
.end method
