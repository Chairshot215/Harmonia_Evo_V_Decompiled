.class public Lcom/htc/fusion/fx/controls/TextInputWorker;
.super Ljava/lang/Object;
.source "TextInputWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;,
        Lcom/htc/fusion/fx/controls/TextInputWorker$GetTextCreator;,
        Lcom/htc/fusion/fx/controls/TextInputWorker$GetTextWorker;,
        Lcom/htc/fusion/fx/controls/TextInputWorker$BooleanFieldWrapperCreator;,
        Lcom/htc/fusion/fx/controls/TextInputWorker$BooleanFieldWrapperWorker;,
        Lcom/htc/fusion/fx/controls/TextInputWorker$IntegerFieldWrapperCreator;,
        Lcom/htc/fusion/fx/controls/TextInputWorker$IntegerFieldWrapperWorker;,
        Lcom/htc/fusion/fx/controls/TextInputWorker$StringFieldWrapperCreator;,
        Lcom/htc/fusion/fx/controls/TextInputWorker$StringFieldWrapperWorker;,
        Lcom/htc/fusion/fx/controls/TextInputWorker$GetKeyListenerCreator;,
        Lcom/htc/fusion/fx/controls/TextInputWorker$GetKeyListenerWorker;,
        Lcom/htc/fusion/fx/controls/TextInputWorker$SIPReceiver;
    }
.end annotation


# static fields
.field public static final IME_CURRENT_STATE:Ljava/lang/String; = "HTC_IME_CURRENT_STATE"

.field private static final mTextInputSizeExtendabled:Z


# instance fields
.field private mCapOption:Landroid/text/method/TextKeyListener$Capitalize;

.field private mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

.field private mEditTextInitialHeight:F

.field private mEditTextInitialScale:Z

.field private mEditTextInitialWidth:F

.field private mExitInputModeTimer:Landroid/os/CountDownTimer;

.field private mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mHitboxExpandHeight:F

.field private mHitboxExpandWidth:F

.field private mHitboxInitialScaleHeight:F

.field private mHitboxInitialScaleWidth:F

.field private mHitboxListener:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mHitboxMoveListener:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mHitboxScaled:Z

.field private mInitialized:Z

.field private mInputType:I

.field private mScreenshot:Landroid/graphics/Bitmap;

.field private mStreamingTexture:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

.field private mTempTouchEventHandling:Z

.field private mTextEditEnabled:Z

.field private mTextGravity:I

.field private mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

.field private mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

.field private mTextInputWorker:Lcom/htc/fusion/fx/controls/TextInputWorker;

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private sipReceiver:Lcom/htc/fusion/fx/controls/TextInputWorker$SIPReceiver;


# direct methods
.method protected constructor <init>(Lcom/htc/fusion/fx/controls/FxTextInput;Lcom/htc/fusion/fx/controls/FxHitbox;Lcom/htc/fusion/fx/controls/FxStreamingTexture;Landroid/view/View;Lcom/htc/fusion/fx/controls/TextInputInfo;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    iput-object p3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mStreamingTexture:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mView:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput-object p0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputWorker:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iput-boolean v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    iput-boolean v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextEditEnabled:Z

    iput-boolean v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTempTouchEventHandling:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/fusion/fx/controls/TextInputWorker;FFZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fusion/fx/controls/TextInputWorker;->initialize_OnUiThread(FFZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/fusion/fx/controls/TextInputWorker;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->enterInputMode_OnUiThread(FF)V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/fusion/fx/controls/TextInputWorker;Lcom/htc/fusion/fx/controls/TextInputStreaming;)Lcom/htc/fusion/fx/controls/TextInputStreaming;
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/fusion/fx/controls/TextInputWorker;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->updateTextScreenPosition_OnUiThread(FF)V

    return-void
.end method

.method static synthetic access$1202(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/fusion/fx/controls/TextInputWorker;)Landroid/text/method/TextKeyListener$Capitalize;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mCapOption:Landroid/text/method/TextKeyListener$Capitalize;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->getStringFieldWrapperInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->getIntegerFieldWrapperInternal(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->getBooleanFieldWrapperInternal(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/fusion/fx/controls/TextInputWorker;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mExitInputModeTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mExitInputModeTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/FxTextInput;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputWorker;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputWorker:Lcom/htc/fusion/fx/controls/TextInputWorker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/FxHitbox;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/widget/EditText;Lcom/htc/fusion/fx/controls/FxHitbox;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->scaleHitboxWithEditText(Landroid/widget/EditText;Lcom/htc/fusion/fx/controls/FxHitbox;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/fusion/fx/controls/TextInputWorker;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->exitInputMode_OnUiThread()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/fusion/fx/controls/TextInputWorker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTempTouchEventHandling:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTempTouchEventHandling:Z

    return p1
.end method

.method private bindMessageListener(Z)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "TextInputWorker"

    const-string v2, "javaview is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitboxListener:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$5;

    invoke-direct {v1, p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker$5;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/view/View;)V

    iput-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitboxListener:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;

    :cond_1
    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitboxMoveListener:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;

    if-nez v1, :cond_2

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$6;

    invoke-direct {v1, p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker$6;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/view/View;)V

    iput-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitboxMoveListener:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;

    :cond_2
    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v1, :cond_3

    const-string v1, "TextInputWorker"

    const-string v2, "mHitbox is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitboxListener:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->getMoveEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitboxMoveListener:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitboxListener:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->getMoveEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitboxMoveListener:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    goto :goto_0
.end method

.method private cleanupStreamingTexture()Z
    .locals 7

    const-string v4, "TextInputWorker"

    const-string v5, "cleanupStreamingTexture"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mStreamingTexture:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxStreamingTexture;->demote()Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v4, "TextInputWorker"

    const-string v5, "Failed to demote texture"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/TimeoutException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "TextInputWorker"

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v4}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "TextInputWorker"

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ExecutionException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "TextInputWorker"

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createEditText_OnUiThread()Lcom/htc/fusion/fx/controls/TextInputStreaming;
    .locals 3

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/fusion/fx/controls/TextInputStreaming;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enterInputMode_OnUiThread(FF)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isTextEditEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TextInputWorker"

    const-string v1, "enterInputMode in the Java side, on UI thread!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->setTextEditEnabled(Z)V

    invoke-direct {p0, p1, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->updateTextScreenPosition_OnUiThread(FF)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->enableStreamingTexture()V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->showSoftInput()V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->cursorVisible:Z

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v0, :cond_1

    const-string v0, "TextInputWorker"

    const-string v1, "mHitbox is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditTextInitialScale:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditTextInitialWidth:F

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditTextInitialHeight:F

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getScaleWidth()F

    move-result v0

    iput v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitboxInitialScaleWidth:F

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getScaleHeight()F

    move-result v0

    iput v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitboxInitialScaleHeight:F

    iput-boolean v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditTextInitialScale:Z

    :cond_2
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-direct {p0, v0, v1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->scaleHitboxWithEditText(Landroid/widget/EditText;Lcom/htc/fusion/fx/controls/FxHitbox;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitboxScaled:Z

    goto :goto_0
.end method

.method private exitInputMode_OnUiThread()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isTextEditEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TextInputWorker"

    const-string v1, "exitInputMode in the Java side!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->setTextEditEnabled(Z)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->hideSoftInput()V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v0, :cond_1

    const-string v0, "TextInputWorker"

    const-string v1, "mHitbox is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->cancelLongPress()V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->disableStreamingTexture()V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->clearFocus()V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxTextInput;->exitInputMode()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-direct {p0, v0, v1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->scaleHitboxWithEditText(Landroid/widget/EditText;Lcom/htc/fusion/fx/controls/FxHitbox;)Z

    goto :goto_0
.end method

.method private getBooleanFieldWrapperInternal(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "CursorVisible"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->cursorVisible:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SelectAllOnFocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->selectAllOnFocus:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "EnableAutoText"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->autoText:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "Ellipsis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->ellipsis:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "TextInputWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported Boolean Field!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIntegerFieldWrapperInternal(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    const-string v0, "MaxLength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->maxlength:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "InputType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInputType:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_1
    const-string v0, "SelectionStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getSelectionStart()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_2
    const-string v0, "SelectionEnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getSelectionEnd()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_3
    const-string v0, "CursorPosition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getSelectionStart()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_4
    const-string v0, "LineCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isTextEditEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "TextInputWorker"

    const-string v1, "EditText is not in the layout yet, getLineCount will return 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getLineCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_6
    const-string v0, "PaddingLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getPaddingLeft()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "PaddingTop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getPaddingTop()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "PaddingRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getPaddingRight()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "PaddingBottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getPaddingBottom()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "MaxWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->maxSizeWidth:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "MaxHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->maxSizeHeight:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "Typeface"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->typeface:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "TextSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->textSize:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "HorizontalAlign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->horizonalAlignment:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "VerticalAlign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->verticalAlignment:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "TextColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->textColor:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "HintTextColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->hintTextColor:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "TextInputWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported Integer Field!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getStringFieldWrapperInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "Text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HintText"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->hint:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "SelectedString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "TextInputWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported String Field!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initStreamingTexture()Z
    .locals 7

    const-string v4, "TextInputWorker"

    const-string v5, "initStreamingTexture"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mStreamingTexture:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxStreamingTexture;->promote(Z)Ljava/util/concurrent/Future;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v4, "TextInputWorker"

    const-string v5, "Failed to promote texture"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/TimeoutException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "TextInputWorker"

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v4}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "TextInputWorker"

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ExecutionException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "TextInputWorker"

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initialize_OnUiThread(FFZ)V
    .locals 10

    iget-boolean v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    invoke-virtual {p0, p3}, Lcom/htc/fusion/fx/controls/TextInputWorker;->setTextEditEnabled(Z)V

    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInputType:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextGravity:I

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput p1, v5, Lcom/htc/fusion/fx/controls/TextInputInfo;->positionX:F

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput p2, v5, Lcom/htc/fusion/fx/controls/TextInputInfo;->positionY:F

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->createEditText_OnUiThread()Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_1

    const-string v5, "TextInputWorker"

    const-string v6, "javaview is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v2, v3

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->updateTextScreenPosition_OnUiThread(FF)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->sizeWidth:I

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setWidth(I)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->sizeHeight:I

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setHeight(I)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v5, v5, Lcom/htc/fusion/fx/controls/TextInputInfo;->maxSizeWidth:I

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->sizeWidth:I

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setMinWidth(I)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->maxSizeWidth:I

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setMaxWidth(I)V

    :cond_2
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v5, v5, Lcom/htc/fusion/fx/controls/TextInputInfo;->maxSizeHeight:I

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->sizeHeight:I

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setMinHeight(I)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->maxSizeHeight:I

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setMaxHeight(I)V

    :cond_3
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v5, v5, Lcom/htc/fusion/fx/controls/TextInputInfo;->horizonalAlignment:I

    packed-switch v5, :pswitch_data_0

    :goto_1
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v5, v5, Lcom/htc/fusion/fx/controls/TextInputInfo;->verticalAlignment:I

    packed-switch v5, :pswitch_data_1

    :goto_2
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextGravity:I

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setGravity(I)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->textSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setTextSize(F)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v5, v5, Lcom/htc/fusion/fx/controls/TextInputInfo;->typeface:I

    packed-switch v5, :pswitch_data_2

    :goto_3
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->typeStyle:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v4, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v5, v5, Lcom/htc/fusion/fx/controls/TextInputInfo;->maxlength:I

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/text/InputFilter;

    const/4 v7, 0x0

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    iget-object v9, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v9, v9, Lcom/htc/fusion/fx/controls/TextInputInfo;->maxlength:I

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setFilters([Landroid/text/InputFilter;)V

    :cond_4
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v5, v5, Lcom/htc/fusion/fx/controls/TextInputInfo;->ellipsis:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_5
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v5, v5, Lcom/htc/fusion/fx/controls/TextInputInfo;->capitalize:I

    packed-switch v5, :pswitch_data_3

    sget-object v5, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    iput-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mCapOption:Landroid/text/method/TextKeyListener$Capitalize;

    :goto_4
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v5, v5, Lcom/htc/fusion/fx/controls/TextInputInfo;->inputType:I

    packed-switch v5, :pswitch_data_4

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    new-instance v6, Landroid/text/method/TextKeyListener;

    iget-object v7, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mCapOption:Landroid/text/method/TextKeyListener$Capitalize;

    iget-object v8, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v8, v8, Lcom/htc/fusion/fx/controls/TextInputInfo;->autoText:Z

    invoke-direct {v6, v7, v8}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setKeyListener(Landroid/text/method/KeyListener;)V

    :goto_5
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->cursorVisible:Z

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setCursorVisible(Z)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->selectAllOnFocus:Z

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setSelectAllOnFocus(Z)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-object v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->hint:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->textColor:I

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setTextColor(I)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->hintTextColor:I

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setHintTextColor(I)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->paddingLeft:I

    iget-object v7, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v7, v7, Lcom/htc/fusion/fx/controls/TextInputInfo;->paddingTop:I

    iget-object v8, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v8, v8, Lcom/htc/fusion/fx/controls/TextInputInfo;->paddingRight:I

    iget-object v9, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v9, v9, Lcom/htc/fusion/fx/controls/TextInputInfo;->paddingBottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setPadding(IIII)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v5, v5, Lcom/htc/fusion/fx/controls/TextInputInfo;->backgroundTransparent:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setBackgroundColor(I)V

    :goto_6
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v5, v5, Lcom/htc/fusion/fx/controls/TextInputInfo;->sizeWidth:I

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->sizeHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mScreenshot:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mStreamingTexture:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    iget-object v7, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    iget-object v8, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setTexture(Lcom/htc/fusion/fx/controls/FxStreamingTexture;Lcom/htc/fusion/fx/controls/FxTextInput;Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->initStreamingTexture()Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "TextInputWorker"

    const-string v6, "initStreamingTexture failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz p3, :cond_9

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->enableStreamingTexture()V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->cursorVisible:Z

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setCursorVisible(Z)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->requestFocus()Z

    :goto_7
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->sipReceiver:Lcom/htc/fusion/fx/controls/TextInputWorker$SIPReceiver;

    if-nez v5, :cond_7

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "HTC_IME_CURRENT_STATE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v5, Lcom/htc/fusion/fx/controls/TextInputWorker$SIPReceiver;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-direct {v5, v6, p0}, Lcom/htc/fusion/fx/controls/TextInputWorker$SIPReceiver;-><init>(Landroid/view/View;Lcom/htc/fusion/fx/controls/TextInputWorker;)V

    iput-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->sipReceiver:Lcom/htc/fusion/fx/controls/TextInputWorker$SIPReceiver;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->sipReceiver:Lcom/htc/fusion/fx/controls/TextInputWorker$SIPReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_7
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    new-instance v6, Lcom/htc/fusion/fx/controls/TextInputWorker$2;

    invoke-direct {v6, p0}, Lcom/htc/fusion/fx/controls/TextInputWorker$2;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;)V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    new-instance v6, Lcom/htc/fusion/fx/controls/TextInputWorker$3;

    invoke-direct {v6, p0}, Lcom/htc/fusion/fx/controls/TextInputWorker$3;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;)V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v5, 0x3c23d70a

    const v6, 0x3c23d70a

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v5, v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/fusion/fx/controls/TextInputWorker;->bindMessageListener(Z)V

    goto/16 :goto_0

    :pswitch_0
    iget v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextGravity:I

    or-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextGravity:I

    goto/16 :goto_1

    :pswitch_1
    iget v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextGravity:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextGravity:I

    goto/16 :goto_1

    :pswitch_2
    iget v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextGravity:I

    or-int/lit8 v5, v5, 0x5

    iput v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextGravity:I

    goto/16 :goto_1

    :pswitch_3
    iget v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextGravity:I

    or-int/lit8 v5, v5, 0x30

    iput v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextGravity:I

    goto/16 :goto_2

    :pswitch_4
    iget v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextGravity:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextGravity:I

    goto/16 :goto_2

    :pswitch_5
    iget v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextGravity:I

    or-int/lit8 v5, v5, 0x50

    iput v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextGravity:I

    goto/16 :goto_2

    :pswitch_6
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto/16 :goto_3

    :pswitch_7
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto/16 :goto_3

    :pswitch_8
    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto/16 :goto_3

    :pswitch_9
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto/16 :goto_3

    :pswitch_a
    sget-object v5, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    iput-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mCapOption:Landroid/text/method/TextKeyListener$Capitalize;

    goto/16 :goto_4

    :pswitch_b
    sget-object v5, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    iput-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mCapOption:Landroid/text/method/TextKeyListener$Capitalize;

    goto/16 :goto_4

    :pswitch_c
    sget-object v5, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    iput-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mCapOption:Landroid/text/method/TextKeyListener$Capitalize;

    goto/16 :goto_4

    :pswitch_d
    sget-object v5, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    iput-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mCapOption:Landroid/text/method/TextKeyListener$Capitalize;

    goto/16 :goto_4

    :pswitch_e
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    new-instance v6, Landroid/text/method/TextKeyListener;

    iget-object v7, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mCapOption:Landroid/text/method/TextKeyListener$Capitalize;

    iget-object v8, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v8, v8, Lcom/htc/fusion/fx/controls/TextInputInfo;->autoText:Z

    invoke-direct {v6, v7, v8}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_5

    :pswitch_f
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    new-instance v6, Landroid/text/method/QwertyKeyListener;

    iget-object v7, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mCapOption:Landroid/text/method/TextKeyListener$Capitalize;

    iget-object v8, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v8, v8, Lcom/htc/fusion/fx/controls/TextInputInfo;->autoText:Z

    invoke-direct {v6, v7, v8}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_5

    :pswitch_10
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_5

    :pswitch_11
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    new-instance v6, Landroid/text/method/DateKeyListener;

    invoke-direct {v6}, Landroid/text/method/DateKeyListener;-><init>()V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_5

    :pswitch_12
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    new-instance v6, Landroid/text/method/TimeKeyListener;

    invoke-direct {v6}, Landroid/text/method/TimeKeyListener;-><init>()V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_5

    :pswitch_13
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    new-instance v6, Landroid/text/method/DateTimeKeyListener;

    invoke-direct {v6}, Landroid/text/method/DateTimeKeyListener;-><init>()V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_5

    :pswitch_14
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    new-instance v6, Landroid/text/method/DialerKeyListener;

    invoke-direct {v6}, Landroid/text/method/DialerKeyListener;-><init>()V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_5

    :pswitch_15
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    new-instance v6, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v6}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto/16 :goto_5

    :cond_8
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v6, v6, Lcom/htc/fusion/fx/controls/TextInputInfo;->backgroundColor:I

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setBackgroundColor(I)V

    goto/16 :goto_6

    :cond_9
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setCursorVisible(Z)V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->disableStreamingTexture()V

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxTextInput;->exitInputMode()V

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private invokeOnUiThread(Ljava/lang/Runnable;)V
    .locals 4

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isCallingOnUiThread()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string v2, "TextInputWorker"

    const-string v3, "handler is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "TextInputWorker"

    const-string v3, "javaview is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCallingOnUiThread()Z
    .locals 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private scaleHitboxWithEditText(Landroid/widget/EditText;Lcom/htc/fusion/fx/controls/FxHitbox;)Z
    .locals 11

    const/high16 v7, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v9, 0x3f80

    const/high16 v8, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/EditText;->getWidth()I

    move-result v10

    int-to-float v5, v10

    invoke-virtual {p1}, Landroid/widget/EditText;->getHeight()I

    move-result v10

    int-to-float v4, v10

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x1

    return v10
.end method

.method private updateTextScreenPosition_OnUiThread(FF)V
    .locals 4

    const-string v2, "TextInputWorker"

    const-string v3, "updateTextScreenPosition in the Java side, on UI thread!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v2, v2, Lcom/htc/fusion/fx/controls/TextInputInfo;->sizeWidth:I

    iget-object v3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v3, v3, Lcom/htc/fusion/fx/controls/TextInputInfo;->sizeHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x33

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    float-to-int v2, p1

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    float-to-int v2, p2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->invalidate()V

    :goto_0
    return-void

    :cond_0
    const-string v2, "TextInputWorker"

    const-string v3, "javaview == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$50;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$50;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/text/TextWatcher;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$51;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$51;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/text/TextWatcher;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$54;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$54;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$55;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$55;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$56;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/fusion/fx/controls/TextInputWorker$56;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/CharSequence;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$57;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/fusion/fx/controls/TextInputWorker$57;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/CharSequence;II)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public containAndroidView(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enterInputMode(FF)V
    .locals 4

    :try_start_0
    iget-boolean v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->initialize(FFZ)V

    :cond_0
    new-instance v2, Lcom/htc/fusion/fx/controls/TextInputWorker$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker$11;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;FF)V

    invoke-direct {p0, v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v2, "TextInputWorker"

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public equalsView(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public exitInputMode()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->initialize(Z)V

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$10;

    invoke-direct {v0, p0}, Lcom/htc/fusion/fx/controls/TextInputWorker$10;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getIntFieldViewWrapper(Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/fusion/fx/controls/TextInputWorker;->initialize(Z)V

    :cond_0
    new-instance v4, Lcom/htc/fusion/fx/controls/TextInputWorker$IntegerFieldWrapperWorker;

    invoke-direct {v4, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$IntegerFieldWrapperWorker;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$IntegerFieldWrapperCreator;

    invoke-direct {v0, p0, v4}, Lcom/htc/fusion/fx/controls/TextInputWorker$IntegerFieldWrapperCreator;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/util/concurrent/Callable;)V

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isCallingOnUiThread()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->getIntegerFieldWrapperInternal(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_1
    :goto_0
    return v5

    :cond_2
    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker$IntegerFieldWrapperCreator;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_3
    const-string v6, "TextInputWorker"

    const-string v7, "handler is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v6, "TextInputWorker"

    const-string v7, "javaview is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getKeyListener()Landroid/text/method/KeyListener;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/fusion/fx/controls/TextInputWorker;->initialize(Z)V

    :cond_0
    new-instance v4, Lcom/htc/fusion/fx/controls/TextInputWorker$GetKeyListenerWorker;

    invoke-direct {v4, p0, v3}, Lcom/htc/fusion/fx/controls/TextInputWorker$GetKeyListenerWorker;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Lcom/htc/fusion/fx/controls/TextInputWorker$1;)V

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$GetKeyListenerCreator;

    invoke-direct {v0, p0, v4}, Lcom/htc/fusion/fx/controls/TextInputWorker$GetKeyListenerCreator;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/util/concurrent/Callable;)V

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isCallingOnUiThread()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker$GetKeyListenerCreator;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/method/KeyListener;

    goto :goto_0

    :cond_2
    const-string v5, "TextInputWorker"

    const-string v6, "handler is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v5, "TextInputWorker"

    const-string v6, "javaview is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStringFieldViewWrapper(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/fusion/fx/controls/TextInputWorker;->initialize(Z)V

    :cond_0
    new-instance v3, Lcom/htc/fusion/fx/controls/TextInputWorker$StringFieldWrapperWorker;

    invoke-direct {v3, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$StringFieldWrapperWorker;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$StringFieldWrapperCreator;

    invoke-direct {v0, p0, v3}, Lcom/htc/fusion/fx/controls/TextInputWorker$StringFieldWrapperCreator;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/util/concurrent/Callable;)V

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isCallingOnUiThread()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->getStringFieldWrapperInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker$StringFieldWrapperCreator;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v5, "TextInputWorker"

    const-string v6, "handler is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v5, "TextInputWorker"

    const-string v6, "javaview is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getText()Landroid/text/Editable;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/fusion/fx/controls/TextInputWorker;->initialize(Z)V

    :cond_0
    new-instance v4, Lcom/htc/fusion/fx/controls/TextInputWorker$GetTextWorker;

    invoke-direct {v4, p0, v1}, Lcom/htc/fusion/fx/controls/TextInputWorker$GetTextWorker;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Lcom/htc/fusion/fx/controls/TextInputWorker$1;)V

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$GetTextCreator;

    invoke-direct {v0, p0, v4}, Lcom/htc/fusion/fx/controls/TextInputWorker$GetTextCreator;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/util/concurrent/Callable;)V

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isCallingOnUiThread()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getText()Landroid/text/Editable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    iget-object v5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker$GetTextCreator;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    goto :goto_0

    :cond_2
    const-string v5, "TextInputWorker"

    const-string v6, "handler is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v5, "TextInputWorker"

    const-string v6, "javaview is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getboolFieldViewWrapper(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/fusion/fx/controls/TextInputWorker;->initialize(Z)V

    :cond_0
    new-instance v4, Lcom/htc/fusion/fx/controls/TextInputWorker$BooleanFieldWrapperWorker;

    invoke-direct {v4, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$BooleanFieldWrapperWorker;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/String;)V

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$BooleanFieldWrapperCreator;

    invoke-direct {v1, p0, v4}, Lcom/htc/fusion/fx/controls/TextInputWorker$BooleanFieldWrapperCreator;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/util/concurrent/Callable;)V

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isCallingOnUiThread()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->getBooleanFieldWrapperInternal(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :cond_1
    :goto_0
    return v5

    :cond_2
    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/TextInputWorker$BooleanFieldWrapperCreator;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_3
    const-string v6, "TextInputWorker"

    const-string v7, "handler is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v6, "TextInputWorker"

    const-string v7, "javaview is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initialize(FFZ)V
    .locals 1

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/fusion/fx/controls/TextInputWorker$1;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;FFZ)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initialize(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v0, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->positionX:F

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->positionY:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->initialize(FFZ)V

    return-void
.end method

.method public isFocused()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->isFocused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    return v0
.end method

.method public isTextEditEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextEditEnabled:Z

    return v0
.end method

.method public release()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/htc/fusion/fx/controls/TextInputWorker;->bindMessageListener(Z)V

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxTextInput;->updateTextScreenPosition(Z)V

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->sipReceiver:Lcom/htc/fusion/fx/controls/TextInputWorker$SIPReceiver;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->sipReceiver:Lcom/htc/fusion/fx/controls/TextInputWorker$SIPReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->sipReceiver:Lcom/htc/fusion/fx/controls/TextInputWorker$SIPReceiver;

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->cleanupStreamingTexture()Z

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isTextEditEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/htc/fusion/fx/controls/TextInputWorker;->setTextEditEnabled(Z)V

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxTextInput;->exitInputMode()V

    :cond_3
    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$13;

    invoke-direct {v1, p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker$13;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public requestFocus()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$9;

    invoke-direct {v0, p0}, Lcom/htc/fusion/fx/controls/TextInputWorker$9;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$18;

    invoke-direct {v1, p0}, Lcom/htc/fusion/fx/controls/TextInputWorker$18;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$19;

    invoke-direct {v0, p0}, Lcom/htc/fusion/fx/controls/TextInputWorker$19;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setAutoText(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$24;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$24;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput-boolean p1, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->autoText:Z

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$25;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$25;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$38;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$38;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput p1, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->backgroundColor:I

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v0, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->backgroundTransparent:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$39;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$39;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setCursorPosition(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$34;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$34;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$35;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$35;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setCursorVisible(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$20;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$20;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput-boolean p1, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->cursorVisible:Z

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$21;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$21;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setEllipsize(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$16;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$16;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$17;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$17;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$4;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$4;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$26;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$26;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput-object p1, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->hint:Ljava/lang/String;

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$27;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$27;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setHintTextColor(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$42;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$42;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput p1, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->hintTextColor:I

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$43;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$43;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setInputType(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$30;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$30;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInputType:I

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$31;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$31;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$46;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$46;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/text/method/KeyListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$47;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$47;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/text/method/KeyListener;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setLines(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$60;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$60;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$61;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$61;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setMaxLength(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$28;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$28;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$29;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$29;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$48;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$48;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/view/View$OnKeyListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$49;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$49;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/view/View$OnKeyListener;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 7

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$36;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/fusion/fx/controls/TextInputWorker$36;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;IIII)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput p1, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->paddingLeft:I

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput p2, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->paddingTop:I

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput p3, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->paddingRight:I

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput p4, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->paddingBottom:I

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$37;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/fusion/fx/controls/TextInputWorker$37;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;IIII)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$22;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$22;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput-boolean p1, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->selectAllOnFocus:Z

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$23;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$23;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setSelection(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$32;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker$32;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$33;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker$33;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;II)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setSingleLine(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$58;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$58;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$59;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$59;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$52;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker$52;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$53;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker$53;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$14;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$14;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$15;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$15;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$40;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$40;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput p1, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->textColor:I

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$41;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$41;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setTextEditEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextEditEnabled:Z

    return-void
.end method

.method public setTransparentBackground(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fusion/fx/controls/TextInputWorker$44;

    invoke-direct {v1, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$44;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iput-boolean p1, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->backgroundTransparent:Z

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$45;

    invoke-direct {v0, p0}, Lcom/htc/fusion/fx/controls/TextInputWorker$45;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateTextScreenPosition(FF)V
    .locals 6

    :try_start_0
    iget-boolean v4, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2, v4}, Lcom/htc/fusion/fx/controls/TextInputWorker;->initialize(FFZ)V

    :cond_0
    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isCallingOnUiThread()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->updateTextScreenPosition_OnUiThread(FF)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v4, Lcom/htc/fusion/fx/controls/TextInputWorker$12;

    invoke-direct {v4, p0, p1, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker$12;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;FF)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "TextInputWorker"

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v4, "TextInputWorker"

    const-string v5, "handler is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v4, "TextInputWorker"

    const-string v5, "javaview is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public workActivate()V
    .locals 1

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$7;

    invoke-direct {v0, p0}, Lcom/htc/fusion/fx/controls/TextInputWorker$7;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public workActivate_OnUiThread()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextInput;->swapStreamingTextureVisibility(Z)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextInput;->updateTextScreenPosition(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->cancelLongPress()V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextInput;->updateTextScreenPosition(Z)V

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isTextEditEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextInput;->swapStreamingTextureVisibility(Z)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->enableStreamingTexture()V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;

    iget-boolean v1, v1, Lcom/htc/fusion/fx/controls/TextInputInfo;->cursorVisible:Z

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setCursorVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->disableStreamingTexture()V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextInput;->swapStreamingTextureVisibility(Z)V

    goto :goto_0
.end method

.method public workDeactivate()V
    .locals 1

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$8;

    invoke-direct {v0, p0}, Lcom/htc/fusion/fx/controls/TextInputWorker$8;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;)V

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->invokeOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public workDeactivate_OnUiThread()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->cancelLongPress()V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextInput;->updateTextScreenPosition(Z)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->hideSoftInput()V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxTextInput;->isInInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->exitInputMode_OnUiThread()V

    goto :goto_0
.end method
