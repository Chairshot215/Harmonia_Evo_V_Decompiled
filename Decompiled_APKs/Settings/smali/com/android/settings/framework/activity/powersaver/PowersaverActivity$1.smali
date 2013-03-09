.class Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PowersaverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$1;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$1;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;

    #getter for: Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mConfirmDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->access$000(Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$1;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;

    #getter for: Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mConfirmDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->access$000(Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$1;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;

    #getter for: Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->access$100(Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Exception]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
