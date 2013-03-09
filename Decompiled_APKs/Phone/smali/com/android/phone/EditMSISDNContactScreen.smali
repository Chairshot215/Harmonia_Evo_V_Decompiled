.class public Lcom/android/phone/EditMSISDNContactScreen;
.super Landroid/app/Activity;
.source "EditMSISDNContactScreen.java"


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_SET_PHONE_NUMBER_COMPLETED:I = 0x1

.field private static final FOOTER_SIZE_BYTES:I = 0xe

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field private static final SET_PHONE_NUMBER_DIALOG:I = 0x64


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mCancelBtn:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field public mDialog:Lcom/htc/app/HtcProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mMaxAlphaTagLength:I

.field private mName:Ljava/lang/String;

.field private mNameField:Landroid/widget/EditText;

.field private mNumber:Ljava/lang/String;

.field private mNumberField:Landroid/widget/EditText;

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 169
    new-instance v0, Lcom/android/phone/EditMSISDNContactScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EditMSISDNContactScreen$1;-><init>(Lcom/android/phone/EditMSISDNContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    .line 181
    new-instance v0, Lcom/android/phone/EditMSISDNContactScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EditMSISDNContactScreen$2;-><init>(Lcom/android/phone/EditMSISDNContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    .line 238
    new-instance v0, Lcom/android/phone/EditMSISDNContactScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/EditMSISDNContactScreen$4;-><init>(Lcom/android/phone/EditMSISDNContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EditMSISDNContactScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EditMSISDNContactScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/EditMSISDNContactScreen;->setMSISDN()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/EditMSISDNContactScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mCancelBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/EditMSISDNContactScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mMaxAlphaTagLength:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/EditMSISDNContactScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/phone/EditMSISDNContactScreen;->mMaxAlphaTagLength:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/EditMSISDNContactScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/phone/EditMSISDNContactScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getAlphaTagMaxLength()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Lcom/android/phone/EditMSISDNContactScreen$3;

    const-string v1, "getAlphaTagMaxLength()"

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EditMSISDNContactScreen$3;-><init>(Lcom/android/phone/EditMSISDNContactScreen;Ljava/lang/String;)V

    .line 233
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 234
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 235
    return-void
.end method

.method private getNameFromTextField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(ZZ)V
    .locals 5
    .parameter "success"
    .parameter "invalidAlphaTag"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/phone/EditMSISDNContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditMSISDNContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    return-void

    .line 160
    :cond_0
    if-eqz p2, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/phone/EditMSISDNContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01ed

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/phone/EditMSISDNContactScreen;->mMaxAlphaTagLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditMSISDNContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EditMSISDNContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditMSISDNContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isValidAlphaTag(Ljava/lang/String;)Z
    .locals 2
    .parameter "alphaTag"

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/phone/EditMSISDNContactScreen;->mMaxAlphaTagLength:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 281
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EditMsidnContact] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method private setMSISDN()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 193
    invoke-direct {p0}, Lcom/android/phone/EditMSISDNContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EditMSISDNContactScreen;->isValidAlphaTag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/EditMSISDNContactScreen;->handleResult(ZZ)V

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EditMSISDNContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditMSISDNContactScreen;->mName:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/android/phone/EditMSISDNContactScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/EditMSISDNContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/EditMSISDNContactScreen;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 205
    invoke-direct {p0}, Lcom/android/phone/EditMSISDNContactScreen;->showDialog()V

    goto :goto_0
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 105
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/android/phone/EditMSISDNContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNameField:Landroid/widget/EditText;

    .line 106
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditMSISDNContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 111
    :cond_0
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/android/phone/EditMSISDNContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNumberField:Landroid/widget/EditText;

    .line 112
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNumberField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditMSISDNContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_2
    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/android/phone/EditMSISDNContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mButton:Landroid/widget/Button;

    .line 122
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mButton:Landroid/widget/Button;

    const v1, 0x7f0e0360

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 124
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EditMSISDNContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_3
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/android/phone/EditMSISDNContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mCancelBtn:Landroid/widget/Button;

    .line 128
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mCancelBtn:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mCancelBtn:Landroid/widget/Button;

    const/high16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mCancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EditMSISDNContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_4
    return-void
.end method

.method private showDialog()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mDialog:Lcom/htc/app/HtcProgressDialog;

    .line 272
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0e02b2

    invoke-virtual {p0, v1}, Lcom/android/phone/EditMSISDNContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0e02b5

    invoke-virtual {p0, v1}, Lcom/android/phone/EditMSISDNContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 278
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "statusMsg"

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method handleSetPhoneNumberResult(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 258
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 259
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EditMSISDNContactScreen;->handleResult(ZZ)V

    .line 264
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EditMSISDNContactScreen;->finish()V

    .line 265
    return-void

    .line 262
    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/android/phone/EditMSISDNContactScreen;->handleResult(ZZ)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 80
    invoke-virtual {p0}, Lcom/android/phone/EditMSISDNContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 81
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/android/phone/EditMSISDNContactScreen;->setContentView(I)V

    .line 83
    const v0, 0x7f0e01ea

    invoke-virtual {p0, v0}, Lcom/android/phone/EditMSISDNContactScreen;->setTitle(I)V

    .line 85
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mName:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNumber:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Msisdn name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditMSISDNContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditMSISDNContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditMSISDNContactScreen;->log(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/android/phone/EditMSISDNContactScreen;->setupView()V

    .line 92
    if-nez p1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/android/phone/EditMSISDNContactScreen;->getAlphaTagMaxLength()V

    .line 95
    :cond_0
    return-void
.end method
