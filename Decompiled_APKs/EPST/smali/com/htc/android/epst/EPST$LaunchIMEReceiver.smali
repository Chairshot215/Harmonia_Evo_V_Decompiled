.class Lcom/htc/android/epst/EPST$LaunchIMEReceiver;
.super Landroid/os/ResultReceiver;
.source "EPST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/EPST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchIMEReceiver"
.end annotation


# static fields
.field private static mNewInstance:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;


# instance fields
.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMyHandler:Landroid/os/Handler;

.field public retryCount:I

.field private targetView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 883
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 878
    iput-object v0, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 879
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->mMyHandler:Landroid/os/Handler;

    .line 884
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->retryCount:I

    .line 885
    return-void
.end method

.method static synthetic access$1500(Lcom/htc/android/epst/EPST$LaunchIMEReceiver;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/android/epst/EPST$LaunchIMEReceiver;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 876
    iput-object p1, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/android/epst/EPST$LaunchIMEReceiver;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->targetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/htc/android/epst/EPST$LaunchIMEReceiver;
    .locals 1

    .prologue
    .line 876
    sget-object v0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->mNewInstance:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    return-object v0
.end method

.method public static getSingleton()Lcom/htc/android/epst/EPST$LaunchIMEReceiver;
    .locals 1

    .prologue
    .line 887
    sget-object v0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->mNewInstance:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    invoke-direct {v0}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;-><init>()V

    sput-object v0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->mNewInstance:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    .line 888
    :cond_0
    sget-object v0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->mNewInstance:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    return-object v0
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 909
    packed-switch p1, :pswitch_data_0

    .line 922
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 912
    :pswitch_1
    iget v0, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->retryCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 913
    const-string v0, "EditTextPerference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch IME, retryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-virtual {p0}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->relaunchIME()V

    goto :goto_0

    .line 909
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public relaunchIME()V
    .locals 4

    .prologue
    .line 895
    iget-object v0, p0, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->mMyHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/epst/EPST$LaunchIMEReceiver$1;

    invoke-direct {v1, p0}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver$1;-><init>(Lcom/htc/android/epst/EPST$LaunchIMEReceiver;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 906
    return-void
.end method
