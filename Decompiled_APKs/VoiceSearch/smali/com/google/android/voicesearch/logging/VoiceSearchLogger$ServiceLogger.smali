.class Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;
.super Ljava/lang/Object;
.source "VoiceSearchLogger.java"

# interfaces
.implements Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceLogger"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->mContext:Landroid/content/Context;

    .line 415
    return-void
.end method

.method private logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V
    .locals 1
    .parameter "actionType"

    .prologue
    .line 418
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 419
    return-void
.end method

.method private logLatency(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;J)V
    .locals 3
    .parameter "latencyType"
    .parameter "duration"

    .prologue
    .line 422
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->setType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v1

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->setDurationMs(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->addLatencies(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 426
    return-void
.end method

.method private logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V
    .locals 3
    .parameter

    .prologue
    .line 435
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/voicesearch/logging/LoggingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "app_name"

    const-string v2, "voice_search_native_app"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_protobuf_bytes"

    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_event"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 440
    return-void
.end method


# virtual methods
.method public actionAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 518
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_ACTION_ACCEPTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getActionLoggingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchAction(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 521
    return-void
.end method

.method public actionPresented(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 504
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_ACTION_PRESENTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getActionLoggingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchAction(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 507
    return-void
.end method

.method public actionRejected(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 511
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_ACTION_REJECTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getActionLoggingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchAction(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 514
    return-void
.end method

.method public contactMissingAddress(I)V
    .locals 2
    .parameter "addressType"

    .prologue
    .line 553
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    .line 554
    .local v0, b:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_CONTACT_MISSING_ADDRESS:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 555
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 556
    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->EMAIL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchContactAddressType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 560
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 561
    return-void

    .line 557
    :cond_1
    if-nez p1, :cond_0

    .line 558
    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->PHONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchContactAddressType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    goto :goto_0
.end method

.method public disambigAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 546
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_RECOGNITION_DISAMBIG_ACCEPTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getActionLoggingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchAction(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 549
    return-void
.end method

.method public disambigPresented()V
    .locals 2

    .prologue
    .line 540
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_RECOGNITION_DISAMBIG_PRESENTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 542
    return-void
.end method

.method public errorCancel()V
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_ERROR_CANCEL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 476
    return-void
.end method

.method public errorReplay()V
    .locals 1

    .prologue
    .line 470
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_ERROR_REPLAY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 471
    return-void
.end method

.method public errorRetry()V
    .locals 1

    .prologue
    .line 465
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_ERROR_RETRY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 466
    return-void
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 444
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/voicesearch/logging/LoggingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "app_name"

    const-string v2, "voice_search_native_app"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_event"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "flush"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 449
    return-void
.end method

.method public helpButtonUsed(Z)V
    .locals 1
    .parameter "helpHintVisible"

    .prologue
    .line 495
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_HELP_BUTTON:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 497
    if-eqz p1, :cond_0

    .line 498
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_HELP_BUBBLE_VISIBLE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 500
    :cond_0
    return-void
.end method

.method public imeDisplayedTextChanged()V
    .locals 1

    .prologue
    .line 658
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_IME_DISPLAYED_TEXT_CHANGED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 659
    return-void
.end method

.method public imeDone()V
    .locals 1

    .prologue
    .line 608
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_IME_DONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 609
    return-void
.end method

.method public imeError()V
    .locals 1

    .prologue
    .line 613
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_IME_ERROR:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 614
    return-void
.end method

.method public imeInterrupted()V
    .locals 1

    .prologue
    .line 618
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_IME_INTERRUPT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 619
    return-void
.end method

.method public imeInterruptedWhileWaitingForResults()V
    .locals 1

    .prologue
    .line 623
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_IME_INTERRUPT_WHILE_WAITING_FOR_RESULTS:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 624
    return-void
.end method

.method public imeLatencyAfterDone(J)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 648
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->VOICE_IME_WAITING_FOR_RESULT_AFTER_DONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logLatency(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;J)V

    .line 649
    return-void
.end method

.method public imeSession(J)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 653
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->VOICE_IME_SESSION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logLatency(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;J)V

    .line 654
    return-void
.end method

.method public imeStart()V
    .locals 1

    .prologue
    .line 628
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_IME_START:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 629
    return-void
.end method

.method public imeStartJump()V
    .locals 1

    .prologue
    .line 633
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_IME_START_JUMP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 634
    return-void
.end method

.method public imeSuggestionSelected()V
    .locals 1

    .prologue
    .line 638
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_IME_SUGGESTION_SELECTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 639
    return-void
.end method

.method public imeUserTypedCorrection()V
    .locals 1

    .prologue
    .line 643
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_IME_USER_TYPED_CORRECTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 644
    return-void
.end method

.method public listeningCancel()V
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_CANCEL_DURING_LISTENING:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 481
    return-void
.end method

.method public personalizationAuthTokenFailure()V
    .locals 1

    .prologue
    .line 565
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->SPEECH_PERSONALIZATION_AUTH_ISSUE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 566
    return-void
.end method

.method public personalizationDashboardLink()V
    .locals 1

    .prologue
    .line 570
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->SPEECH_PERSONALIZATION_DASHBOARD:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 571
    return-void
.end method

.method public personalizationMoreLink()V
    .locals 1

    .prologue
    .line 575
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->SPEECH_PERSONALIZATION_MORE_INFO_LINK:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 576
    return-void
.end method

.method public personalizationPopup(Z)V
    .locals 1
    .parameter "accepted"

    .prologue
    .line 580
    if-eqz p1, :cond_0

    .line 581
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->SPEECH_PERSONALIZATION_POP_UP_ACCEPTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->SPEECH_PERSONALIZATION_POP_UP_REJECTED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    goto :goto_0
.end method

.method public personalizationSetting(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 589
    if-eqz p1, :cond_0

    .line 590
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->SPEECH_PERSONALIZATION_SETTING_ENABLED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->SPEECH_PERSONALIZATION_SETTING_DISABLED:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    goto :goto_0
.end method

.method public retry()V
    .locals 1

    .prologue
    .line 460
    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getRetry()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 461
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2
    .parameter "how"

    .prologue
    .line 453
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_START_BUTTON:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setText(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logProtoBuf(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)V

    .line 456
    return-void
.end method

.method public videoLaunched()V
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->LAUNCH_VIDEO:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 491
    return-void
.end method

.method public workingCancel()V
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_CANCEL_DURING_WORKING:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;->logAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)V

    .line 486
    return-void
.end method
