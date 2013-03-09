.class public Lcom/htc/android/mail/easclient/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easclient/CertificateUtil$SaveKeystoreThread;,
        Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DIALOG_GET_CERTIFICATE_ERROR:I = 0x13b

.field public static final DIALOG_PROGRESS_SAVE_KEYSTORE:I = 0x12c

.field public static final DIALOG_TEST_CERTIFICATE_NOT_TRUST:I = 0x136

.field public static final DIALOG_TEST_VIEW_CERTIFICATE:I = 0x137

.field public static final EXTRA_CANCEL_ACTION_MESSAGE:Ljava/lang/String; = "extra.message.cancel"

.field public static final EXTRA_CONTINUE_ACTION_MESSAGE:Ljava/lang/String; = "extra.message.continue"

.field public static final TAG:Ljava/lang/String; = "CertificateUtil"

.field private static mService:Lcom/htc/android/mail/eassvc/pim/IEASService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/easclient/CertificateUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method static synthetic access$100()Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/android/mail/easclient/CertificateUtil;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/htc/android/mail/easclient/CertificateUtil;->DEBUG:Z

    return v0
.end method

.method private static getCertificateError()Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    .locals 7

    .prologue
    .line 383
    const/4 v1, 0x0

    .line 384
    .local v1, cerError:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    const/4 v3, 0x0

    .line 386
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v6, "/data/data/com.htc.android.mail/CerError"

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 388
    .local v5, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 395
    if-eqz v4, :cond_0

    .line 397
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v3, v4

    .line 403
    .end local v1           #cerError:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return-object v1

    .line 389
    .restart local v1       #cerError:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    :catch_0
    move-exception v2

    .line 390
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    sget-object v6, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->tempCertificate:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;

    if-eqz v6, :cond_3

    .line 392
    sget-object v1, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->tempCertificate:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    .end local v1           #cerError:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    if-eqz v3, :cond_1

    .line 397
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 398
    :catch_1
    move-exception v2

    .line 399
    .local v2, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 395
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #cerError:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_2

    .line 397
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 395
    :cond_2
    :goto_5
    throw v6

    .line 398
    :catch_2
    move-exception v2

    .line 399
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 395
    .local v2, e:Ljava/lang/Exception;
    :cond_3
    if-eqz v3, :cond_1

    .line 397
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 398
    :catch_3
    move-exception v2

    goto :goto_3

    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v2

    .line 399
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 395
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 389
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static handleCreateDialog(Landroid/app/Activity;IJLjava/lang/String;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "activity"
    .parameter "id"
    .parameter "accountId"
    .parameter "accountName"
    .parameter "args"

    .prologue
    .line 72
    const/4 v7, 0x0

    .line 73
    .local v7, dialog:Lcom/htc/app/HtcProgressDialog;
    sparse-switch p1, :sswitch_data_0

    .line 140
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 75
    :sswitch_0
    new-instance v7, Lcom/htc/app/HtcProgressDialog;

    .end local v7           #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {v7, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 76
    .restart local v7       #dialog:Lcom/htc/app/HtcProgressDialog;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 77
    const v0, 0x7f0b028d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    move-object v0, v7

    .line 79
    goto :goto_0

    .line 81
    :sswitch_1
    new-instance v6, Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;

    invoke-direct {v6}, Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;-><init>()V

    .line 82
    .local v6, cretificateEvent:Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;
    new-instance v0, Lcom/htc/android/mail/easclient/CertificateUtil$1;

    move-object v1, p5

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/easclient/CertificateUtil$1;-><init>(Landroid/os/Bundle;JLjava/lang/String;Landroid/app/Activity;)V

    iput-object v0, v6, Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;->positiveClick:Landroid/content/DialogInterface$OnClickListener;

    .line 101
    new-instance v0, Lcom/htc/android/mail/easclient/CertificateUtil$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/CertificateUtil$2;-><init>(Landroid/app/Activity;)V

    iput-object v0, v6, Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;->neutralClick:Landroid/content/DialogInterface$OnClickListener;

    .line 106
    new-instance v0, Lcom/htc/android/mail/easclient/CertificateUtil$3;

    invoke-direct {v0, p5, p0}, Lcom/htc/android/mail/easclient/CertificateUtil$3;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    iput-object v0, v6, Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;->negativeClick:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-object v1, v6

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 116
    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/easclient/CertificateUtil;->showSSLCertificateError(Landroid/app/Activity;Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;JLjava/lang/String;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 120
    .end local v6           #cretificateEvent:Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;
    :sswitch_2
    new-instance v1, Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;

    invoke-direct {v1}, Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;-><init>()V

    .line 121
    .local v1, cretificateEvent2:Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;
    new-instance v0, Lcom/htc/android/mail/easclient/CertificateUtil$4;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/CertificateUtil$4;-><init>(Landroid/app/Activity;)V

    iput-object v0, v1, Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;->positiveClick:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 126
    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/easclient/CertificateUtil;->showSSLCertificateDetail(Landroid/app/Activity;Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;JLjava/lang/String;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 129
    .end local v1           #cretificateEvent2:Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;
    :sswitch_3
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0088

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b01a9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0291

    new-instance v3, Lcom/htc/android/mail/easclient/CertificateUtil$5;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/CertificateUtil$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x136 -> :sswitch_1
        0x137 -> :sswitch_2
        0x13b -> :sswitch_3
    .end sparse-switch
.end method

.method private static inflateCertificateView(Landroid/content/Context;Landroid/net/http/SslCertificate;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "certificate"

    .prologue
    const/4 v0, 0x0

    .line 311
    if-nez p1, :cond_0

    .line 351
    :goto_0
    return-object v0

    .line 315
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 317
    .local v2, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f030048

    invoke-virtual {v2, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 320
    .local v0, certificateView:Landroid/view/View;
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    .line 321
    .local v5, issuedTo:Landroid/net/http/SslCertificate$DName;
    if-eqz v5, :cond_1

    .line 322
    const v6, 0x7f090181

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    const v6, 0x7f090183

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const v6, 0x7f090185

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    .line 332
    .local v3, issuedBy:Landroid/net/http/SslCertificate$DName;
    if-eqz v3, :cond_2

    .line 333
    const v6, 0x7f090187

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const v6, 0x7f090189

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    const v6, 0x7f09018b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_2
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotBefore()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/htc/android/mail/easclient/CertificateUtil;->reformatCertificateDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, issuedOn:Ljava/lang/String;
    const v6, 0x7f09018f

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotAfter()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/htc/android/mail/easclient/CertificateUtil;->reformatCertificateDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, expiresOn:Ljava/lang/String;
    const v6, 0x7f090192

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private static reformatCertificateDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "certificateDate"

    .prologue
    .line 362
    const/4 v2, 0x0

    .line 364
    .local v2, reformattedDate:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 367
    .local v0, date:Ljava/util/Date;
    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 372
    :goto_0
    if-eqz v0, :cond_0

    .line 373
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .end local v0           #date:Ljava/util/Date;
    :cond_0
    if-eqz v2, :cond_1

    .end local v2           #reformattedDate:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 368
    .restart local v0       #date:Ljava/util/Date;
    .restart local v2       #reformattedDate:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 369
    .local v1, e:Ljava/text/ParseException;
    const/4 v0, 0x0

    goto :goto_0

    .line 378
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #e:Ljava/text/ParseException;
    :cond_1
    if-eqz p1, :cond_2

    move-object v2, p1

    goto :goto_1

    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public static showCertificateInvalid(Landroid/app/Activity;Lcom/htc/android/mail/eassvc/pim/IEASService;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .parameter "activity"
    .parameter "service"
    .parameter "msgContinue"
    .parameter "msgCancel"

    .prologue
    .line 61
    sput-object p1, Lcom/htc/android/mail/easclient/CertificateUtil;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "extra.message.continue"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    const-string v1, "extra.message.cancel"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const/16 v1, 0x136

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 70
    :cond_0
    return-void
.end method

.method private static showSSLCertificateDetail(Landroid/app/Activity;Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;JLjava/lang/String;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "activity"
    .parameter "listener"
    .parameter "accountId"
    .parameter "accountName"
    .parameter "args"

    .prologue
    .line 191
    invoke-static {}, Lcom/htc/android/mail/easclient/CertificateUtil;->getCertificateError()Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;

    move-result-object v6

    .line 192
    .local v6, certError:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->certificate:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_1

    .line 193
    :cond_0
    const/16 v1, 0x13b

    move-object v0, p0

    move-wide v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/easclient/CertificateUtil;->handleCreateDialog(Landroid/app/Activity;IJLjava/lang/String;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    .line 195
    :cond_1
    new-instance v0, Landroid/net/http/SslCertificate;

    iget-object v1, v6, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->certificate:Ljava/security/cert/X509Certificate;

    invoke-direct {v0, v1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-static {p0, v0}, Lcom/htc/android/mail/easclient/CertificateUtil;->inflateCertificateView(Landroid/content/Context;Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v7

    .line 197
    .local v7, certificateView:Landroid/view/View;
    if-nez v7, :cond_2

    .line 198
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 202
    .local v8, factory:Landroid/view/LayoutInflater;
    const v0, 0x7f09017d

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 205
    .local v10, placeholder:Landroid/widget/LinearLayout;
    iget v0, v6, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->errorCode:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_4

    .line 206
    const v0, 0x7f030049

    invoke-virtual {v8, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 208
    .local v9, ll:Landroid/widget/LinearLayout;
    const v0, 0x7f090193

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b01ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 227
    .end local v9           #ll:Landroid/widget/LinearLayout;
    :cond_3
    :goto_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01b2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0291

    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;->positiveClick:Landroid/content/DialogInterface$OnClickListener;

    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_4
    iget v0, v6, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->errorCode:I

    const/16 v1, -0xb

    if-ne v0, v1, :cond_5

    .line 211
    const v0, 0x7f030049

    invoke-virtual {v8, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 213
    .restart local v9       #ll:Landroid/widget/LinearLayout;
    const v0, 0x7f090193

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b01af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 215
    .end local v9           #ll:Landroid/widget/LinearLayout;
    :cond_5
    iget v0, v6, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->errorCode:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_6

    .line 216
    const v0, 0x7f030049

    invoke-virtual {v8, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 218
    .restart local v9       #ll:Landroid/widget/LinearLayout;
    const v0, 0x7f090193

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b01b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 220
    .end local v9           #ll:Landroid/widget/LinearLayout;
    :cond_6
    iget v0, v6, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->errorCode:I

    const/16 v1, -0xc

    if-ne v0, v1, :cond_3

    .line 221
    const v0, 0x7f030049

    invoke-virtual {v8, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 223
    .restart local v9       #ll:Landroid/widget/LinearLayout;
    const v0, 0x7f090193

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b01b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 227
    .end local v9           #ll:Landroid/widget/LinearLayout;
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static showSSLCertificateError(Landroid/app/Activity;Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;JLjava/lang/String;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter "activity"
    .parameter "listener"
    .parameter "accountId"
    .parameter "accountName"
    .parameter "args"

    .prologue
    .line 241
    invoke-static {}, Lcom/htc/android/mail/easclient/CertificateUtil;->getCertificateError()Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;

    move-result-object v0

    .line 243
    .local v0, cerError:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    if-nez v0, :cond_3

    .line 245
    const/16 v1, -0xd

    .line 250
    .local v1, errorCode:I
    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 251
    .local v2, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f03004a

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 252
    .local v6, warningsView:Landroid/view/View;
    const v7, 0x7f09017d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 254
    .local v4, placeholder:Landroid/widget/LinearLayout;
    const/16 v7, -0xd

    if-ne v1, v7, :cond_4

    .line 255
    const v7, 0x7f030049

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 257
    .local v3, ll:Landroid/widget/LinearLayout;
    const v7, 0x7f090193

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b01ae

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 259
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    .end local v3           #ll:Landroid/widget/LinearLayout;
    :cond_0
    :goto_1
    const v5, 0x7f0b01aa

    .line 281
    .local v5, positiveBtn:I
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0xc

    if-eq v7, v8, :cond_1

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0xb

    if-ne v7, v8, :cond_2

    .line 283
    :cond_1
    const v5, 0x7f0b01ab

    .line 286
    :cond_2
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0b01ac

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    if-eqz p1, :cond_7

    iget-object v7, p1, Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;->positiveClick:Landroid/content/DialogInterface$OnClickListener;

    :goto_2
    invoke-virtual {v8, v5, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0b01ad

    if-eqz p1, :cond_8

    iget-object v7, p1, Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;->neutralClick:Landroid/content/DialogInterface$OnClickListener;

    :goto_3
    invoke-virtual {v8, v9, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0b008e

    if-eqz p1, :cond_9

    iget-object v7, p1, Lcom/htc/android/mail/easclient/CertificateUtil$ButtonEvent;->negativeClick:Landroid/content/DialogInterface$OnClickListener;

    :goto_4
    invoke-virtual {v8, v9, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    return-object v7

    .line 247
    .end local v1           #errorCode:I
    .end local v2           #factory:Landroid/view/LayoutInflater;
    .end local v4           #placeholder:Landroid/widget/LinearLayout;
    .end local v5           #positiveBtn:I
    .end local v6           #warningsView:Landroid/view/View;
    :cond_3
    iget v1, v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->errorCode:I

    .restart local v1       #errorCode:I
    goto/16 :goto_0

    .line 260
    .restart local v2       #factory:Landroid/view/LayoutInflater;
    .restart local v4       #placeholder:Landroid/widget/LinearLayout;
    .restart local v6       #warningsView:Landroid/view/View;
    :cond_4
    const/16 v7, -0xb

    if-ne v1, v7, :cond_5

    .line 261
    const v7, 0x7f030049

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 263
    .restart local v3       #ll:Landroid/widget/LinearLayout;
    const v7, 0x7f090193

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b01af

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 265
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 266
    .end local v3           #ll:Landroid/widget/LinearLayout;
    :cond_5
    const/16 v7, -0xa

    if-ne v1, v7, :cond_6

    .line 267
    const v7, 0x7f030049

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 269
    .restart local v3       #ll:Landroid/widget/LinearLayout;
    const v7, 0x7f090193

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b01b0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 271
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 272
    .end local v3           #ll:Landroid/widget/LinearLayout;
    :cond_6
    const/16 v7, -0xc

    if-ne v1, v7, :cond_0

    .line 273
    const v7, 0x7f030049

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 275
    .restart local v3       #ll:Landroid/widget/LinearLayout;
    const v7, 0x7f090193

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b01b1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 277
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 286
    .end local v3           #ll:Landroid/widget/LinearLayout;
    .restart local v5       #positiveBtn:I
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_9
    const/4 v7, 0x0

    goto :goto_4
.end method
