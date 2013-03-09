.class public Lcom/htc/android/mail/widget/MailFooterBarButton;
.super Lcom/htc/widget/HtcFooterButton;
.source "MailFooterBarButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public enableButton(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 25
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setTextColor(I)V

    .line 30
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setEnabled(Z)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setFocusable(Z)V

    .line 32
    return-void

    .line 28
    :cond_0
    const v0, 0x33ffffff

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setTextColor(I)V

    goto :goto_0
.end method
