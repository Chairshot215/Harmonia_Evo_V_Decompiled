.class public Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
.super Ljava/lang/Object;
.source "RecognitionParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/speechservice/RecognitionParameters$1;,
        Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;,
        Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;
    }
.end annotation


# instance fields
.field private final mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private mActionParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;

.field private mAddFullRecognitionResult:Z

.field private mAlternatesEnabled:Z

.field private mAudioEncoding:I

.field private mAudioSampleRate:I

.field private mCarDock:Z

.field private mClientApplicationId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

.field private mEndpointerParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

.field private final mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private mLanguageModel:Ljava/lang/String;

.field private mLanguageOverride:Ljava/lang/String;

.field private final mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

.field private final mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

.field private final mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private mMaxResults:I

.field private mMode:I

.field private mMultislotActionSelectedSlot:Ljava/lang/String;

.field private mMultislotActionType:I

.field private mNetworkType:I

.field private mNoiseLevel:F

.field private mPartialTranscriptsEnabled:Z

.field private final mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

.field private mRecognitionContext:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

.field private mRefererUrl:Ljava/lang/String;

.field private mRequestId:I

.field private mSessionId:Ljava/lang/String;

.field private mSnr:F

.field private mSpeechServerUrlOverride:Ljava/lang/String;

.field private mSpeechTimeoutMillis:J

.field private mStoreRawAudio:Z

.field private mUseContactAuth:Z

.field private mUseLocation:Z

.field private mWebSearchOnly:Z


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/high16 v4, -0x4080

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSessionId:Ljava/lang/String;

    .line 66
    iput v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRequestId:I

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMode:I

    .line 71
    iput-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseLocation:Z

    .line 73
    iput-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseContactAuth:Z

    .line 80
    iput-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPartialTranscriptsEnabled:Z

    .line 83
    iput-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAlternatesEnabled:Z

    .line 90
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mClientApplicationId:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageModel:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRecognitionContext:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 98
    iput-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mCarDock:Z

    .line 101
    iput-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mWebSearchOnly:Z

    .line 103
    iput v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMultislotActionType:I

    .line 105
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMultislotActionSelectedSlot:Ljava/lang/String;

    .line 107
    iput v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMaxResults:I

    .line 109
    iput v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mNetworkType:I

    .line 111
    iput v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mNoiseLevel:F

    .line 113
    iput v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSnr:F

    .line 115
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRefererUrl:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    .line 141
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 142
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    .line 143
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 144
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    .line 145
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

    .line 146
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 147
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    .line 148
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mEndpointerParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

    .line 149
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mActionParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/high16 v5, -0x4080

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSessionId:Ljava/lang/String;

    .line 66
    iput v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRequestId:I

    .line 69
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMode:I

    .line 71
    iput-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseLocation:Z

    .line 73
    iput-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseContactAuth:Z

    .line 80
    iput-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPartialTranscriptsEnabled:Z

    .line 83
    iput-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAlternatesEnabled:Z

    .line 90
    iput-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mClientApplicationId:Ljava/lang/String;

    .line 93
    iput-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageModel:Ljava/lang/String;

    .line 95
    iput-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRecognitionContext:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 98
    iput-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mCarDock:Z

    .line 101
    iput-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mWebSearchOnly:Z

    .line 103
    iput v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMultislotActionType:I

    .line 105
    iput-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMultislotActionSelectedSlot:Ljava/lang/String;

    .line 107
    iput v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMaxResults:I

    .line 109
    iput v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mNetworkType:I

    .line 111
    iput v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mNoiseLevel:F

    .line 113
    iput v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSnr:F

    .line 115
    iput-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRefererUrl:Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    .line 154
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 155
    .local v0, container:Lcom/google/android/voicesearch/VoiceSearchContainer;
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 156
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getPersonalizationPrefManager()Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    .line 157
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 158
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    .line 159
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLocationHelper()Lcom/google/android/voicesearch/LocationHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

    .line 160
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 161
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getCookieStore()Lcom/google/android/voicesearch/util/CookieStore;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    .line 162
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getSpeechTimeout()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSpeechTimeoutMillis:J

    .line 164
    new-instance v1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

    invoke-direct {v1, p0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mEndpointerParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

    .line 165
    new-instance v1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;

    invoke-direct {v1, p0, v3}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/android/voicesearch/speechservice/RecognitionParameters$1;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mActionParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;

    .line 166
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 175
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance v2, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mEndpointerParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

    .line 180
    new-instance v2, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Landroid/content/Intent;Lcom/google/android/voicesearch/speechservice/RecognitionParameters$1;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mActionParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;

    .line 182
    const-string v2, "android.speech.extras.RECOGNITION_CONTEXT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 184
    .local v1, recognitionContextBundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.speech.extra.ORIGIN"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRecognitionContext(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setRecognitionContext(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)V

    .line 188
    const-string v2, "android.speech.extra.ORIGIN"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setRefererUrl(Ljava/lang/String;)V

    .line 189
    const-string v2, "car_dock"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setCarDock(Z)V

    .line 190
    const-string v2, "useLocation"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setUseLocation(Z)V

    .line 191
    const-string v2, "contact_auth"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setUseContactAuth(Z)V

    .line 197
    const-string v2, "android.speech.action.WEB_SEARCH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.speech.extra.WEB_SEARCH_ONLY"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {p0, v6}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setWebSearchOnly(Z)V

    .line 206
    :goto_0
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setLanguageModel(Ljava/lang/String;)V

    .line 207
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setLanguageOverride(Ljava/lang/String;)V

    .line 209
    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.speech.action.ANALYZE_SPEECH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->markAsIntentApiMode()V

    .line 212
    const-string v2, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setMaxResults(I)V

    .line 213
    const-string v2, "calling_package"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, callingPackage:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    const-string v2, "RecognitionParameters"

    const-string v3, "required extra \'calling_package\' missing in voice search intent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing calling package in the intent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    .end local v0           #callingPackage:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setWebSearchOnly(Z)V

    goto :goto_0

    .line 219
    .restart local v0       #callingPackage:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setClientApplicationId(Ljava/lang/String;)V

    .line 220
    const-string v2, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setPartialTranscriptsEnabled(Z)V

    .line 222
    const-string v2, "android.speech.extra.ALTERNATES"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setAlternatesEnabled(Z)V

    .line 228
    .end local v0           #callingPackage:Ljava/lang/String;
    :goto_1
    const-string v2, "fullRecognitionResultsRequest"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAddFullRecognitionResult:Z

    .line 231
    const-string v2, "android.speech.extras.SPEECH_TIMEOUT_MILLIS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    const-string v2, "android.speech.extras.SPEECH_TIMEOUT_MILLIS"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSpeechTimeoutMillis:J

    .line 236
    :cond_3
    const-string v2, "android.speech.action.ANALYZE_SPEECH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mStoreRawAudio:Z

    .line 238
    const-string v2, "android.speech.extra.DICTATION_MODE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 239
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->markAsDictationMode()V

    .line 241
    :cond_4
    return-void

    .line 225
    :cond_5
    invoke-virtual {p0, v6}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setAlternatesEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public clearSession()V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSessionId:Ljava/lang/String;

    .line 467
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRequestId:I

    .line 468
    return-void
.end method

.method public getAlternateMaxSpanLength()I
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getAlternateMaxSpanLength()I

    move-result v0

    return v0
.end method

.method public getAlternateMaxTotalSpanLength()I
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getAlternateMaxTotalSpanLength()I

    move-result v0

    return v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isIntentApiMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isDictationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    const-string v0, "intent-speech-api"

    .line 289
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "voice-search"

    goto :goto_0
.end method

.method public getAudioEncoding()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAudioEncoding:I

    return v0
.end method

.method public getAudioSampleRate()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAudioSampleRate:I

    return v0
.end method

.method public getClientApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mClientApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->buildClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactAuthTokens()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseContactAuth:Z

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/util/AccountHelper;->getContactAuthTokens()[Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 4

    .prologue
    .line 341
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/util/CookieStore;->getCookie()J

    move-result-wide v0

    .line 342
    .local v0, cookie:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getEndpointerParam()Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mEndpointerParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

    return-object v0
.end method

.method public getExperimentHash()J
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/Experiments;->getExperimentHash(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGeoPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseLocation:Z

    if-nez v0, :cond_0

    .line 367
    const/4 v0, 0x0

    .line 369
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v0}, Lcom/google/android/voicesearch/LocationHelper;->getGeoPosition()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageOverride:Ljava/lang/String;

    .line 305
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLanguageModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageModel:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxResults()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMaxResults:I

    return v0
.end method

.method public getMofeHttpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getMofeHttpUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMofeProtoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getMofeProtoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultislotActionSelectedSlot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMultislotActionSelectedSlot:Ljava/lang/String;

    return-object v0
.end method

.method public getMultislotActionType()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMultislotActionType:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mNetworkType:I

    return v0
.end method

.method public getNoiseLevel()F
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mNoiseLevel:F

    return v0
.end method

.method public getRecognitionContext()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRecognitionContext:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRequestId:I

    return v0
.end method

.method public getRevClientId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "voicesearch_client_id"

    const-string v2, "unknown"

    invoke-static {v0, v1, v2}, Lcom/google/android/voicesearch/util/GoogleSettingsUtil;->getGooglePartnerString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSafeSearchSetting()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getSafeSearchSetting(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSnr()F
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSnr:F

    return v0
.end method

.method public getSpeechPersonalizationServiceAuthToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/util/AccountHelper;->getSpeechPersonalizationServiceAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, authToken:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->personalizationAuthTokenFailure()V

    .line 362
    :cond_0
    return-object v0
.end method

.method public getSpeechServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSpeechServerUrlOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSpeechServerUrlOverride:Ljava/lang/String;

    .line 397
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getSsfeUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedActionInterpretations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isWebSearchOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getAdvancedFeaturesEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    :cond_0
    invoke-static {}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->getBasicActions()Ljava/util/List;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->getAllActionTypes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->buildUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNoiseEstmation()Z
    .locals 2

    .prologue
    .line 442
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSnr:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public incrementRequestId()V
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRequestId:I

    .line 476
    return-void
.end method

.method public isAlternatesEnabled()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAlternatesEnabled:Z

    return v0
.end method

.method public isCarDock()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mCarDock:Z

    return v0
.end method

.method public isDictationMode()Z
    .locals 2

    .prologue
    .line 607
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIntentApiMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 595
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPartialTranscriptsEnabled()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPartialTranscriptsEnabled:Z

    return v0
.end method

.method public isPersonalizationEnabled()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isPersonalizationSet()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->isSet()Z

    move-result v0

    return v0
.end method

.method public isProfanityFilterEnabled()Z
    .locals 4

    .prologue
    .line 310
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    const-string v2, "VoiceSearchPreferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 312
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "profanityFilter"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isWebSearchOnly()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mWebSearchOnly:Z

    return v0
.end method

.method public markAsDictationMode()V
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMode:I

    .line 604
    return-void
.end method

.method public markAsIntentApiMode()V
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMode:I

    .line 600
    return-void
.end method

.method public setAlternatesEnabled(Z)V
    .locals 0
    .parameter "alternatesEnabled"

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAlternatesEnabled:Z

    .line 500
    return-void
.end method

.method public setAudioEncoding(I)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 503
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAudioEncoding:I

    .line 504
    return-void
.end method

.method public setAudioSampleRate(I)V
    .locals 0
    .parameter "sampleRate"

    .prologue
    .line 507
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAudioSampleRate:I

    .line 508
    return-void
.end method

.method public setCarDock(Z)V
    .locals 0
    .parameter "carDock"

    .prologue
    .line 523
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mCarDock:Z

    .line 524
    return-void
.end method

.method public setClientApplicationId(Ljava/lang/String;)V
    .locals 0
    .parameter "clientApplicationId"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mClientApplicationId:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public setLanguageModel(Ljava/lang/String;)V
    .locals 0
    .parameter "languageModel"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageModel:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public setLanguageOverride(Ljava/lang/String;)V
    .locals 0
    .parameter "languageOverride"

    .prologue
    .line 487
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageOverride:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public setMaxResults(I)V
    .locals 0
    .parameter "maxResults"

    .prologue
    .line 531
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMaxResults:I

    .line 532
    return-void
.end method

.method public setNetworkType(I)V
    .locals 0
    .parameter "networkType"

    .prologue
    .line 535
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mNetworkType:I

    .line 536
    return-void
.end method

.method public setNoiseLevel(F)V
    .locals 0
    .parameter "noiseLevel"

    .prologue
    .line 539
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mNoiseLevel:F

    .line 540
    return-void
.end method

.method public setPartialTranscriptsEnabled(Z)V
    .locals 0
    .parameter "partialTranscriptsEnabled"

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPartialTranscriptsEnabled:Z

    .line 496
    return-void
.end method

.method public setRecognitionContext(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)V
    .locals 0
    .parameter "recognitionContext"

    .prologue
    .line 519
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRecognitionContext:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 520
    return-void
.end method

.method public setRefererUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "refererUrl"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRefererUrl:Ljava/lang/String;

    .line 556
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionId"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSessionId:Ljava/lang/String;

    .line 472
    return-void
.end method

.method public setSnr(F)V
    .locals 0
    .parameter "snr"

    .prologue
    .line 543
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSnr:F

    .line 544
    return-void
.end method

.method public setUseContactAuth(Z)V
    .locals 0
    .parameter "useContactAuth"

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseContactAuth:Z

    .line 484
    return-void
.end method

.method public setUseLocation(Z)V
    .locals 0
    .parameter "useLocation"

    .prologue
    .line 479
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseLocation:Z

    .line 480
    return-void
.end method

.method public setWebSearchOnly(Z)V
    .locals 0
    .parameter "webSearchOnly"

    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mWebSearchOnly:Z

    .line 528
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecognitionParameters{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 621
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const-string v1, "request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 623
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 244
    iget-object v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRecognitionContext:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRecognitionContext:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 245
    iget-object v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRefererUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRefererUrl:Ljava/lang/String;

    .line 246
    iget-boolean v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mCarDock:Z

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mCarDock:Z

    .line 247
    iget-boolean v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseLocation:Z

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseLocation:Z

    .line 248
    iget-boolean v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseContactAuth:Z

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseContactAuth:Z

    .line 249
    iget-boolean v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mWebSearchOnly:Z

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mWebSearchOnly:Z

    .line 250
    iget-object v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageModel:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageModel:Ljava/lang/String;

    .line 251
    iget-object v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageOverride:Ljava/lang/String;

    .line 252
    iget v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMode:I

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMode:I

    .line 253
    iget v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMaxResults:I

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMaxResults:I

    .line 254
    iget-object v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mClientApplicationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mClientApplicationId:Ljava/lang/String;

    .line 255
    iget-boolean v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPartialTranscriptsEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPartialTranscriptsEnabled:Z

    .line 256
    iget-boolean v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAlternatesEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAlternatesEnabled:Z

    .line 257
    iget-object v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mEndpointerParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mEndpointerParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

    .line 258
    iget-object v0, p1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mActionParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mActionParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters$ActionParams;

    .line 260
    const/4 v0, 0x1

    return v0
.end method
