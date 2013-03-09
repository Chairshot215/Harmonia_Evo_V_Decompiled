.class public Lcom/htc/android/mail/huxservice/HuxManagerService$HuxManagerBinder;
.super Lcom/htc/android/pim/hux/IHuxManager$Stub;
.source "HuxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HuxManagerBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxManagerService;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/huxservice/HuxManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxManagerBinder;->this$0:Lcom/htc/android/mail/huxservice/HuxManagerService;

    invoke-direct {p0}, Lcom/htc/android/pim/hux/IHuxManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public verifyDevice()Lcom/htc/android/pim/hux/HuxProvResult;
    .locals 5

    .prologue
    .line 52
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HuxManagerService"

    const-string v3, "verifyDevice()"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxManagerBinder;->this$0:Lcom/htc/android/mail/huxservice/HuxManagerService;

    #getter for: Lcom/htc/android/mail/huxservice/HuxManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxManagerService;->access$000(Lcom/htc/android/mail/huxservice/HuxManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/Account;->getPIN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxManagerBinder;->this$0:Lcom/htc/android/mail/huxservice/HuxManagerService;

    #calls: Lcom/htc/android/mail/huxservice/HuxManagerService;->getPin()Lcom/htc/android/pim/hux/HuxProvResult;
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxManagerService;->access$100(Lcom/htc/android/mail/huxservice/HuxManagerService;)Lcom/htc/android/pim/hux/HuxProvResult;

    move-result-object v0

    .line 55
    .local v0, getPinResult:Lcom/htc/android/pim/hux/HuxProvResult;
    if-eqz v0, :cond_2

    .line 71
    .end local v0           #getPinResult:Lcom/htc/android/pim/hux/HuxProvResult;
    :cond_1
    :goto_0
    return-object v0

    .line 60
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxManagerBinder;->this$0:Lcom/htc/android/mail/huxservice/HuxManagerService;

    #getter for: Lcom/htc/android/mail/huxservice/HuxManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxManagerService;->access$000(Lcom/htc/android/mail/huxservice/HuxManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->getVerifyDeviceInfo(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v1

    .line 61
    .local v1, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    iget-boolean v2, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-nez v2, :cond_4

    .line 62
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxManagerBinder;->this$0:Lcom/htc/android/mail/huxservice/HuxManagerService;

    #calls: Lcom/htc/android/mail/huxservice/HuxManagerService;->getPin()Lcom/htc/android/pim/hux/HuxProvResult;
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxManagerService;->access$100(Lcom/htc/android/mail/huxservice/HuxManagerService;)Lcom/htc/android/pim/hux/HuxProvResult;

    move-result-object v0

    .line 63
    .restart local v0       #getPinResult:Lcom/htc/android/pim/hux/HuxProvResult;
    if-nez v0, :cond_1

    .line 66
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_3

    .line 67
    const-string v2, "HuxManagerService"

    const-string v3, "getVerifyDeviceInfo()"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_3
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxManagerBinder;->this$0:Lcom/htc/android/mail/huxservice/HuxManagerService;

    #getter for: Lcom/htc/android/mail/huxservice/HuxManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxManagerService;->access$000(Lcom/htc/android/mail/huxservice/HuxManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->getVerifyDeviceInfo(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v1

    .line 71
    .end local v0           #getPinResult:Lcom/htc/android/pim/hux/HuxProvResult;
    :cond_4
    new-instance v0, Lcom/htc/android/pim/hux/HuxProvResult;

    iget v2, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->status:I

    iget v3, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorCode:I

    iget-object v4, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/android/pim/hux/HuxProvResult;-><init>(IILjava/lang/String;)V

    goto :goto_0
.end method
