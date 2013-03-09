.class Lcom/android/internal/telephony/SmsStorageMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SmsStorageMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SMS_STORAGE_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SMS_STORAGE_OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-boolean v2, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    sget-boolean v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mEasAllowSms:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto :goto_0

    :cond_2
    const-string v0, "SmsStorageMonitor"

    const-string v1, "Receive intent MS_STORAGE_OK but EAS don\'t allow MT/MO SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EAS_ALLOW_SMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "allow"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mEasAllowSms:Z

    sget-boolean v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mEasAllowSms:Z

    if-nez v0, :cond_4

    const-string v0, "SmsStorageMonitor"

    const-string v1, "Receive intent EAS_ALLOW_SMS, don\'t allow MT & MO SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-boolean v0, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    if-ne v0, v2, :cond_5

    const-string v0, "SmsStorageMonitor"

    const-string v1, "Receive intent EAS_ALLOW_SMS, allow MT & MO SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto :goto_0

    :cond_5
    const-string v0, "SmsStorageMonitor"

    const-string v1, "Receive intent EAS_ALLOW_SMS, allow MT & MO SMS but storage is full"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto :goto_0
.end method
