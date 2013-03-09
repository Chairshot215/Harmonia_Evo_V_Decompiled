.class Lcom/android/phone/WorldPhoneModeSelection$2;
.super Ljava/util/TimerTask;
.source "WorldPhoneModeSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/WorldPhoneModeSelection;->checkNoService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WorldPhoneModeSelection;


# direct methods
.method constructor <init>(Lcom/android/phone/WorldPhoneModeSelection;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/phone/WorldPhoneModeSelection$2;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$2;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z
    invoke-static {v0}, Lcom/android/phone/WorldPhoneModeSelection;->access$700(Lcom/android/phone/WorldPhoneModeSelection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    const-string v0, "WorldPhoneModeSelection"

    const-string v1, "out of service notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$2;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection$2;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0163

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection$2;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e016c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/WorldPhoneModeSelection$2;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0170

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection$2;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e016e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/WorldPhoneModeSelection$2;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e016f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlertForNoService(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$2;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    invoke-static {v0}, Lcom/android/phone/WarningAlertActivity;->setHandler(Landroid/os/Handler;)V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 471
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 472
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    goto :goto_0
.end method
