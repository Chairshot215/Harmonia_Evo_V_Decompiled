.class Lcom/android/mms/ui/MessagingPreferenceActivity$18;
.super Landroid/content/BroadcastReceiver;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2248
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$18;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2251
    const-string v0, "MessagingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2254
    const-string v0, "pref_key_attachment_storage_setting"

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$18;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$18;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MsgPreferenceUtils;->updateAttachmentStorageSetting(Ljava/lang/String;Lcom/htc/preference/HtcPreferenceManager;Landroid/content/Context;)V

    .line 2255
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2256
    const-string v0, "pref_key_vvm_archive_storage"

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$18;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$18;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MsgPreferenceUtils;->updateAttachmentStorageSetting(Ljava/lang/String;Lcom/htc/preference/HtcPreferenceManager;Landroid/content/Context;)V

    .line 2260
    :cond_0
    return-void
.end method
