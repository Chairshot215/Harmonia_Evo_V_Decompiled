.class public Lcom/htc/widget/HtcAlertDialog$Builder;
.super Ljava/lang/Object;
.source "HtcAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final P:Lcom/htc/app/HtcAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    new-instance v0, Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 543
    return-void
.end method


# virtual methods
.method public create()Lcom/htc/widget/HtcAlertDialog;
    .locals 3

    .prologue
    .line 1117
    new-instance v0, Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 1118
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v2, v0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcAlertController$AlertParams;->apply(Lcom/htc/app/HtcAlertController;)V

    .line 1119
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 1120
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1121
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1124
    :cond_0
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 813
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 814
    return-object p0
.end method

.method public setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 752
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCancelable:Z

    .line 753
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "cursor"
    .parameter "listener"
    .parameter "labelColumn"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 832
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 833
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 834
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 578
    return-object p0
.end method

.method public setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "iconId"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 616
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 626
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "useInverseBackground"

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 1080
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 785
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 786
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 797
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 798
    return-object p0
.end method

.method public setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 588
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 598
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 604
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAutoLinkMask:I

    .line 605
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 857
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 858
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 859
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 860
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 861
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "isCheckedColumn"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 912
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 913
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 914
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 915
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 916
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 884
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 885
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 886
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 887
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 703
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 704
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 716
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 717
    return-object p0
.end method

.method public setNegativeButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    .line 677
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 729
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 730
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 742
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 743
    return-object p0
.end method

.method public setNeutralButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    .line 665
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "onCancelListener"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 764
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1023
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "onKeyListener"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 774
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 638
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 639
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 690
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 691
    return-object p0
.end method

.method public setPositiveButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    .line 653
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 937
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 938
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 939
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 940
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "checkedItem"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 961
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 962
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 963
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 964
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 965
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 966
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "adapter"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1007
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1008
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 1009
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 1010
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 984
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 985
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 986
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 987
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 988
    return-object p0
.end method

.method public setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "titleId"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 552
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 562
    return-object p0
.end method

.method public setTitleCenterEnabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "enable"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitleCenter:Z

    .line 1106
    return-object p0
.end method

.method public setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "visible"

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitleDivider:Z

    .line 1094
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "view"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 1036
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1037
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 1062
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1063
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    .line 1064
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingTop:I

    .line 1065
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p4, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingRight:I

    .line 1066
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p5, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    .line 1067
    return-object p0
.end method

.method public show()Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1133
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1134
    return-object v0
.end method
