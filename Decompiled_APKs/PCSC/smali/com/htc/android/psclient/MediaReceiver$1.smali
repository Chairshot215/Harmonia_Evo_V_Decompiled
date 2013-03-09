.class Lcom/htc/android/psclient/MediaReceiver$1;
.super Ljava/lang/Object;
.source "MediaReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/MediaReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/MediaReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/MediaReceiver;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/android/psclient/MediaReceiver$1;->this$0:Lcom/htc/android/psclient/MediaReceiver;

    iput-object p2, p0, Lcom/htc/android/psclient/MediaReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/android/psclient/MediaReceiver$1;->val$mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 24
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/htc/android/psclient/MediaReceiver$1;->val$action:Ljava/lang/String;

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/psclient/MediaReceiver$1;->val$action:Ljava/lang/String;

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    :cond_1
    const-string v0, ""

    .line 27
    .local v0, type:Ljava/lang/String;
    sget v1, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v1, :cond_2

    .line 28
    iget-object v1, p0, Lcom/htc/android/psclient/MediaReceiver$1;->this$0:Lcom/htc/android/psclient/MediaReceiver;

    #getter for: Lcom/htc/android/psclient/MediaReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/htc/android/psclient/MediaReceiver;->access$000(Lcom/htc/android/psclient/MediaReceiver;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "usb_previous_type"

    const-string v3, "Charge Only"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, "Disk Drive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    iget-object v1, p0, Lcom/htc/android/psclient/MediaReceiver$1;->this$0:Lcom/htc/android/psclient/MediaReceiver;

    #getter for: Lcom/htc/android/psclient/MediaReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/htc/android/psclient/MediaReceiver;->access$100(Lcom/htc/android/psclient/MediaReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "usb_previous_type"

    const-string v3, "Charge Only"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    :cond_2
    sget v1, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-ne v1, v4, :cond_3

    .line 34
    iget-object v1, p0, Lcom/htc/android/psclient/MediaReceiver$1;->this$0:Lcom/htc/android/psclient/MediaReceiver;

    #getter for: Lcom/htc/android/psclient/MediaReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/htc/android/psclient/MediaReceiver;->access$000(Lcom/htc/android/psclient/MediaReceiver;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "dock_previous_type"

    const-string v3, "Charge Only"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "Disk Drive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    iget-object v1, p0, Lcom/htc/android/psclient/MediaReceiver$1;->this$0:Lcom/htc/android/psclient/MediaReceiver;

    #getter for: Lcom/htc/android/psclient/MediaReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/htc/android/psclient/MediaReceiver;->access$100(Lcom/htc/android/psclient/MediaReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dock_previous_type"

    const-string v3, "Charge Only"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    :cond_3
    iget-object v1, p0, Lcom/htc/android/psclient/MediaReceiver$1;->this$0:Lcom/htc/android/psclient/MediaReceiver;

    #getter for: Lcom/htc/android/psclient/MediaReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/htc/android/psclient/MediaReceiver;->access$100(Lcom/htc/android/psclient/MediaReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    iget-object v1, p0, Lcom/htc/android/psclient/MediaReceiver$1;->val$mContext:Landroid/content/Context;

    const-string v2, "Charge Only"

    iget-object v3, p0, Lcom/htc/android/psclient/MediaReceiver$1;->val$mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 43
    .end local v0           #type:Ljava/lang/String;
    :cond_4
    return-void
.end method
