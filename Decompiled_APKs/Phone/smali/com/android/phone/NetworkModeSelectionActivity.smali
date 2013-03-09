.class public Lcom/android/phone/NetworkModeSelectionActivity;
.super Landroid/app/Activity;
.source "NetworkModeSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkModeSelectionActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkModeSelectionActivity"


# instance fields
.field itemArray:[Ljava/lang/String;

.field itemIndexArray:[Ljava/lang/String;

.field private mButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Lcom/android/phone/NetworkModeSelectionActivity$MyHandler;

.field private mIndex:I

.field private mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mIndex:I

    .line 56
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/NetworkModeSelectionActivity;->itemArray:[Ljava/lang/String;

    .line 57
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/NetworkModeSelectionActivity;->itemIndexArray:[Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/android/phone/NetworkModeSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkModeSelectionActivity$1;-><init>(Lcom/android/phone/NetworkModeSelectionActivity;)V

    iput-object v0, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 120
    new-instance v0, Lcom/android/phone/NetworkModeSelectionActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkModeSelectionActivity$2;-><init>(Lcom/android/phone/NetworkModeSelectionActivity;)V

    iput-object v0, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 130
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkModeSelectionActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkModeSelectionActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkModeSelectionActivity;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModeSelectionActivity;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, -0x1

    .line 150
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 152
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    .line 153
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v3, v4, v5

    .line 156
    .local v3, modemNetworkMode:I
    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 158
    :cond_0
    const-string v4, "NetworkModeSelectionActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/NetworkModeSelectionActivity;->itemIndexArray:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 161
    iget-object v4, p0, Lcom/android/phone/NetworkModeSelectionActivity;->itemIndexArray:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    iput v2, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mIndex:I

    .line 160
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v2           #i:I
    :cond_2
    const-string v4, "NetworkModeSelectionActivity"

    const-string v5, "handleGetPreferredNetworkTypeResponse: reset to default"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iput v6, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mIndex:I

    .line 174
    .end local v3           #modemNetworkMode:I
    :cond_3
    :goto_1
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e02d6

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e0264

    iget-object v6, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e0256

    iget-object v6, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkModeSelectionActivity;->itemArray:[Ljava/lang/String;

    iget v6, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mIndex:I

    iget-object v7, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 183
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 184
    return-void

    .line 170
    .end local v1           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_4
    const-string v4, "NetworkModeSelectionActivity"

    const-string v5, "handleGetPreferredNetworkTypeResponse: exception, reset to default"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iput v6, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mIndex:I

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModeSelectionActivity;->requestWindowFeature(I)Z

    .line 65
    invoke-virtual {p0}, Lcom/android/phone/NetworkModeSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkModeSelectionActivity;->itemArray:[Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/android/phone/NetworkModeSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkModeSelectionActivity;->itemIndexArray:[Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 69
    new-instance v0, Lcom/android/phone/NetworkModeSelectionActivity$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NetworkModeSelectionActivity$MyHandler;-><init>(Lcom/android/phone/NetworkModeSelectionActivity;Lcom/android/phone/NetworkModeSelectionActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mHandler:Lcom/android/phone/NetworkModeSelectionActivity$MyHandler;

    .line 71
    iget-object v0, p0, Lcom/android/phone/NetworkModeSelectionActivity;->itemArray:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/NetworkModeSelectionActivity;->mHandler:Lcom/android/phone/NetworkModeSelectionActivity$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModeSelectionActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkModeSelectionActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 84
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_0

    .line 93
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 90
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkModeSelectionActivity;->finish()V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
