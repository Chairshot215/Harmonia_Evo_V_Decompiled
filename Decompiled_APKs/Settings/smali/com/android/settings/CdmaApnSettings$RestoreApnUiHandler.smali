.class Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "CdmaApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CdmaApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CdmaApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/CdmaApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CdmaApnSettings;Lcom/android/settings/CdmaApnSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/CdmaApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 539
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 541
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnSettings;

    #calls: Lcom/android/settings/CdmaApnSettings;->fillList()V
    invoke-static {v2}, Lcom/android/settings/CdmaApnSettings;->access$200(Lcom/android/settings/CdmaApnSettings;)V

    .line 543
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/CdmaApnSettings;->access$102(Z)Z

    .line 546
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnSettings;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/settings/CdmaApnSettings;->removeDialog(I)V

    .line 547
    invoke-static {}, Lcom/android/settings/CdmaApnSettings;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CdmaApnSettings"

    const-string v3, "removeDialog(DIALOG_RESTORE_DEFAULTAPN).complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 552
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnSettings;

    iget-object v3, p0, Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnSettings;

    invoke-virtual {v3}, Lcom/android/settings/CdmaApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0a5a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 557
    iget-object v2, p0, Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnSettings;

    #getter for: Lcom/android/settings/CdmaApnSettings;->mIsMVNO:Z
    invoke-static {v2}, Lcom/android/settings/CdmaApnSettings;->access$500(Lcom/android/settings/CdmaApnSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnSettings;

    const-class v3, Lcom/android/settings/CdmaApnSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    .local v1, intent:Landroid/content/Intent;
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnSettings;

    invoke-virtual {v2, v1}, Lcom/android/settings/CdmaApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 561
    iget-object v2, p0, Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnSettings;

    invoke-virtual {v2}, Lcom/android/settings/CdmaApnSettings;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 562
    :catch_0
    move-exception v2

    goto :goto_0

    .line 548
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 549
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CdmaApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeDialog(DIALOG_RESTORE_DEFAULTAPN).complete.error:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_2

    const-string v2, "no error message"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
