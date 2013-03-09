.class public Lcom/htc/android/mail/widget/MailFooterBar3Btn;
.super Lcom/htc/android/mail/widget/AbstractMailFooterBar;
.source "MailFooterBar3Btn.java"


# static fields
.field private static final BUTTON_NUMBER:I = 0x3

.field private static final LEFT_BUTTON_INDEX:I = 0x0

.field private static final MIDDLE_BUTTON_INDEX:I = 0x1

.field private static final RIGHT_BUTTON_INDEX:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailFooterBar3Btn;->init(I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailFooterBar3Btn;->init(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailFooterBar3Btn;->init(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public getLeftButton()Lcom/htc/android/mail/widget/MailFooterBarButton;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailFooterBar3Btn;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v0

    return-object v0
.end method

.method public getMiddleButton()Lcom/htc/android/mail/widget/MailFooterBarButton;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailFooterBar3Btn;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v0

    return-object v0
.end method

.method public getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailFooterBar3Btn;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v0

    return-object v0
.end method
