.class public Lcom/google/android/feedback/ShowTosActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ShowTosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mHelper:Lcom/google/android/common/GoogleWebContentHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/feedback/ShowTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/common/GoogleWebContentHelper;->handleKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 69
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/feedback/ShowTosActivity;->setResult(I)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/feedback/ShowTosActivity;->finish()V

    .line 72
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v1, Lcom/google/android/common/GoogleWebContentHelper;

    invoke-direct {v1, p0}, Lcom/google/android/common/GoogleWebContentHelper;-><init>(Landroid/content/Context;)V

    const-string v2, "feedback_tos_url"

    const-string v3, "feedback_tos_pretty_url"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/GoogleWebContentHelper;->setUrlsFromGservices(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v1

    const v2, 0x7f060058

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTosActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/GoogleWebContentHelper;->setUnsuccessfulMessage(Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/common/GoogleWebContentHelper;->loadUrl()Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/feedback/ShowTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    .line 48
    iget-object v0, p0, Lcom/google/android/feedback/ShowTosActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 49
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f060057

    invoke-virtual {p0, v1}, Lcom/google/android/feedback/ShowTosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 50
    iget-object v1, p0, Lcom/google/android/feedback/ShowTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-virtual {v1}, Lcom/google/android/common/GoogleWebContentHelper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 51
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    const v1, 0x7f060059

    invoke-virtual {p0, v1}, Lcom/google/android/feedback/ShowTosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 53
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 54
    const v1, 0x7f06005a

    invoke-virtual {p0, v1}, Lcom/google/android/feedback/ShowTosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 56
    invoke-virtual {p0}, Lcom/google/android/feedback/ShowTosActivity;->setupAlert()V

    .line 57
    return-void
.end method
