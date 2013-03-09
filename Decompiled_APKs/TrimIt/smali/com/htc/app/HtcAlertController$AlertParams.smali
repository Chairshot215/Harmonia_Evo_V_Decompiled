.class public Lcom/htc/app/HtcAlertController$AlertParams;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/HtcAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mAutoLinkMask:I

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

.field public mOnPrepareListViewListener:Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;

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
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1044
    iput v3, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 1133
    iput-boolean v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1149
    iput v3, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 1170
    iput-boolean v2, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 1201
    iput-boolean v2, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitleDivider:Z

    .line 1205
    iput-boolean v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitleCenter:Z

    .line 1209
    iput-boolean v2, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mDefaultIcon:Z

    .line 1215
    iput v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mAutoLinkMask:I

    .line 1234
    iput-object p1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1237
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    :goto_0
    iput-boolean v2, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mCancelable:Z

    .line 1244
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1245
    return-void

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private createListView(Lcom/htc/app/HtcAlertController;)V
    .locals 11
    .parameter "dialog"

    .prologue
    const v4, 0x1020014

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1327
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x20900ac

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 1329
    .local v6, listView:Landroid/widget/ListView;
    if-eqz v6, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    const-string v3, "list_selector_background"

    const v8, 0x1080062

    invoke-static {v1, v3, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 1331
    .local v7, bkgId:I
    if-eqz v7, :cond_0

    .line 1332
    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelector(I)V

    .line 1336
    .end local v7           #bkgId:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_6

    .line 1337
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_5

    .line 1338
    new-instance v0, Lcom/htc/app/HtcAlertController$AlertParams$1;

    iget-object v2, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    const v3, 0x20900ae

    iget-object v5, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/app/HtcAlertController$AlertParams$1;-><init>(Lcom/htc/app/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 1392
    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_1

    .line 1393
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1399
    :cond_1
    #setter for: Lcom/htc/app/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/htc/app/HtcAlertController;->access$802(Lcom/htc/app/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1400
    iget v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    #setter for: Lcom/htc/app/HtcAlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lcom/htc/app/HtcAlertController;->access$902(Lcom/htc/app/HtcAlertController;I)I

    .line 1402
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_a

    .line 1403
    new-instance v1, Lcom/htc/app/HtcAlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/htc/app/HtcAlertController$AlertParams$3;-><init>(Lcom/htc/app/HtcAlertController$AlertParams;Lcom/htc/app/HtcAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1424
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_3

    .line 1425
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1428
    :cond_3
    iget-boolean v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_b

    .line 1429
    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1433
    :cond_4
    :goto_2
    #setter for: Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v6}, Lcom/htc/app/HtcAlertController;->access$1002(Lcom/htc/app/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1434
    return-void

    .line 1353
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_5
    new-instance v0, Lcom/htc/app/HtcAlertController$AlertParams$2;

    iget-object v3, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/app/HtcAlertController$AlertParams$2;-><init>(Lcom/htc/app/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1381
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_6
    iget-boolean v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_7

    const v2, 0x20900af

    .line 1383
    .local v2, layout:I
    :goto_3
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_9

    .line 1384
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_0

    .line 1381
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #layout:I
    :cond_7
    const v2, 0x20900ad

    goto :goto_3

    .line 1384
    .restart local v2       #layout:I
    :cond_8
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_4

    .line 1387
    :cond_9
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v8, v10, [Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v9, v8, v5

    new-array v9, v10, [I

    aput v4, v9, v5

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1411
    .end local v2           #layout:I
    :cond_a
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_2

    .line 1412
    new-instance v1, Lcom/htc/app/HtcAlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/htc/app/HtcAlertController$AlertParams$4;-><init>(Lcom/htc/app/HtcAlertController$AlertParams;Landroid/widget/ListView;Lcom/htc/app/HtcAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1430
    :cond_b
    iget-boolean v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_4

    .line 1431
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/htc/app/HtcAlertController;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 1252
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1253
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/app/HtcAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 1265
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1267
    iget v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mAutoLinkMask:I

    if-nez v0, :cond_f

    .line 1268
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/htc/app/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1273
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1274
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v5, v0, v1, v2}, Lcom/htc/app/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1277
    :cond_2
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1278
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/htc/app/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1281
    :cond_3
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1282
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/htc/app/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1286
    :cond_4
    iget-boolean v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    if-eqz v0, :cond_5

    .line 1287
    iget-boolean v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    invoke-virtual {p1, v5, v0}, Lcom/htc/app/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1289
    :cond_5
    iget-boolean v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    if-eqz v0, :cond_6

    .line 1290
    iget-boolean v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    invoke-virtual {p1, v3, v0}, Lcom/htc/app/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1292
    :cond_6
    iget-boolean v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    if-eqz v0, :cond_7

    .line 1293
    iget-boolean v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    invoke-virtual {p1, v4, v0}, Lcom/htc/app/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1296
    :cond_7
    iget-boolean v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    if-nez v0, :cond_8

    .line 1297
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/app/HtcAlertController;->setInverseBackgroundForced(Z)V

    .line 1301
    :cond_8
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_a

    .line 1302
    :cond_9
    invoke-direct {p0, p1}, Lcom/htc/app/HtcAlertController$AlertParams;->createListView(Lcom/htc/app/HtcAlertController;)V

    .line 1304
    :cond_a
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1305
    iget-boolean v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_10

    .line 1306
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/HtcAlertController;->setView(Landroid/view/View;IIII)V

    .line 1313
    :cond_b
    :goto_2
    iget-boolean v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitleDivider:Z

    invoke-virtual {p1, v0}, Lcom/htc/app/HtcAlertController;->setTitleDividerVisible(Z)V

    .line 1314
    iget-boolean v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitleCenter:Z

    invoke-virtual {p1, v0}, Lcom/htc/app/HtcAlertController;->setTitleCenterEnabled(Z)V

    .line 1323
    return-void

    .line 1255
    :cond_c
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    .line 1256
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1258
    :cond_d
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 1259
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/htc/app/HtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1261
    :cond_e
    iget v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_0

    .line 1262
    iget v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/htc/app/HtcAlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 1270
    :cond_f
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mAutoLinkMask:I

    invoke-virtual {p1, v0, v1}, Lcom/htc/app/HtcAlertController;->setMessage(Ljava/lang/CharSequence;I)V

    goto/16 :goto_1

    .line 1309
    :cond_10
    iget-object v0, p0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/app/HtcAlertController;->setView(Landroid/view/View;)V

    goto :goto_2
.end method
