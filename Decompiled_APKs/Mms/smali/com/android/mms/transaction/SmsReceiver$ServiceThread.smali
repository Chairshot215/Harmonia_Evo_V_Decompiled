.class Lcom/android/mms/transaction/SmsReceiver$ServiceThread;
.super Ljava/lang/Thread;
.source "SmsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceThread"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiver;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/SmsReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiver$ServiceThread;->this$0:Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/android/mms/transaction/SmsReceiver$ServiceThread;->context:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/android/mms/transaction/SmsReceiver$ServiceThread;->intent:Landroid/content/Intent;

    .line 82
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiver$ServiceThread;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiver$ServiceThread;->context:Landroid/content/Context;

    const-class v2, Lcom/android/mms/transaction/SmsReceiverService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiver$ServiceThread;->intent:Landroid/content/Intent;

    const-string v1, "result"

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiver$ServiceThread;->this$0:Lcom/android/mms/transaction/SmsReceiver;

    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiver;->getResultCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiver$ServiceThread;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiver$ServiceThread;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/mms/transaction/SmsReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 88
    return-void
.end method
