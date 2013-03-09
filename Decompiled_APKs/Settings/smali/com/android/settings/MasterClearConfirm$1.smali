.class Lcom/android/settings/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 62
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sd_encryption"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 71
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    #getter for: Lcom/android/settings/MasterClearConfirm;->mEraseInternalSdCard:Z
    invoke-static {v1}, Lcom/android/settings/MasterClearConfirm;->access$000(Lcom/android/settings/MasterClearConfirm;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    #getter for: Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z
    invoke-static {v2}, Lcom/android/settings/MasterClearConfirm;->access$100(Lcom/android/settings/MasterClearConfirm;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/activity/storage/HtcMasterClearConfirmPatch;->doFactoryDataReset(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method
