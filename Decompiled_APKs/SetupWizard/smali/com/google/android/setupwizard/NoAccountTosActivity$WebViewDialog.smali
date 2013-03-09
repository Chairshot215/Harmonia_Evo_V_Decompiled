.class Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;
.super Landroid/app/AlertDialog;
.source "NoAccountTosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/NoAccountTosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebViewDialog"
.end annotation


# instance fields
.field private mHelper:Lcom/google/android/common/GoogleWebContentHelper;


# direct methods
.method protected constructor <init>(Lcom/google/android/setupwizard/NoAccountTosActivity;Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;)V
    .locals 4
    .parameter "activity"
    .parameter "policy"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {p1}, Lcom/google/android/setupwizard/NoAccountTosActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/google/android/common/GoogleWebContentHelper;

    invoke-direct {v1, p1}, Lcom/google/android/common/GoogleWebContentHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    .line 192
    iget-object v1, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;->getSecureUrl(Landroid/content/ContentResolver;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, p1}, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;->getPrettyUrl(Landroid/content/ContentResolver;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/GoogleWebContentHelper;->setUrls(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {p1, v2}, Lcom/google/android/setupwizard/NoAccountTosActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/GoogleWebContentHelper;->setUnsuccessfulMessage(Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/common/GoogleWebContentHelper;->loadUrl()Lcom/google/android/common/GoogleWebContentHelper;

    .line 195
    invoke-virtual {p2}, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;->getTitleResId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;->setTitle(I)V

    .line 196
    const/4 v1, -0x1

    const v2, 0x7f090012

    invoke-virtual {p1, v2}, Lcom/google/android/setupwizard/NoAccountTosActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog$1;

    invoke-direct {v3, p0}, Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog$1;-><init>(Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-virtual {v1}, Lcom/google/android/common/GoogleWebContentHelper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;->setView(Landroid/view/View;)V

    .line 205
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/common/GoogleWebContentHelper;->handleKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
