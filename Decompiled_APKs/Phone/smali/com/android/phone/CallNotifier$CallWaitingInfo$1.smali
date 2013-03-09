.class Lcom/android/phone/CallNotifier$CallWaitingInfo$1;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier$CallWaitingInfo;->saveCallWaiting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/CallNotifier$CallWaitingInfo;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier$CallWaitingInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 2566
    iput-object p1, p0, Lcom/android/phone/CallNotifier$CallWaitingInfo$1;->this$1:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2569
    iget-object v1, p0, Lcom/android/phone/CallNotifier$CallWaitingInfo$1;->this$1:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    iget-object v1, v1, Lcom/android/phone/CallNotifier$CallWaitingInfo;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/CallNotifier$CallWaitingInfo$1;->this$1:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    iget-object v4, v4, Lcom/android/phone/CallNotifier$CallWaitingInfo;->number:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 2570
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v1, p0, Lcom/android/phone/CallNotifier$CallWaitingInfo$1;->this$1:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    iget-object v1, v1, Lcom/android/phone/CallNotifier$CallWaitingInfo;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/CallNotifier$CallWaitingInfo$1;->this$1:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    iget-object v4, v4, Lcom/android/phone/CallNotifier$CallWaitingInfo;->number:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/CallNotifier$CallWaitingInfo$1;->this$1:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    iget v5, v5, Lcom/android/phone/CallNotifier$CallWaitingInfo;->presentation:I

    invoke-static {v1, v0, v4, v5}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2572
    .local v2, logNumber:Ljava/lang/String;
    const-string v1, "CallNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveCallWaiting, logNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    const-string v1, "CallNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveCallWaiting, name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    if-eqz v0, :cond_1

    iget v3, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2577
    .local v3, newPresentation:I
    :goto_0
    sget-boolean v1, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v1, :cond_0

    .line 2578
    iget-object v1, p0, Lcom/android/phone/CallNotifier$CallWaitingInfo$1;->this$1:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    iget-object v1, v1, Lcom/android/phone/CallNotifier$CallWaitingInfo;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/android/phone/CityIdInfo;->addCityIdInfoInto(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)V

    .line 2580
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier$CallWaitingInfo$1;->this$1:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    iget-object v1, v1, Lcom/android/phone/CallNotifier$CallWaitingInfo;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/phone/CallNotifier$CallWaitingInfo$1;->this$1:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    iget-wide v5, v5, Lcom/android/phone/CallNotifier$CallWaitingInfo;->date:J

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;

    .line 2582
    return-void

    .line 2575
    .end local v3           #newPresentation:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier$CallWaitingInfo$1;->this$1:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    iget v3, v1, Lcom/android/phone/CallNotifier$CallWaitingInfo;->presentation:I

    goto :goto_0
.end method
