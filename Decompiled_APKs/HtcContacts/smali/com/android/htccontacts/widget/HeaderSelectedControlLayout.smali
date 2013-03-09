.class public Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;
.super Lcom/android/htccontacts/widget/HtcListItemBuilder;
.source "HeaderSelectedControlLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;
    }
.end annotation


# instance fields
.field private mCaller:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;

.field private mDeSelectAllButton:Landroid/widget/Button;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectAllButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;Landroid/content/Context;Z)V
    .locals 1
    .parameter "caller"
    .parameter "context"
    .parameter "defaultChecked"

    .prologue
    .line 44
    const/16 v0, 0x67

    invoke-direct {p0, p2, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object p1, p0, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->mCaller:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;

    .line 46
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->init(Z)V

    .line 47
    return-void
.end method


# virtual methods
.method protected init(Z)V
    .locals 2
    .parameter "defaultChecked"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    const v1, 0x7f0a0235

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    .line 53
    return-void
.end method

.method public onItemClick(Z)V
    .locals 4
    .parameter "isHeader"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 60
    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemCheckBox;->isChecked()Z

    move-result v0

    .line 63
    .local v0, isChecked:Z
    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    .line 64
    iget-object v1, p0, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->mCaller:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;

    if-nez v0, :cond_1

    :goto_1
    invoke-interface {v1, v2}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;->onHeaderViewClicked(Z)V

    .line 69
    .end local v0           #isChecked:Z
    :goto_2
    return-void

    .restart local v0       #isChecked:Z
    :cond_0
    move v1, v3

    .line 63
    goto :goto_0

    :cond_1
    move v2, v3

    .line 64
    goto :goto_1

    .line 67
    .end local v0           #isChecked:Z
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->mCaller:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;

    invoke-interface {v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;->updateHeaderCheckedBox()V

    goto :goto_2
.end method

.method public setSelectedText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 57
    return-void
.end method
