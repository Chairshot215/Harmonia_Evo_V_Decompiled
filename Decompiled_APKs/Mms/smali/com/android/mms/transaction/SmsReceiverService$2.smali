.class Lcom/android/mms/transaction/SmsReceiverService$2;
.super Ljava/lang/Object;
.source "SmsReceiverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/SmsReceiverService;->asyncMoveMessageToFolder(Landroid/net/Uri;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;

.field final synthetic val$autosend:Z

.field final synthetic val$errorCode:I

.field final synthetic val$type:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;ILandroid/net/Uri;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 945
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    iput p2, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$type:I

    iput-object p3, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$uri:Landroid/net/Uri;

    iput p4, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$errorCode:I

    iput-boolean p5, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$autosend:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 947
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyncMoveMessageTo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$uri:Landroid/net/Uri;

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$type:I

    iget v4, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$errorCode:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 954
    const-string v1, "Jerry1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autosend >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$autosend:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-static {}, Lcom/android/mms/util/RoamingGuideHelper;->getInstance()Lcom/android/mms/util/RoamingGuideHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$autosend:Z

    if-eqz v1, :cond_0

    .line 956
    invoke-static {}, Lcom/android/mms/util/RoamingGuideHelper;->getInstance()Lcom/android/mms/util/RoamingGuideHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/util/RoamingGuideHelper;->moveAutoSend2AutoSendType(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveMessageToFolder exception >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
