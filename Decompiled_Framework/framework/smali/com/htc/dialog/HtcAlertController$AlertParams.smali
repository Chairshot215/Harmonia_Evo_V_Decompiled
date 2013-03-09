.class public Lcom/htc/dialog/HtcAlertController$AlertParams;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dialog/HtcAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mDefaultIcon:Z

.field public mForceInverseBackground:Z

.field public mHtcContext:Landroid/content/Context;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonDisabled:Z

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonDisabled:Z

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonDisabled:Z

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleCenter:Z

.field public mTitleDivider:Z

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    iput v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    iput-boolean v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    iput-boolean v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleDivider:Z

    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleCenter:Z

    iput-boolean v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mDefaultIcon:Z

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    :try_start_0
    const-string v1, "com.htc"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private createListView(Lcom/htc/dialog/HtcAlertController;)V
    .locals 11

    const v4, 0x1020014

    const/4 v10, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x20900ac

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    if-eqz v6, :cond_0

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    const-string/jumbo v3, "list_selector_holo_dark"

    invoke-static {v1, v3, v5}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelector(I)V

    :cond_0
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_5

    new-instance v0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    const v3, 0x20900ae

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/dialog/HtcAlertController$AlertParams$1;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    :goto_0
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    :cond_1
    #setter for: Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/htc/dialog/HtcAlertController;->access$802(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    #setter for: Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lcom/htc/dialog/HtcAlertController;->access$902(Lcom/htc/dialog/HtcAlertController;I)I

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_a

    new-instance v1, Lcom/htc/dialog/HtcAlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams$3;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Lcom/htc/dialog/HtcAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_3
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_b

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_4
    :goto_2
    #setter for: Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v6}, Lcom/htc/dialog/HtcAlertController;->access$1002(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    return-void

    :cond_5
    new-instance v0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;

    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/dialog/HtcAlertController$AlertParams$2;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;)V

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_7

    const v2, 0x20900af

    :goto_3
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    :goto_4
    goto :goto_0

    :cond_7
    const v2, 0x20900ad

    goto :goto_3

    :cond_8
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v8, v10, [Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v9, v8, v5

    new-array v9, v10, [I

    aput v4, v9, v5

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_0

    :cond_a
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/htc/dialog/HtcAlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams$4;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/widget/ListView;Lcom/htc/dialog/HtcAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    :cond_b
    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/htc/dialog/HtcAlertController;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setCustomTitle(Landroid/view/View;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v5, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_3
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_4
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    invoke-virtual {p1, v5, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    :cond_5
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    invoke-virtual {p1, v3, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    :cond_6
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    invoke-virtual {p1, v4, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    :cond_7
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setInverseBackgroundForced(Z)V

    :cond_8
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_a

    :cond_9
    invoke-direct {p0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams;->createListView(Lcom/htc/dialog/HtcAlertController;)V

    :cond_a
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;IIII)V

    :cond_b
    :goto_1
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleDivider:Z

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setTitleDividerVisible(Z)V

    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleCenter:Z

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setTitleCenterEnabled(Z)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    iget v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setIcon(I)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;)V

    goto :goto_1
.end method
