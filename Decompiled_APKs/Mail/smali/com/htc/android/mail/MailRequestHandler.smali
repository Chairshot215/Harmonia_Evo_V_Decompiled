.class public Lcom/htc/android/mail/MailRequestHandler;
.super Landroid/os/Handler;
.source "MailRequestHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MailRequestHandler"


# instance fields
.field protected mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

.field private mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/htc/android/mail/MailRequestHandler;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 33
    iput-object v0, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/htc/android/mail/MailRequestHandler;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 33
    iput-object v0, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailRequestHandler;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/util/MailDialogManager;)V
    .locals 0
    .parameter "context"
    .parameter "mailDialogManager"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailRequestHandler;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    iput-object v0, p0, Lcom/htc/android/mail/MailRequestHandler;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 33
    iput-object v0, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/MailRequestHandler;Landroid/content/Context;Lcom/htc/android/mail/RequestController$CertificateCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/MailRequestHandler;->showSSLCertificateOnError(Landroid/content/Context;Lcom/htc/android/mail/RequestController$CertificateCallback;)V

    return-void
.end method

.method private inflateCertificateView(Landroid/content/Context;Landroid/net/http/SslCertificate;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "certificate"

    .prologue
    const/4 v0, 0x0

    .line 216
    if-nez p2, :cond_0

    .line 250
    :goto_0
    return-object v0

    .line 220
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 222
    .local v2, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f030048

    invoke-virtual {v2, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, certificateView:Landroid/view/View;
    invoke-virtual {p2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    .line 226
    .local v5, issuedTo:Landroid/net/http/SslCertificate$DName;
    if-eqz v5, :cond_1

    .line 227
    const v6, 0x7f090181

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const v6, 0x7f090183

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const v6, 0x7f090185

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_1
    invoke-virtual {p2}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    .line 235
    .local v3, issuedBy:Landroid/net/http/SslCertificate$DName;
    if-eqz v3, :cond_2

    .line 236
    const v6, 0x7f090187

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    const v6, 0x7f090189

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    const v6, 0x7f09018b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_2
    invoke-virtual {p2}, Landroid/net/http/SslCertificate;->getValidNotBefore()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/htc/android/mail/MailRequestHandler;->reformatCertificateDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, issuedOn:Ljava/lang/String;
    const v6, 0x7f09018f

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {p2}, Landroid/net/http/SslCertificate;->getValidNotAfter()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/htc/android/mail/MailRequestHandler;->reformatCertificateDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, expiresOn:Ljava/lang/String;
    const v6, 0x7f090192

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private reformatCertificateDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "certificateDate"

    .prologue
    .line 262
    const/4 v2, 0x0

    .line 264
    .local v2, reformattedDate:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, date:Ljava/util/Date;
    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 272
    :goto_0
    if-eqz v0, :cond_0

    .line 273
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .end local v0           #date:Ljava/util/Date;
    :cond_0
    if-eqz v2, :cond_1

    .end local v2           #reformattedDate:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 268
    .restart local v0       #date:Ljava/util/Date;
    .restart local v2       #reformattedDate:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 269
    .local v1, e:Ljava/text/ParseException;
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #e:Ljava/text/ParseException;
    :cond_1
    if-eqz p2, :cond_2

    move-object v2, p2

    goto :goto_1

    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method private showSSLCertificateOnError(Landroid/content/Context;Lcom/htc/android/mail/RequestController$CertificateCallback;)V
    .locals 9
    .parameter "context"
    .parameter "callback"

    .prologue
    const v8, 0x7f090193

    const v7, 0x7f030049

    .line 294
    invoke-virtual {p2}, Lcom/htc/android/mail/RequestController$CertificateCallback;->getMailSslError()Lcom/htc/android/mail/ssl/MailSslError;

    move-result-object v1

    .line 295
    .local v1, error:Lcom/htc/android/mail/ssl/MailSslError;
    invoke-virtual {v1}, Lcom/htc/android/mail/ssl/MailSslError;->getCertificate()Lcom/htc/android/mail/ssl/MailSslCertificate;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/htc/android/mail/MailRequestHandler;->inflateCertificateView(Landroid/content/Context;Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, certificateView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 302
    .local v2, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f09017d

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 305
    .local v4, placeholder:Landroid/widget/LinearLayout;
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/htc/android/mail/ssl/MailSslError;->hasError(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    invoke-virtual {v2, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 307
    .local v3, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b01ae

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 310
    .end local v3           #ll:Landroid/widget/LinearLayout;
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/htc/android/mail/ssl/MailSslError;->hasError(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 311
    invoke-virtual {v2, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 312
    .restart local v3       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b01af

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 315
    .end local v3           #ll:Landroid/widget/LinearLayout;
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/htc/android/mail/ssl/MailSslError;->hasError(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 316
    invoke-virtual {v2, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 317
    .restart local v3       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b01b0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 320
    .end local v3           #ll:Landroid/widget/LinearLayout;
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/htc/android/mail/ssl/MailSslError;->hasError(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 321
    invoke-virtual {v2, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 322
    .restart local v3       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b01b1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 326
    .end local v3           #ll:Landroid/widget/LinearLayout;
    :cond_4
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b01b2

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0291

    new-instance v7, Lcom/htc/android/mail/MailRequestHandler$6;

    invoke-direct {v7, p0, p1, p2}, Lcom/htc/android/mail/MailRequestHandler$6;-><init>(Lcom/htc/android/mail/MailRequestHandler;Landroid/content/Context;Lcom/htc/android/mail/RequestController$CertificateCallback;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/htc/android/mail/MailRequestHandler$5;

    invoke-direct {v6, p0, p1, p2}, Lcom/htc/android/mail/MailRequestHandler$5;-><init>(Lcom/htc/android/mail/MailRequestHandler;Landroid/content/Context;Lcom/htc/android/mail/RequestController$CertificateCallback;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0
.end method


# virtual methods
.method public accountSyncResult(Z)V
    .locals 0
    .parameter "result"

    .prologue
    .line 452
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "message"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0b0291

    const v5, 0x7f0b005c

    .line 54
    iget-object v4, p0, Lcom/htc/android/mail/MailRequestHandler;->mWeakContext:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/MailRequestHandler;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 56
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 57
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b005d

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 64
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v4, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v4, v0}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 68
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :pswitch_1
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b005e

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 72
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v4, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v4, v0}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 76
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :pswitch_2
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b01bc

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 80
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v4, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v4, v0}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 84
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :pswitch_3
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0140

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 88
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v4, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v4, v0}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 92
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :pswitch_4
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b005f

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 96
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v4, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v4, v0}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 100
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 101
    .local v3, str:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/htc/android/mail/MailRequestHandler;->showDlgMailboxNotFound(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    .end local v3           #str:Ljava/lang/String;
    :pswitch_6
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b01a4

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 109
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v4, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v4, v0}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 113
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :pswitch_7
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b01a3

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 117
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v4, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v4, v0}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 121
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/android/mail/RequestController$CertificateCallback;

    .line 122
    .local v1, callback:Lcom/htc/android/mail/RequestController$CertificateCallback;
    invoke-virtual {p0, v2, v1}, Lcom/htc/android/mail/MailRequestHandler;->onReceivedSslError(Landroid/content/Context;Lcom/htc/android/mail/RequestController$CertificateCallback;)V

    goto/16 :goto_0

    .line 126
    .end local v1           #callback:Lcom/htc/android/mail/RequestController$CertificateCallback;
    :pswitch_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 127
    .restart local v3       #str:Ljava/lang/String;
    if-nez v3, :cond_2

    const-string v3, ""

    .line 128
    :cond_2
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 132
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v4, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v4, v0}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onAttachProgressChange(Lcom/htc/android/mail/Account;Landroid/os/Message;)V
    .locals 0
    .parameter "account"
    .parameter "msg"

    .prologue
    .line 430
    return-void
.end method

.method public onCheckMoreComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 353
    if-eqz p2, :cond_0

    .line 354
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 434
    return-void
.end method

.method public onContactGroupChanged()V
    .locals 0

    .prologue
    .line 414
    return-void
.end method

.method public onDeleteComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 365
    if-eqz p2, :cond_0

    .line 366
    :cond_0
    return-void
.end method

.method public onDeleteMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Request;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    return-void
.end method

.method public onDownloadAttachComplete(Lcom/htc/android/mail/Account;Landroid/os/Message;)V
    .locals 0
    .parameter "account"
    .parameter "msg"

    .prologue
    .line 422
    return-void
.end method

.method public onDownloadAttachStart(Lcom/htc/android/mail/Account;Landroid/os/Message;)V
    .locals 0
    .parameter "account"
    .parameter "msg"

    .prologue
    .line 426
    return-void
.end method

.method public onFetchAllComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 385
    if-eqz p3, :cond_0

    .line 386
    :cond_0
    return-void
.end method

.method public onFetchImapAllComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 381
    if-eqz p3, :cond_0

    .line 382
    :cond_0
    return-void
.end method

.method public onFetchMessageComplete(JI)V
    .locals 0
    .parameter "messageId"
    .parameter "done"

    .prologue
    .line 460
    return-void
.end method

.method public onGroupMailChanged()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public onImportantMailUpdateComplete()V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public onListComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 357
    if-eqz p2, :cond_0

    .line 358
    :cond_0
    return-void
.end method

.method public onMarkStarComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Lcom/htc/android/mail/MailMessage;Ljava/lang/Integer;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter "message"
    .parameter "flag"

    .prologue
    .line 394
    return-void
.end method

.method public onMoveComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 369
    if-eqz p2, :cond_0

    .line 370
    :cond_0
    return-void
.end method

.method public onMoveMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Request;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    return-void
.end method

.method public onReceivedSslError(Landroid/content/Context;Lcom/htc/android/mail/RequestController$CertificateCallback;)V
    .locals 12
    .parameter "context"
    .parameter "callback"

    .prologue
    const v11, 0x7f090193

    const v10, 0x7f030049

    const/4 v9, 0x0

    .line 148
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 149
    .local v2, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f03004a

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 150
    .local v6, warningsView:Landroid/view/View;
    const v7, 0x7f09017d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 151
    .local v4, placeholder:Landroid/widget/LinearLayout;
    invoke-virtual {p2}, Lcom/htc/android/mail/RequestController$CertificateCallback;->getMailSslError()Lcom/htc/android/mail/ssl/MailSslError;

    move-result-object v1

    .line 152
    .local v1, error:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lcom/htc/android/mail/ssl/MailSslError;->hasError(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 153
    invoke-virtual {v2, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 154
    .local v3, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b01ae

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 155
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    .end local v3           #ll:Landroid/widget/LinearLayout;
    :cond_0
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcom/htc/android/mail/ssl/MailSslError;->hasError(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 159
    invoke-virtual {v2, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 160
    .restart local v3       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b01af

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 161
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    .end local v3           #ll:Landroid/widget/LinearLayout;
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/htc/android/mail/ssl/MailSslError;->hasError(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 165
    invoke-virtual {v2, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 166
    .restart local v3       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b01b0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 167
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    .end local v3           #ll:Landroid/widget/LinearLayout;
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/htc/android/mail/ssl/MailSslError;->hasError(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 171
    invoke-virtual {v2, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 172
    .restart local v3       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b01b1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 173
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    .end local v3           #ll:Landroid/widget/LinearLayout;
    :cond_3
    const v5, 0x7f0b01aa

    .line 177
    .local v5, positiveBtn:I
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0xc

    if-ne v7, v8, :cond_4

    .line 178
    const v5, 0x7f0b01ab

    .line 181
    :cond_4
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0b01ac

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/android/mail/MailRequestHandler$4;

    invoke-direct {v8, p0, p2}, Lcom/htc/android/mail/MailRequestHandler$4;-><init>(Lcom/htc/android/mail/MailRequestHandler;Lcom/htc/android/mail/RequestController$CertificateCallback;)V

    invoke-virtual {v7, v5, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b01ad

    new-instance v9, Lcom/htc/android/mail/MailRequestHandler$3;

    invoke-direct {v9, p0, p1, p2}, Lcom/htc/android/mail/MailRequestHandler$3;-><init>(Lcom/htc/android/mail/MailRequestHandler;Landroid/content/Context;Lcom/htc/android/mail/RequestController$CertificateCallback;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b008e

    new-instance v9, Lcom/htc/android/mail/MailRequestHandler$2;

    invoke-direct {v9, p0, p2}, Lcom/htc/android/mail/MailRequestHandler$2;-><init>(Lcom/htc/android/mail/MailRequestHandler;Lcom/htc/android/mail/RequestController$CertificateCallback;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/android/mail/MailRequestHandler$1;

    invoke-direct {v8, p0, p2}, Lcom/htc/android/mail/MailRequestHandler$1;-><init>(Lcom/htc/android/mail/MailRequestHandler;Lcom/htc/android/mail/RequestController$CertificateCallback;)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 203
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v7, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v7, v0}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    .line 204
    return-void
.end method

.method public onRefreshComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 349
    if-eqz p2, :cond_0

    .line 350
    :cond_0
    return-void
.end method

.method public onReloadMailList(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 361
    if-eqz p2, :cond_0

    .line 362
    :cond_0
    return-void
.end method

.method public onSaveDraftComplete(Ljava/lang/String;J)V
    .locals 0
    .parameter "key"
    .parameter "messageId"

    .prologue
    .line 456
    return-void
.end method

.method public onSetReadStatusComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Request;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 390
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    return-void
.end method

.method public onSetSortComplete(Lcom/htc/android/mail/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 418
    return-void
.end method

.method public onShowProgressForReadMoreMail(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;)V
    .locals 0
    .parameter "account"
    .parameter "r"

    .prologue
    .line 345
    if-eqz p2, :cond_0

    .line 346
    :cond_0
    return-void
.end method

.method public onShowProgressForRefresh(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;)V
    .locals 0
    .parameter "account"
    .parameter "r"

    .prologue
    .line 341
    if-eqz p2, :cond_0

    .line 342
    :cond_0
    return-void
.end method

.method public onTagChanged(Lcom/htc/android/mail/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 448
    return-void
.end method

.method public onUpdateProgressStatus(Lcom/htc/android/mail/Account;Landroid/os/Message;)V
    .locals 0
    .parameter "account"
    .parameter "msg"

    .prologue
    .line 373
    if-eqz p2, :cond_0

    .line 374
    :cond_0
    return-void
.end method

.method public onreloadMailbody(Lcom/htc/android/mail/Account;Landroid/os/Message;)V
    .locals 0
    .parameter "account"
    .parameter "msg"

    .prologue
    .line 377
    if-eqz p2, :cond_0

    .line 378
    :cond_0
    return-void
.end method

.method public searchFilterChanged()V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method public setAttachmentIndicatorIcon(Landroid/view/View;)V
    .locals 0
    .parameter "BtnView"

    .prologue
    .line 436
    return-void
.end method

.method protected showDlgMailboxNotFound(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "str"

    .prologue
    .line 139
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b005c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0291

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 143
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v1, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v1, v0}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    .line 144
    return-void
.end method

.method public showMenu()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public startChangeAccount(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 439
    return-void
.end method

.method public startDoChangeFolder()V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public startDoComposeView()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public startDoLaunchAccountList()V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method public startMailSearch(Z)V
    .locals 0
    .parameter "token"

    .prologue
    .line 442
    return-void
.end method

.method public updateActionBarUnreadNum(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 440
    return-void
.end method
