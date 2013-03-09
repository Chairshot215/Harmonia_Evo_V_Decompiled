.class Lcom/htc/android/mail/easclient/AccountNameSetting$2;
.super Landroid/content/BroadcastReceiver;
.source "AccountNameSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/AccountNameSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$2;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 265
    if-nez p2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, action:Ljava/lang/String;
    const-string v2, "intent.eas.password_setup.finish"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    const-string v2, "Result"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 271
    .local v1, setupOk:Z
    if-eqz v1, :cond_2

    .line 272
    iget-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$2;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    iput-boolean v4, v2, Lcom/htc/android/mail/easclient/AccountNameSetting;->bContinueCreateAccount:Z

    goto :goto_0

    .line 274
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$2;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/easclient/AccountNameSetting;->removeDialog(I)V

    goto :goto_0
.end method
