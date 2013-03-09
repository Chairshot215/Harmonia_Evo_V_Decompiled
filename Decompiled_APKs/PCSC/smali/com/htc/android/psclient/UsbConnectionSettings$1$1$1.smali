.class Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;
.super Ljava/lang/Object;
.source "UsbConnectionSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

.field final synthetic val$dontAskAgain:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/UsbConnectionSettings$1$1;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iput-object p2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;->val$dontAskAgain:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 302
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;->val$dontAskAgain:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    sget v0, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "usb_dont_ask"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 306
    :cond_0
    sget v0, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-ne v0, v2, :cond_1

    .line 307
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dock_dont_ask"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 308
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_ask_me"

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 311
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "INTENT_DONTASK_CHECKED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    :goto_0
    return-void

    .line 313
    :cond_2
    sget v0, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "usb_dont_ask"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 316
    :cond_3
    sget v0, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-ne v0, v2, :cond_4

    .line 317
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dock_dont_ask"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 318
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_ask_me"

    invoke-static {v0, v1, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 320
    :cond_4
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 321
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "INTENT_DONTASK_UNCHECKED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
