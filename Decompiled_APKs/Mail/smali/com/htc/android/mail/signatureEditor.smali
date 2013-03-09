.class public Lcom/htc/android/mail/signatureEditor;
.super Landroid/app/Activity;
.source "signatureEditor.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "signatureEditor"


# instance fields
.field sig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/signatureEditor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/signatureEditor;->sig:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/signatureEditor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/android/mail/signatureEditor;->saveAccountSignature(Ljava/lang/String;)V

    return-void
.end method

.method private saveAccountSignature(Ljava/lang/String;)V
    .locals 7
    .parameter "sigText"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/htc/android/mail/signatureEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 34
    .local v3, uri:Landroid/net/Uri;
    sget-boolean v4, Lcom/htc/android/mail/signatureEditor;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "signatureEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAccountNotify>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 36
    .local v1, accountId:J
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 37
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_1

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/Account;->setSignature(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p0}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const v7, 0x7f09017c

    const/4 v6, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/htc/android/mail/signatureEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 45
    .local v1, it:Landroid/content/Intent;
    const-string v3, "sig"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/signatureEditor;->sig:Ljava/lang/String;

    .line 46
    sget-boolean v3, Lcom/htc/android/mail/signatureEditor;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "signatureEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "signatureEditor create>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/signatureEditor;->sig:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    invoke-virtual {p0, v6}, Lcom/htc/android/mail/signatureEditor;->requestWindowFeature(I)Z

    .line 48
    const v3, 0x7f030046

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/signatureEditor;->setContentView(I)V

    .line 49
    invoke-virtual {p0, v7}, Lcom/htc/android/mail/signatureEditor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 50
    const v3, 0x7f09006f

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/signatureEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    .line 51
    .local v0, footerBar:Lcom/htc/android/mail/widget/MailFooterBar2Btn;
    invoke-virtual {v0}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getLeftButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b0115

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 52
    invoke-virtual {v0}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const v4, 0x7f0b027e

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 53
    invoke-virtual {p0, v7}, Lcom/htc/android/mail/signatureEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 54
    .local v2, signatureBody:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/htc/android/mail/signatureEditor;->sig:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    iput-object v3, p0, Lcom/htc/android/mail/signatureEditor;->sig:Ljava/lang/String;

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/signatureEditor;->sig:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 60
    invoke-virtual {v0}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getLeftButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    new-instance v4, Lcom/htc/android/mail/signatureEditor$1;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/signatureEditor$1;-><init>(Lcom/htc/android/mail/signatureEditor;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {v0}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    new-instance v4, Lcom/htc/android/mail/signatureEditor$2;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/signatureEditor$2;-><init>(Lcom/htc/android/mail/signatureEditor;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method protected final onResume()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 30
    return-void
.end method
