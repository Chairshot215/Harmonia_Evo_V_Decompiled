.class public Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;
.super Ljava/lang/Object;
.source "VoiceRecognitionDelegate.java"


# static fields
.field private static DEBUG:Z


# instance fields
.field private mDictationListener:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;

.field private mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

.field private mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter "inputMethodService"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 57
    return-void
.end method

.method private createRecognitionContext()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 117
    .local v0, editorInfo:Landroid/view/inputmethod/EditorInfo;
    if-nez v0, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 120
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->newBuilder()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/google/android/voicesearch/util/TextUtil;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setLabel(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/google/android/voicesearch/util/TextUtil;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setHint(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/voicesearch/util/TextUtil;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v1

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/voicesearch/util/TextUtil;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setFieldId(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/voicesearch/util/TextUtil;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setFieldName(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v1

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setInputType(I)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v1

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setImeOptions(I)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->isSingleLine()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setSingleLine(Z)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->build()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v1

    goto :goto_0
.end method

.method private createRecognitionParams(Ljava/lang/String;)Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    .locals 3
    .parameter "dictationLanguage"

    .prologue
    const/4 v2, 0x1

    .line 93
    new-instance v0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setLanguageModel(Ljava/lang/String;)V

    .line 95
    const-string v1, "VoiceIME"

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setClientApplicationId(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->markAsDictationMode()V

    .line 97
    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setPartialTranscriptsEnabled(Z)V

    .line 98
    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setMaxResults(I)V

    .line 99
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->isSuggestionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setAlternatesEnabled(Z)V

    .line 100
    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setLanguageOverride(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->createRecognitionContext()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setRecognitionContext(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)V

    .line 104
    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setUseContactAuth(Z)V

    .line 106
    return-object v0
.end method

.method private isSingleLine()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 134
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    new-instance v3, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v3}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 139
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 142
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isSuggestionEnabled()Z
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 111
    .local v0, editorInfo:Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroyRecognitionController()V
    .locals 2

    .prologue
    .line 154
    sget-boolean v0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "VoiceRecognitionDelegate"

    const-string v1, "#destroyRecognitionController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mDictationListener:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->invalidate()V

    .line 159
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->releaseMicrophone()V

    .line 160
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->releaseNetworking()V

    .line 161
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->destroy()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    .line 164
    :cond_1
    return-void
.end method

.method public getRecognitionParameters()Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    return-object v0
.end method

.method public notifyAudioEndpointed()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->notifyAudioEndpointed()V

    .line 211
    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 2

    .prologue
    .line 170
    sget-boolean v0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "VoiceRecognitionDelegate"

    const-string v1, "onFinishInput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mDictationListener:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mDictationListener:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->hasResultReceived()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mDictationListener:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->stopRecognition(Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->destroyRecognitionController()V

    .line 182
    return-void
.end method

.method public startRecognitionController(Ljava/lang/String;Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;)V
    .locals 7
    .parameter "dictationLanguage"
    .parameter "dictationListener"

    .prologue
    .line 67
    sget-boolean v1, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "VoiceRecognitionDelegate"

    const-string v2, "startRecognitionController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 71
    .local v0, container:Lcom/google/android/voicesearch/VoiceSearchContainer;
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mDictationListener:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mDictationListener:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->invalidate()V

    .line 74
    :cond_1
    iput-object p2, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mDictationListener:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;

    .line 76
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    if-nez v1, :cond_2

    .line 77
    const-string v1, "VoiceRecognitionDelegate"

    const-string v2, "Create new recognition controller"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    iget-object v2, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v3

    new-instance v4, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    iget-object v5, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v4, v5}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;

    iget-object v6, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v5, v6}, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/ServerConnector;Lcom/google/android/voicesearch/speechservice/MicrophoneManager;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    .line 85
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->createRecognitionParams(Ljava/lang/String;)Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 86
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    iget-object v2, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v3, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mDictationListener:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;

    invoke-interface {v1, v2, v3}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->startListening(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V

    .line 87
    return-void

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->releaseNetworking()V

    goto :goto_0
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mDictationListener:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->stopListening(Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->mDictationListener:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;->invalidate()V

    .line 192
    :cond_0
    return-void
.end method
