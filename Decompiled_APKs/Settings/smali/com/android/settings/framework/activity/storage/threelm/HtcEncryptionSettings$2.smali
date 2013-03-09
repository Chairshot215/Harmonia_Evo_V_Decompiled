.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;
.super Ljava/lang/Object;
.source "HtcEncryptionSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    const/16 v1, 0x37

    #calls: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->access$300(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0874

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0875

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2$1;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2$1;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 132
    :cond_0
    return-void
.end method
