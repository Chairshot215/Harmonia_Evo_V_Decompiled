.class public Lcom/android/camera/rotate/RotateDialog$Builder;
.super Ljava/lang/Object;
.source "RotateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/rotate/RotateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    return-void
.end method


# virtual methods
.method public create()Lcom/android/camera/rotate/RotateDialog;
    .locals 3

    new-instance v0, Lcom/android/camera/rotate/RotateDialog;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/rotate/RotateDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    #getter for: Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;
    invoke-static {v0}, Lcom/android/camera/rotate/RotateDialog;->access$000(Lcom/android/camera/rotate/RotateDialog;)Lcom/android/camera/rotate/RotateHtcAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->apply(Lcom/android/camera/rotate/RotateHtcAlertController;)V

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mForceInverseBackground:Z

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButtonDisabled(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButtonDisabled(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButtonDisabled(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleCenterEnabled(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 0

    return-object p0
.end method

.method public setTitleDividerVisible(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitleDivider:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingLeft:I

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingTop:I

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p4, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingRight:I

    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p5, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingBottom:I

    return-object p0
.end method

.method public show()Lcom/android/camera/rotate/RotateDialog;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateDialog;->show()V

    return-object v0
.end method
