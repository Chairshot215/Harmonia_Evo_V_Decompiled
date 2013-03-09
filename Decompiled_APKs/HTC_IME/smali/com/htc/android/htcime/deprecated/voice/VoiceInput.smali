.class public Lcom/htc/android/htcime/deprecated/voice/VoiceInput;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final DEFAULT:I = 0x0

.field public static final ERROR:I = 0x3

.field private static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final EXTRA_RECOGNITION_CONTEXT:Ljava/lang/String; = "android.speech.extras.RECOGNITION_CONTEXT"

.field private static final EXTRA_SERVER_URL:Ljava/lang/String; = "android.speech.extras.SERVER_URL"

.field private static final EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

.field private static final EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

.field private static final EXTRA_SPEECH_MINIMUM_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

.field private static final INPUT_COMPLETE_SILENCE_LENGTH_DEFAULT_VALUE_MILLIS:Ljava/lang/String; = "1000"

.field public static final LISTENING:I = 0x1

.field private static final MAX_RECONG_NUM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VoiceInput"

.field public static final WORKING:I = 0x2


# instance fields
.field public final TYPED_SPAN:Landroid/text/style/BackgroundColorSpan;

.field mAlertDialog:Landroid/app/AlertDialog;

.field private mBlacklist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field private mIMEService:Lcom/htc/android/htcime/HTCIMEService;

.field private mLayoutLeftPadding:I

.field private mMaxLength:I

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

.field private mRecognized:Z

.field private mRecognizing:Z

.field private mServerUrl:Ljava/lang/String;

.field protected mSpanSB:Landroid/text/SpannableStringBuilder;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private mState:I

.field private mWhitelist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 4
    .parameter "service"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 86
    const-string v0, "http://gjm.google.com/speechservice-dev?sky=rad"

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mServerUrl:Ljava/lang/String;

    .line 87
    iput-boolean v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognizing:Z

    .line 90
    iput-boolean v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognized:Z

    .line 113
    iput v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mState:I

    .line 116
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mMaxLength:I

    .line 117
    iput v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mLayoutLeftPadding:I

    .line 573
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    sget v1, Lcom/htc/android/htcime/HTCIMMData;->IMM_COLOR_SELECTION:I

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->TYPED_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 120
    iput-object p1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    .line 121
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mContext:Landroid/content/Context;

    .line 122
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 124
    new-instance v0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$IMERecognitionListener;-><init>(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;Lcom/htc/android/htcime/deprecated/voice/VoiceInput$1;)V

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 131
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 132
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 133
    new-instance v0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    .line 135
    new-instance v0, Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    invoke-direct {v0}, Lcom/htc/android/htcime/deprecated/voice/Whitelist;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mWhitelist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    .line 136
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mWhitelist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    const-string v1, "com.amazon.mp3"

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mWhitelist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mWhitelist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mWhitelist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mWhitelist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    const-string v1, "fm.last.android"

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mWhitelist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mWhitelist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    const-string v1, "com.android.music"

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mWhitelist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    const-string v1, "org.freedictionary"

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mWhitelist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    const-string v1, "com.yellowbook.android2"

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mWhitelist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    const-string v1, "com.imeem.gynoid"

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    invoke-direct {v0}, Lcom/htc/android/htcime/deprecated/voice/Whitelist;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mBlacklist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    .line 148
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mBlacklist:Lcom/htc/android/htcime/deprecated/voice/Whitelist;

    const-string v1, "com.android.launcher"

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 152
    iput-boolean v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognizing:Z

    .line 153
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mSpanSB:Landroid/text/SpannableStringBuilder;

    .line 154
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)Lcom/htc/android/htcime/deprecated/voice/RecognitionView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->onError(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->closeDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)Lcom/htc/android/htcime/HTCIMEService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognized:Z

    return p1
.end method

.method static synthetic access$702(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognizing:Z

    return p1
.end method

.method private closeDialog()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 492
    :cond_0
    return-void
.end method

.method private getErrorStringId(IZ)I
    .locals 1
    .parameter "errorType"
    .parameter "endpointed"

    .prologue
    const v0, 0x7f09007e

    .line 407
    packed-switch p1, :pswitch_data_0

    .line 424
    const v0, 0x7f09007d

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 410
    :pswitch_1
    const v0, 0x7f090084

    goto :goto_0

    .line 414
    :pswitch_2
    if-nez p2, :cond_0

    const v0, 0x7f09007f

    goto :goto_0

    .line 417
    :pswitch_3
    const v0, 0x7f090080

    goto :goto_0

    .line 419
    :pswitch_4
    const v0, 0x7f090081

    goto :goto_0

    .line 421
    :pswitch_5
    const v0, 0x7f090082

    goto :goto_0

    .line 423
    :pswitch_6
    const v0, 0x7f090083

    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static makeIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "1.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "com.google.android.voiceservice"

    const-string v2, "com.google.android.voiceservice.IMERecognitionService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 176
    :cond_0
    const-string v1, "com.google.android.voicesearch"

    const-string v2, "com.google.android.voicesearch.RecognitionService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private onError(IZ)V
    .locals 2
    .parameter "errorType"
    .parameter "endpointed"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->getErrorStringId(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->onError(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .locals 5
    .parameter "error"

    .prologue
    const/4 v3, 0x3

    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mMaxLength:I

    if-le v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    iget v1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mLayoutLeftPadding:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->setTextMarginLayout(II)V

    .line 380
    :goto_0
    iput v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mState:I

    .line 381
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->showError(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$1;-><init>(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)V

    const-wide/16 v2, 0x5dc

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 387
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->setTextMarginLayout(II)V

    goto :goto_0
.end method

.method private putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "cr"
    .parameter "i"
    .parameter "gservicesKey"
    .parameter "intentExtraKey"
    .parameter "defaultValue"

    .prologue
    .line 354
    const-wide/16 v1, -0x1

    .line 355
    .local v1, l:J
    invoke-static {p1, p3, p5}, Lcom/htc/android/htcime/deprecated/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 358
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 364
    :cond_0
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, p4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 365
    :cond_1
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "VoiceInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not parse value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDialog()V
    .locals 4

    .prologue
    .line 455
    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_0

    .line 456
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 457
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 458
    new-instance v3, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$2;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput$2;-><init>(Lcom/htc/android/htcime/deprecated/voice/VoiceInput;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 472
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 474
    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 476
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mAlertDialog:Landroid/app/AlertDialog;

    .line 477
    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 478
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 479
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 480
    const/16 v3, 0x3eb

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 481
    const/16 v3, 0x200

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 482
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 483
    const/high16 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 485
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #window:Landroid/view/Window;
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 486
    return-void
.end method

.method private startListeningAfterInitialization(Lcom/htc/android/htcime/deprecated/voice/FieldContext;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 311
    invoke-static {}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 312
    .local v2, intent:Landroid/content/Intent;
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string v0, "android.speech.extras.RECOGNITION_CONTEXT"

    invoke-virtual {p1}, Lcom/htc/android/htcime/deprecated/voice/FieldContext;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 314
    const-string v0, "calling_package"

    const-string v3, "VoiceIME"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v0, "android.speech.extra.MAX_RESULTS"

    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "latin_ime_max_voice_results"

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/htc/android/htcime/deprecated/voice/SettingsUtil;->getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 324
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "latin_ime_speech_minimum_length_millis"

    const-string v4, "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v9, "latin_ime_speech_input_complete_silence_length_millis"

    const-string v10, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    const-string v11, "1000"

    move-object v6, p0

    move-object v7, v1

    move-object v8, v2

    invoke-direct/range {v6 .. v11}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v3, "latin_ime_speech_input_possibly_complete_silence_length_millis"

    const-string v4, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v2}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 346
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 544
    iput v4, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mState:I

    .line 547
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 548
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 551
    .end local v1           #runnable:Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v2}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 552
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->closeDialog()V

    .line 553
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->finish()V

    .line 554
    :cond_2
    iget-boolean v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognized:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 555
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->finishComposingText()V

    .line 556
    :cond_3
    iput-boolean v4, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognized:Z

    .line 558
    :cond_4
    iput-boolean v4, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognizing:Z

    .line 559
    return-void
.end method

.method public clearResultFlag()V
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognized:Z

    .line 569
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    .line 450
    return-void
.end method

.method public getResultFlag()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognized:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 495
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 500
    :goto_0
    return-void

    .line 497
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->cancel()V

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x7f0e004f
        :pswitch_0
    .end packed-switch
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "serverUrl"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mServerUrl:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public startListening(Lcom/htc/android/htcime/deprecated/voice/FieldContext;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 193
    iput v5, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mState:I

    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 196
    .local v0, locale:Ljava/util/Locale;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, localeString:Ljava/lang/String;
    iput v6, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mState:I

    .line 203
    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v3, v6, :cond_1

    .line 204
    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mLayoutLeftPadding:I

    .line 205
    const/16 v3, 0x14

    iput v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mMaxLength:I

    .line 211
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->showDialog()V

    .line 213
    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    const/16 v4, 0x11

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->setTextMarginLayout(II)V

    .line 214
    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/htc/android/htcime/deprecated/voice/RecognitionView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->showInitializing()V

    .line 215
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->startListeningAfterInitialization(Lcom/htc/android/htcime/deprecated/voice/FieldContext;)V

    .line 218
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_UserProfilingLog:Z

    if-eqz v3, :cond_0

    .line 219
    new-instance v2, Lcom/htc/android/htcime/util/ULogUtil;

    invoke-direct {v2}, Lcom/htc/android/htcime/util/ULogUtil;-><init>()V

    .line 220
    .local v2, ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    const-string v3, "voice_key"

    const-string v4, "voice_key"

    const-string v5, "1"

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/htcime/util/ULogUtil;->writeSinglePairULogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v2           #ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    :cond_0
    return-void

    .line 208
    :cond_1
    const/16 v3, 0x1e

    iput v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mMaxLength:I

    .line 209
    iget-object v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->mLayoutLeftPadding:I

    goto :goto_0
.end method
