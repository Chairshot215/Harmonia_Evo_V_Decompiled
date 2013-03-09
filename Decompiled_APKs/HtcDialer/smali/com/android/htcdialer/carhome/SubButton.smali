.class public Lcom/android/htcdialer/carhome/SubButton;
.super Landroid/widget/ImageView;
.source "SubButton.java"


# instance fields
.field mTouched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/htcdialer/carhome/SubButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htcdialer/carhome/SubButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/SubButton;->mTouched:Z

    .line 21
    return-void
.end method


# virtual methods
.method public isTouched()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/htcdialer/carhome/SubButton;->mTouched:Z

    return v0
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/htcdialer/carhome/SubButton;->mTouched:Z

    if-nez v0, :cond_0

    .line 34
    const/4 p1, 0x0

    .line 35
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 36
    return-void
.end method

.method public setTouched(Z)V
    .locals 0
    .parameter "touching"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/htcdialer/carhome/SubButton;->mTouched:Z

    .line 25
    return-void
.end method
