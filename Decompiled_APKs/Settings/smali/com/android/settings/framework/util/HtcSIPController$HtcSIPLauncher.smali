.class public final Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;
.super Landroid/os/ResultReceiver;
.source "HtcSIPController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/util/HtcSIPController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HtcSIPLauncher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher$SIPRunnable;
    }
.end annotation


# static fields
.field private static final LIMITED_RETRY_COUNT:I = 0x3


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRetryCount:I

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/framework/util/HtcSIPController;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/util/HtcSIPController;Landroid/app/Activity;)V
    .locals 4
    .parameter
    .parameter "activity"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->this$0:Lcom/android/settings/framework/util/HtcSIPController;

    .line 310
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 274
    const-class v1, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->TAG:Ljava/lang/String;

    .line 313
    if-nez p2, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v0, "dialog must not be null"

    .line 316
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->mContext:Landroid/content/Context;

    .line 319
    invoke-virtual {p2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->mView:Landroid/view/View;

    .line 320
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/util/HtcSIPController;Landroid/app/Dialog;)V
    .locals 4
    .parameter
    .parameter "dialog"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->this$0:Lcom/android/settings/framework/util/HtcSIPController;

    .line 297
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 274
    const-class v1, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->TAG:Ljava/lang/String;

    .line 300
    if-nez p2, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v0, "dialog must not be null"

    .line 303
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->mContext:Landroid/content/Context;

    .line 306
    invoke-virtual {p2}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->mView:Landroid/view/View;

    .line 307
    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onReceiveResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onReceiveResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    packed-switch p1, :pswitch_data_0

    .line 391
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 378
    :pswitch_1
    iget v0, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->mRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 379
    iget v0, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->mRetryCount:I

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onReceiveResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch IME, retryCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->showSoftInputArea()V

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showSoftInputArea()V
    .locals 4

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher$SIPRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher$SIPRunnable;-><init>(Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;Lcom/android/settings/framework/util/HtcSIPController$1;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    return-void
.end method
