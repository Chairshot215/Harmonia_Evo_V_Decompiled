.class Lcom/android/mms/transaction/SmsReceiverService$4;
.super Ljava/lang/Object;
.source "SmsReceiverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/SmsReceiverService;->updateNotificationAndShortcutStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;

.field final synthetic val$serv_id:I


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2536
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    iput p2, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->val$serv_id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2538
    const-string v0, "SmsReceiverService"

    const-string v1, "updateNotificationAndShortcutStatus: "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-virtual {v0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 2540
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    iget v1, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->val$serv_id:I

    invoke-static {v0, v1}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 2541
    return-void
.end method
