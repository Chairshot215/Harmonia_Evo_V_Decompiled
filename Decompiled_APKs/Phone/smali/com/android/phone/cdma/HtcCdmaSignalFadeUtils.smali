.class public Lcom/android/phone/cdma/HtcCdmaSignalFadeUtils;
.super Ljava/lang/Object;
.source "HtcCdmaSignalFadeUtils.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaSignalFadeUtils"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/phone/cdma/HtcCdmaSignalFadeUtils;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method private static getSignalFadeString(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    packed-switch p0, :pswitch_data_0

    .line 56
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 54
    :pswitch_0
    const v0, 0x7f0e0119

    goto :goto_0

    .line 55
    :pswitch_1
    const v0, 0x7f0e011a

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private launchSignalFadeDialog(I)V
    .locals 2
    .parameter "signalFadeErrorID"

    .prologue
    .line 46
    invoke-static {p1}, Lcom/android/phone/cdma/HtcCdmaSignalFadeUtils;->getSignalFadeString(I)I

    move-result v0

    .line 47
    .local v0, stringID:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/phone/cdma/HtcCdmaSignalFadeUtils;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;->startSignalFadeScreen(Landroid/content/Context;I)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public handleSignalFadeError(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 22
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 23
    const-string v2, "HtcCdmaSignalFadeUtils"

    const-string v3, "Exception signal fade mode:"

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 28
    .local v0, SignalFadeData:[I
    if-nez v0, :cond_2

    .line 29
    const-string v2, "HtcCdmaSignalFadeUtils"

    const-string v3, "Signal fade without parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_2
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_3

    .line 35
    aget v2, v0, v4

    invoke-direct {p0, v2}, Lcom/android/phone/cdma/HtcCdmaSignalFadeUtils;->launchSignalFadeDialog(I)V

    goto :goto_0

    .line 37
    :cond_3
    aget v2, v0, v4

    invoke-static {v2}, Lcom/android/phone/cdma/HtcCdmaSignalFadeUtils;->getSignalFadeString(I)I

    move-result v1

    .line 38
    .local v1, stringID:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/android/phone/cdma/HtcCdmaSignalFadeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
