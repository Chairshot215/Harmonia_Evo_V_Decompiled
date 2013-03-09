.class Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 613
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 615
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    #calls: Lcom/android/settings/ApnSettings;->fillList()V
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    .line 617
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/ApnSettings;->access$102(Z)Z

    .line 620
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnSettings;->removeDialog(I)V

    .line 621
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$600()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ApnSettings"

    const-string v3, "removeDialog(DIALOG_RESTORE_DEFAULTAPN).complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 627
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    iget-object v3, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v3}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0a5a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 632
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    #getter for: Lcom/android/settings/ApnSettings;->mIsMVNO:Z
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->access$700(Lcom/android/settings/ApnSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    const-class v3, Lcom/android/settings/ApnSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 635
    .local v1, intent:Landroid/content/Intent;
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v2, v1}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 636
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v2}, Lcom/android/settings/ApnSettings;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v2

    goto :goto_0

    .line 622
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 623
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ApnSettings"

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

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
