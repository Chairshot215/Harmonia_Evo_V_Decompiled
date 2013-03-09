.class public Lcom/htc/feedback/SystemCrashActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "SystemCrashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemCrashActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, -0x1

    .line 41
    if-ne p2, v1, :cond_1

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/feedback/ReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, reportIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/feedback/SystemCrashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 45
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Lcom/htc/feedback/SystemCrashActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    .end local v0           #reportIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    if-ne p2, v1, :cond_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/high16 v2, 0x7f07

    .line 23
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/htc/feedback/SystemCrashActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 28
    .local v0, params:Lcom/htc/app/HtcAlertController$AlertParams;
    invoke-virtual {p0, v2}, Lcom/htc/feedback/SystemCrashActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 29
    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/htc/feedback/SystemCrashActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 30
    const v1, 0x1080027

    iput v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 31
    invoke-virtual {p0, v2}, Lcom/htc/feedback/SystemCrashActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 32
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 33
    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Lcom/htc/feedback/SystemCrashActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 34
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 35
    invoke-virtual {p0}, Lcom/htc/feedback/SystemCrashActivity;->setupAlert()V

    .line 36
    return-void
.end method
