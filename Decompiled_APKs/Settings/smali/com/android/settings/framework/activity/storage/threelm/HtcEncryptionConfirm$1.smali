.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;
.super Ljava/lang/Object;
.source "HtcEncryptionConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 40
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v5, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$2;->$SwitchMap$com$android$settings$framework$activity$storage$threelm$HtcEncryptionSettings$StorageType:[I

    iget-object v6, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mStorageType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;
    invoke-static {v6}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$000(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 101
    :goto_1
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v5}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Landroid/view/KeyEvent;

    invoke-direct {v6, v4, v7}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 103
    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v4}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v3, v7}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 47
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;
    invoke-static {v5}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$100(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    move-result-object v5

    sget-object v6, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    if-ne v5, v6, :cond_2

    move v1, v3

    .line 48
    .local v1, b:Z
    :goto_2
    if-nez v1, :cond_1

    .line 51
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    const-string v6, "sd_encryption"

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 53
    :cond_1
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v5}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sd_encryption"

    invoke-static {v5, v6, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 57
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.action.FORMAT_INTERNAL_AND_EXTERNAL_SD_CARD_VOLUME"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v5}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .end local v1           #b:Z
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    move v1, v4

    .line 47
    goto :goto_2

    .line 62
    .restart local v1       #b:Z
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v5, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v5}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 69
    .end local v1           #b:Z
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;
    invoke-static {v5}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->access$100(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    move-result-object v5

    sget-object v6, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    if-ne v5, v6, :cond_5

    move v1, v3

    .line 70
    .restart local v1       #b:Z
    :goto_3
    if-nez v1, :cond_4

    .line 73
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    const-string v6, "sd_encryption"

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 75
    :cond_4
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v5}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sd_encryption"

    invoke-static {v5, v6, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 79
    const-string v0, "com.android.settings.action.FORMAT_INTERNAL_SD_CARD_VOLUME"

    .line 81
    .local v0, action:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v5}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .end local v0           #action:Ljava/lang/String;
    .end local v1           #b:Z
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    move v1, v4

    .line 69
    goto :goto_3

    .line 86
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v5}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_encryption"

    invoke-static {v5, v6, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 91
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v5}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v5}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 93
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v5, v2}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
