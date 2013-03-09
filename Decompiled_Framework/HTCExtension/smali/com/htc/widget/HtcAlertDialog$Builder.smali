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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    return-void
.end method


# virtual methods
.method public create()Lcom/htc/widget/HtcAlertDialog;
    .locals 3

    new-instance v0, Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v2, v0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcAlertController$AlertParams;->apply(Lcom/htc/app/HtcAlertController;)V

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAutoLinkMask:I

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleCenterEnabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitleCenter:Z

    return-object p0
.end method

.method public setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitleDivider:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingTop:I

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p4, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingRight:I

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p5, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    return-object p0
.end method

.method public show()Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    return-object v0
.end method
