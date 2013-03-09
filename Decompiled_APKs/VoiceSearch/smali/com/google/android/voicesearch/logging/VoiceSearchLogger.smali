.class public Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
.super Ljava/lang/Object;
.source "VoiceSearchLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;,
        Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;
    }
.end annotation


# instance fields
.field private final mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

.field private final mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

.field private mState:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    .line 73
    iput-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    .line 74
    iput-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;)V
    .locals 1
    .parameter "context"
    .parameter "gservicesHelper"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    .line 81
    new-instance v0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;

    invoke-direct {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    .line 83
    new-instance v0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    invoke-direct {v0, p1, p2}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    .line 84
    return-void
.end method

.method public static getNBestChoose(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 671
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_N_BEST_CHOOSE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setDroplistCursor(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getNBestReveal()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 667
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_N_BEST_REVEAL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getQueryCleared()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 686
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_CLEAR_QUERY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getQueryCorrection()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 681
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_QUERY_CORRECTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getResultClicked()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 676
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_SELECT_WEBVIEW_RESULT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getRetry()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 663
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_RETRY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public actionAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->actionAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 181
    return-void
.end method

.method public actionPresented(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->actionPresented(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 173
    return-void
.end method

.method public actionRejected(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->actionRejected(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 177
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    .line 149
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->listeningCancel()V

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->workingCancel()V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->errorCancel()V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public contactMissingAddress(I)V
    .locals 1
    .parameter "addressType"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->contactMissingAddress(I)V

    .line 232
    return-void
.end method

.method public disambigAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->disambigAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 228
    return-void
.end method

.method public disambigPresented()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->disambigPresented()V

    .line 224
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->flush()V

    .line 165
    return-void
.end method

.method public getClientReportLogger()Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    return-object v0
.end method

.method public helpButtonUsed(Z)V
    .locals 1
    .parameter "helpHintVisible"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->helpButtonUsed(Z)V

    .line 153
    return-void
.end method

.method public imeDisplayedTextChanged()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->imeDisplayedTextChanged()V

    .line 304
    return-void
.end method

.method public imeDone()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->imeDone()V

    .line 272
    return-void
.end method

.method public imeError()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->imeError()V

    .line 284
    return-void
.end method

.method public imeInterrupted()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->imeInterrupted()V

    .line 276
    return-void
.end method

.method public imeInterruptedWhileWaitingForResults()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->imeInterruptedWhileWaitingForResults()V

    .line 280
    return-void
.end method

.method public imeLatencyAfterDone(J)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1, p2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->imeLatencyAfterDone(J)V

    .line 300
    return-void
.end method

.method public imeSession(J)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1, p2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->imeSession(J)V

    .line 296
    return-void
.end method

.method public imeStart()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->imeStart()V

    .line 264
    return-void
.end method

.method public imeStartJump()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->imeStartJump()V

    .line 268
    return-void
.end method

.method public imeSuggestionSelected()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->imeSuggestionSelected()V

    .line 288
    return-void
.end method

.method public imeUserTypedCorrection()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->imeUserTypedCorrection()V

    .line 292
    return-void
.end method

.method public personalizationAuthTokenFailure()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->personalizationAuthTokenFailure()V

    .line 252
    return-void
.end method

.method public personalizationDashboardLink()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->personalizationDashboardLink()V

    .line 248
    return-void
.end method

.method public personalizationMoreLink()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->personalizationMoreLink()V

    .line 244
    return-void
.end method

.method public personalizationPopup(Z)V
    .locals 1
    .parameter "accepted"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->personalizationPopup(Z)V

    .line 240
    return-void
.end method

.method public personalizationSetting(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->personalizationSetting(Z)V

    .line 236
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    .line 161
    return-void
.end method

.method public retry()V
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->errorRetry()V

    .line 129
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    .line 130
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->retry()V

    goto :goto_0
.end method

.method public retryReplay()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->errorReplay()V

    .line 134
    return-void
.end method

.method public setRecognitionState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 156
    iput p1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    .line 157
    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, action:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    if-nez v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const-string v2, "u"

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->start(Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const-string v2, "m"

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->start(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const-string v2, "s"

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->start(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_3
    const-string v1, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const-string v2, "l"

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->start(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_4
    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.speech.action.ANALYZE_SPEECH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 116
    :cond_5
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const-string v2, "i"

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->start(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_6
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const-string v2, "u"

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->start(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public videoLaunched()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->videoLaunched()V

    .line 169
    return-void
.end method
