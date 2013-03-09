.class Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;
.super Ljava/lang/Object;
.source "HtcMediaFormatConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 124
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    iget v1, v1, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.FORMAT_INTERNAL_SD_CARD_VOLUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 138
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    sget-object v2, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->CONFIRMED:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    iput-object v2, v1, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mConfirmState:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    .line 144
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 146
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 132
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
