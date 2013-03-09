.class Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;
.super Landroid/os/ResultReceiver;
.source "HtcEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchIMEReceiver"
.end annotation


# static fields
.field private static final maxRetryCount:I = 0x3


# instance fields
.field private mMyHandler:Landroid/os/Handler;

.field public retryCount:I

.field final synthetic this$0:Lcom/htc/preference/HtcEditTextPreference;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcEditTextPreference;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->this$0:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->mMyHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->retryCount:I

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->retryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->relaunchIME()V

    goto :goto_0

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

    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->mMyHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;

    invoke-direct {v1, p0}, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;-><init>(Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
