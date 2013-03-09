.class Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;
.super Landroid/os/ResultReceiver;
.source "DisplayLinkedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplayLinkedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchIMEReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mURLEdit:Landroid/widget/EditText;

.field private retryCount:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 1
    .parameter "editor"
    .parameter "context"

    .prologue
    .line 1106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 1107
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;

    .line 1108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->retryCount:I

    .line 1109
    iput-object p2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->mContext:Landroid/content/Context;

    .line 1110
    return-void
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1508(Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 1100
    iget v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->retryCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private relaunchIME()V
    .locals 4

    .prologue
    .line 1114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver$1;-><init>(Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1130
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 1133
    packed-switch p1, :pswitch_data_0

    .line 1146
    :goto_0
    return-void

    .line 1136
    :pswitch_0
    iget v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->retryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1137
    const-string v0, "JuLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch IME failed, retryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->relaunchIME()V

    goto :goto_0

    .line 1142
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$LaunchIMEReceiver;->retryCount:I

    goto :goto_0

    .line 1133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
