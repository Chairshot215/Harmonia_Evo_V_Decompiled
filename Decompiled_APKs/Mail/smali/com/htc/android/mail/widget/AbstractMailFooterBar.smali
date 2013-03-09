.class public abstract Lcom/htc/android/mail/widget/AbstractMailFooterBar;
.super Lcom/htc/widget/HtcFooter;
.source "AbstractMailFooterBar.java"


# static fields
.field private static final DEFAULT_TEXT:I = 0x7f0b0291


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;
    .locals 1
    .parameter "index"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/MailFooterBarButton;

    return-object v0
.end method

.method init(I)V
    .locals 4
    .parameter "buttonNumber"

    .prologue
    const/4 v3, 0x0

    .line 27
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 28
    new-instance v0, Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, b:Lcom/htc/android/mail/widget/MailFooterBarButton;
    const v2, 0x7f0b0291

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 30
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 31
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->addView(Landroid/view/View;)V

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v0           #b:Lcom/htc/android/mail/widget/MailFooterBarButton;
    :cond_0
    return-void
.end method
