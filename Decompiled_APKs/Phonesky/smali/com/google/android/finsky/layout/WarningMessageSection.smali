.class public Lcom/google/android/finsky/layout/WarningMessageSection;
.super Landroid/widget/TextView;
.source "WarningMessageSection.java"


# instance fields
.field private mAdjustedDrawable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/WarningMessageSection;->mAdjustedDrawable:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/WarningMessageSection;->mAdjustedDrawable:Z

    .line 41
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Landroid/widget/ImageView;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)V
    .locals 25
    .parameter "document"
    .parameter "icon"
    .parameter "toc"
    .parameter "libraries"
    .parameter "currentAccount"

    .prologue
    .line 45
    invoke-virtual/range {p4 .. p5}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v5

    .line 46
    .local v5, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v5}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v15

    .line 47
    .local v15, isAvailable:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->hasWarningMessage()Z

    move-result v11

    .line 48
    .local v11, hasWarningMessage:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v18, 0x1

    .line 52
    .local v18, ownedByNonCurrentAccount:Z
    :goto_0
    if-eqz v15, :cond_2

    if-nez v11, :cond_2

    if-nez v18, :cond_2

    .line 53
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/WarningMessageSection;->setVisibility(I)V

    .line 90
    :cond_0
    :goto_1
    return-void

    .line 48
    .end local v18           #ownedByNonCurrentAccount:Z
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 57
    .restart local v18       #ownedByNonCurrentAccount:Z
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/WarningMessageSection;->setVisibility(I)V

    .line 59
    if-nez v15, :cond_3

    .line 60
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/utils/DocUtils;->getAvailabilityRestrictionResourceId(Lcom/google/android/finsky/api/model/Document;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/WarningMessageSection;->setText(I)V

    .line 71
    :goto_2
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/layout/WarningMessageSection;->mAdjustedDrawable:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 72
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/finsky/layout/WarningMessageSection;->mAdjustedDrawable:Z

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/WarningMessageSection;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 74
    .local v9, drawables:[Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    aget-object v16, v9, v20

    .line 77
    .local v16, left:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 78
    .local v8, drawableWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 79
    .local v14, iconWidth:I
    sub-int v20, v14, v8

    div-int/lit8 v7, v20, 0x2

    .line 81
    .local v7, diff:I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 82
    .local v12, iconLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v20

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v13, v20, v21

    .line 84
    .local v13, iconRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/WarningMessageSection;->getPaddingLeft()I

    move-result v10

    .line 85
    .local v10, existingPadding:I
    add-int v20, v10, v7

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/layout/WarningMessageSection;->setPadding(IIII)V

    .line 87
    add-int v6, v7, v13

    .line 88
    .local v6, compoundPadding:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/layout/WarningMessageSection;->setCompoundDrawablePadding(I)V

    goto :goto_1

    .line 61
    .end local v6           #compoundPadding:I
    .end local v7           #diff:I
    .end local v8           #drawableWidth:I
    .end local v9           #drawables:[Landroid/graphics/drawable/Drawable;
    .end local v10           #existingPadding:I
    .end local v12           #iconLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v13           #iconRight:I
    .end local v14           #iconWidth:I
    .end local v16           #left:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v11, :cond_4

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getWarningMessage()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/WarningMessageSection;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/WarningMessageSection;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_2

    .line 65
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwners(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;)Ljava/util/List;

    move-result-object v19

    .line 66
    .local v19, owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/WarningMessageSection;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x7f070213

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/accounts/Account;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 68
    .local v17, message:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/WarningMessageSection;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/WarningMessageSection;->mAdjustedDrawable:Z

    .line 95
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 96
    return-void
.end method
