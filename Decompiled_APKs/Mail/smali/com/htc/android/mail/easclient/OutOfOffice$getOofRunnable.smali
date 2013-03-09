.class Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/OutOfOffice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getOofRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/OutOfOffice;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/easclient/OutOfOffice$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 501
    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "OutOfOffice"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v4

    const-string v6, "> getOof"

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 503
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const/4 v4, 0x0

    #setter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mCancelled:Z
    invoke-static {v3, v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$502(Lcom/htc/android/mail/easclient/OutOfOffice;Z)Z

    .line 504
    const/4 v0, 0x1

    .line 506
    .local v0, bSuccess:Z
    :try_start_0
    const-string v3, "OutOfOffice"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v4

    const-string v6, "- get oof start"

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 507
    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$200(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v4

    const-string v6, "Text"

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getOof(JLjava/lang/String;)Lcom/htc/android/mail/eassvc/pim/EASOofResult;

    move-result-object v2

    .line 508
    .local v2, oofResult:Lcom/htc/android/mail/eassvc/pim/EASOofResult;
    const-string v3, "OutOfOffice"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v4

    const-string v6, "- get oof end"

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 510
    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mCancelled:Z
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$500(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 511
    const-string v3, "OutOfOffice"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v4

    const-string v6, "get oof cancelled"

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 599
    .end local v2           #oofResult:Lcom/htc/android/mail/eassvc/pim/EASOofResult;
    :cond_1
    :goto_0
    return-void

    .line 513
    .restart local v2       #oofResult:Lcom/htc/android/mail/eassvc/pim/EASOofResult;
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mDestroy:Z
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$600(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 514
    const-string v3, "OutOfOffice"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v4

    const-string v6, "get oof finish"

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 579
    .end local v2           #oofResult:Lcom/htc/android/mail/eassvc/pim/EASOofResult;
    :catch_0
    move-exception v1

    .line 580
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 583
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->removeDialog(I)V

    .line 588
    if-nez v0, :cond_3

    .line 589
    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    new-instance v4, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$2;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$2;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 598
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OutOfOffice"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v4

    const-string v6, "< getOof"

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 516
    .restart local v2       #oofResult:Lcom/htc/android/mail/eassvc/pim/EASOofResult;
    :cond_4
    if-nez v2, :cond_5

    .line 517
    :try_start_1
    const-string v3, "OutOfOffice"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v4

    const-string v6, "get oof failed, oof result is null"

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 518
    const/4 v0, 0x0

    goto :goto_1

    .line 519
    :cond_5
    iget v3, v2, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->httpStatus:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_6

    .line 520
    const-string v3, "OutOfOffice"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get oof failed, HttpStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 521
    const/4 v0, 0x0

    goto :goto_1

    .line 523
    :cond_6
    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "OutOfOffice"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v4

    const-string v6, "get oof successfully"

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 524
    :cond_7
    const/4 v0, 0x1

    .line 525
    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    new-instance v4, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;

    invoke-direct {v4, p0, v2}, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;Lcom/htc/android/mail/eassvc/pim/EASOofResult;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
