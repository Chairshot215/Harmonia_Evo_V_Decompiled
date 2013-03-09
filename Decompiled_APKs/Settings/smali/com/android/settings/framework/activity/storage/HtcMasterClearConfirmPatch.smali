.class public Lcom/android/settings/framework/activity/storage/HtcMasterClearConfirmPatch;
.super Ljava/lang/Object;
.source "HtcMasterClearConfirmPatch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doFactoryDataReset(Landroid/content/Context;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "eraseInternalSdCard"
    .parameter "eraseSdCard"

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.action.FACTORY_DATA_RESET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.htc.intent.extra.erase_internal_sd_card"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.htc.intent.extra.erase_external_sd_card"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 34
    return-void
.end method
