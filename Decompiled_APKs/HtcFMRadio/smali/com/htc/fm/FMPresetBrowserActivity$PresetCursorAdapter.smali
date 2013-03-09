.class Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;
.super Lcom/htc/fm/HTCCursorAdapter;
.source "FMPresetBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMPresetBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresetCursorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

.field private mAlphabet:Ljava/lang/StringBuffer;

.field private mAlphabetColumnIndex:I

.field mArtistIdx:I

.field mNumAlbumsIdx:I

.field mNumSongsIdx:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mResources:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/htc/fm/FMPresetBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/fm/FMPresetBrowserActivity;Landroid/content/Context;Lcom/htc/fm/FMPresetBrowserActivity;Landroid/database/Cursor;[II)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "currentActivity"
    .parameter "cursor"
    .parameter "layoutlist"
    .parameter "cacheCapacity"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 838
    iput-object p1, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v4, p5

    move v5, p6

    .line 840
    invoke-direct/range {v0 .. v5}, Lcom/htc/fm/HTCCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z[II)V

    .line 726
    iput v6, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mArtistIdx:I

    .line 728
    iput v6, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mNumAlbumsIdx:I

    .line 730
    iput v6, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mNumSongsIdx:I

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mResources:Landroid/content/res/Resources;

    .line 740
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    .line 835
    iput v3, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mAlphabetColumnIndex:I

    .line 842
    iput-object p3, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

    .line 843
    new-instance v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter$QueryHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter$QueryHandler;-><init>(Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 845
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mResources:Landroid/content/res/Resources;

    .line 846
    return-void
.end method

.method static synthetic access$000(Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->goToNewPreset()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 724
    invoke-direct {p0, p1}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->getCursor4NewMode(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;)Lcom/htc/fm/FMPresetBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

    return-object v0
.end method

.method private bindArtist(Landroid/view/View;Landroid/database/Cursor;ZZZ)Landroid/view/View;
    .locals 24
    .parameter "view"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "isShowTop"
    .parameter "isSelected"

    .prologue
    .line 904
    const v19, 0x202010b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 905
    .local v16, roundTop:Landroid/widget/ImageView;
    if-eqz p4, :cond_2

    .line 906
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 910
    :goto_0
    const v19, 0x202010f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 912
    .local v4, deleteCheck:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I
    invoke-static/range {v19 .. v19}, Lcom/htc/fm/FMPresetBrowserActivity;->access$500(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 913
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 914
    if-eqz p5, :cond_3

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mDeleteCheckedIcon:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v19 .. v19}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1700(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 922
    :goto_1
    const v19, 0x202010c

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 923
    .local v8, freqView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const-string v21, "list_primary_m"

    const-string v22, "style"

    const-string v23, "com.htc"

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 924
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 925
    .local v13, para:Landroid/view/ViewGroup$LayoutParams;
    const/16 v19, -0x2

    move/from16 v0, v19

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object v14, v13

    .line 926
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 927
    .local v14, paraMargin:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v19, 0xe

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 929
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->toFreq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 930
    .local v9, frequency:Ljava/lang/String;
    const/4 v6, 0x0

    .line 931
    .local v6, freq:I
    if-nez v9, :cond_5

    .line 932
    const/4 v6, 0x0

    .line 944
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->getFreqText(I)Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1900(Lcom/htc/fm/FMPresetBrowserActivity;I)Ljava/lang/String;

    move-result-object v7

    .line 945
    .local v7, freqText:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f09011e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    const v19, 0x202010d

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 948
    .local v12, mhzView:Landroid/widget/TextView;
    const v19, 0x7f09011e

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 949
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 951
    const v19, 0x202010e

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 952
    .local v18, titleView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const-string v21, "list_primary_m"

    const-string v22, "style"

    const-string v23, "com.htc"

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 955
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 956
    .local v11, marginlayoutparams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->PresetTitleMarginRight:I
    invoke-static/range {v21 .. v21}, Lcom/htc/fm/FMPresetBrowserActivity;->access$2000(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result v21

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 959
    const/16 v19, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 960
    .local v17, title:Ljava/lang/String;
    const/16 v19, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 961
    .local v15, rds:Ljava/lang/String;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_6

    .line 962
    :cond_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    :goto_3
    const v19, 0x2020110

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 968
    .local v10, iconNowplaying:Landroid/widget/ImageView;
    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_1

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mDrawableNowPlaying:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v19 .. v19}, Lcom/htc/fm/FMPresetBrowserActivity;->access$2100(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 971
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I
    invoke-static/range {v19 .. v19}, Lcom/htc/fm/FMPresetBrowserActivity;->access$300(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result v19

    move/from16 v0, v19

    if-ne v6, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I
    invoke-static/range {v19 .. v19}, Lcom/htc/fm/FMPresetBrowserActivity;->access$500(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 972
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 977
    :goto_4
    return-object p1

    .line 908
    .end local v4           #deleteCheck:Landroid/widget/ImageView;
    .end local v6           #freq:I
    .end local v7           #freqText:Ljava/lang/String;
    .end local v8           #freqView:Landroid/widget/TextView;
    .end local v9           #frequency:Ljava/lang/String;
    .end local v10           #iconNowplaying:Landroid/widget/ImageView;
    .end local v11           #marginlayoutparams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12           #mhzView:Landroid/widget/TextView;
    .end local v13           #para:Landroid/view/ViewGroup$LayoutParams;
    .end local v14           #paraMargin:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v15           #rds:Ljava/lang/String;
    .end local v17           #title:Ljava/lang/String;
    .end local v18           #titleView:Landroid/widget/TextView;
    :cond_2
    const/16 v19, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 917
    .restart local v4       #deleteCheck:Landroid/widget/ImageView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mDeleteUnCheckedIcon:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v19 .. v19}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1800(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 919
    :cond_4
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 937
    .restart local v6       #freq:I
    .restart local v8       #freqView:Landroid/widget/TextView;
    .restart local v9       #frequency:Ljava/lang/String;
    .restart local v13       #para:Landroid/view/ViewGroup$LayoutParams;
    .restart local v14       #paraMargin:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto/16 :goto_2

    .line 939
    :catch_0
    move-exception v5

    .line 941
    .local v5, e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 964
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #freqText:Ljava/lang/String;
    .restart local v11       #marginlayoutparams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v12       #mhzView:Landroid/widget/TextView;
    .restart local v15       #rds:Ljava/lang/String;
    .restart local v17       #title:Ljava/lang/String;
    .restart local v18       #titleView:Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 974
    .restart local v10       #iconNowplaying:Landroid/widget/ImageView;
    :cond_7
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method private bubleSort([C)[C
    .locals 6
    .parameter "charArray"

    .prologue
    .line 1116
    if-nez p1, :cond_1

    .line 1117
    const/4 p1, 0x0

    .line 1128
    .end local p1
    :cond_0
    return-object p1

    .line 1118
    .restart local p1
    :cond_1
    array-length v2, p1

    .line 1119
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1120
    add-int/lit8 v1, v0, 0x1

    .local v1, j:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1121
    aget-char v4, p1, v0

    aget-char v5, p1, v1

    if-ge v4, v5, :cond_2

    .line 1122
    aget-char v3, p1, v1

    .line 1123
    .local v3, tmpChar:C
    aget-char v4, p1, v0

    aput-char v4, p1, v1

    .line 1124
    aput-char v3, p1, v0

    .line 1120
    .end local v3           #tmpChar:C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1119
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getCursor4EditMode()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 817
    const-string v4, "FMPresetBrowserActivity"

    const-string v5, "[FMPresetBrowserActivity]@@@@ getCursor4NewMode() - 2"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v2, firstList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 820
    .local v3, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    invoke-virtual {v2, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 828
    new-instance v1, Lcom/htc/fm/ArrayListCursor;

    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v4, v4, Lcom/htc/fm/FMPresetBrowserActivity;->mPresetCols:[Ljava/lang/String;

    invoke-direct {v1, v4, v2}, Lcom/htc/fm/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 829
    .local v1, firstCursor:Lcom/htc/fm/ArrayListCursor;
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/database/Cursor;

    aput-object v1, v4, v6

    invoke-direct {v0, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 832
    .local v0, cursor:Landroid/database/Cursor;
    return-object v0
.end method

.method private getCursor4NewMode(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .parameter "originalCursor"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 792
    const-string v4, "FMPresetBrowserActivity"

    const-string v5, "[FMPresetBrowserActivity]@@@@ getCursor4NewMode()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mSupportAddBtnOnTitle:Z
    invoke-static {v4}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1500(Lcom/htc/fm/FMPresetBrowserActivity;)Z

    move-result v4

    if-ne v4, v7, :cond_0

    .line 812
    .end local p1
    :goto_0
    return-object p1

    .line 798
    .restart local p1
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v2, firstList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 800
    .local v3, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    const-string v4, "Click to add!"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    invoke-virtual {v2, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 808
    new-instance v1, Lcom/htc/fm/ArrayListCursor;

    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v4, v4, Lcom/htc/fm/FMPresetBrowserActivity;->mPresetCols:[Ljava/lang/String;

    invoke-direct {v1, v4, v2}, Lcom/htc/fm/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 809
    .local v1, firstCursor:Lcom/htc/fm/ArrayListCursor;
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    aput-object v1, v4, v6

    aput-object p1, v4, v7

    invoke-direct {v0, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v0, cursor:Landroid/database/Cursor;
    move-object p1, v0

    .line 812
    goto :goto_0
.end method

.method private goToNewPreset()V
    .locals 4

    .prologue
    .line 1062
    const-string v1, "FMPresetBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMPresetBrowserActivity]@@@@ #### goToNewPreset() - fm_freq("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I
    invoke-static {v3}, Lcom/htc/fm/FMPresetBrowserActivity;->access$300(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") fm_title("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/fm/FMPresetBrowserActivity;->access$700(Lcom/htc/fm/FMPresetBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v1, v1, Lcom/htc/fm/FMPresetBrowserActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/htc/fm/FMPresetEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1064
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "fm_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1065
    const-string v1, "fm_rowid"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1066
    const-string v1, "fm_freq"

    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$300(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    const-string v1, "fm_title"

    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$700(Lcom/htc/fm/FMPresetBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    const/16 v2, 0x6f

    invoke-virtual {v1, v0, v2}, Lcom/htc/fm/FMPresetBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1069
    return-void
.end method

.method private setAlphabet(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1088
    if-nez p1, :cond_1

    .line 1113
    :cond_0
    return-void

    .line 1091
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1094
    iget v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mAlphabetColumnIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, artist:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_2

    .line 1096
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, word:Ljava/lang/String;
    const-string v2, "FMPresetBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 1099
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1100
    const-string v2, "FMPresetBrowserActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    .end local v1           #word:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1104
    iget v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mAlphabetColumnIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1105
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_2

    .line 1106
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1107
    .restart local v1       #word:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 1108
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1109
    const-string v2, "FMPresetBrowserActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private toFreq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "preFreq"

    .prologue
    .line 894
    if-nez p1, :cond_1

    .line 895
    const/4 p1, 0x0

    .line 898
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 896
    .restart local p1
    :cond_1
    const-string v0, "htcfm://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 898
    const-string v0, "htcfm://"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/database/Cursor;IIIZZ)Landroid/view/View;
    .locals 6
    .parameter "view"
    .parameter "cursor"
    .parameter "level"
    .parameter "cursorPosition"
    .parameter "position"
    .parameter "isExpanded"
    .parameter "isSelected"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 859
    packed-switch p3, :pswitch_data_0

    .line 890
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 862
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I
    invoke-static {v0}, Lcom/htc/fm/FMPresetBrowserActivity;->access$500(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result v0

    if-nez v0, :cond_3

    .line 868
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mSupportAddBtnOnTitle:Z
    invoke-static {v0}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1500(Lcom/htc/fm/FMPresetBrowserActivity;)Z

    move-result v0

    if-ne v0, v5, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p6

    move v5, p7

    .line 870
    invoke-direct/range {v0 .. v5}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->bindArtist(Landroid/view/View;Landroid/database/Cursor;ZZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 874
    :cond_1
    if-nez p5, :cond_2

    .line 876
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mPresetAddView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1600(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 878
    :cond_2
    if-ne p5, v5, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p6

    move v5, p7

    .line 879
    invoke-direct/range {v0 .. v5}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->bindArtist(Landroid/view/View;Landroid/database/Cursor;ZZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 882
    :cond_3
    if-nez p5, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p6

    move v4, v5

    move v5, p7

    .line 883
    invoke-direct/range {v0 .. v5}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->bindArtist(Landroid/view/View;Landroid/database/Cursor;ZZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p6

    move v5, p7

    .line 885
    invoke-direct/range {v0 .. v5}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->bindArtist(Landroid/view/View;Landroid/database/Cursor;ZZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 1133
    iget-object v5, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v5, v5, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eq p1, v5, :cond_3

    .line 1134
    iget-object v5, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

    iput-object p1, v5, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 1135
    invoke-direct {p0, p1}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->setAlphabet(Landroid/database/Cursor;)V

    .line 1136
    iget-object v5, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1137
    .local v0, charArray:[C
    array-length v3, v0

    .line 1138
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1139
    add-int/lit8 v2, v1, 0x1

    .local v2, j:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1140
    aget-char v5, v0, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    aget-char v6, v0, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 1141
    aget-char v4, v0, v2

    .line 1142
    .local v4, tmpChar:C
    aget-char v5, v0, v1

    aput-char v5, v0, v2

    .line 1143
    aput-char v4, v0, v1

    .line 1139
    .end local v4           #tmpChar:C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1138
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1147
    .end local v2           #j:I
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/fm/HTCCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1149
    .end local v0           #charArray:[C
    .end local v1           #i:I
    .end local v3           #length:I
    :cond_3
    return-void
.end method

.method public changeMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 764
    const-string v1, "FMPresetBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMPresetBrowserActivity]@@@@ changeMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - 3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->getPresetCursor(Landroid/content/AsyncQueryHandler;I)Landroid/database/Cursor;
    invoke-static {v1, v5, v4}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1400(Lcom/htc/fm/FMPresetBrowserActivity;Landroid/content/AsyncQueryHandler;I)Landroid/database/Cursor;

    move-result-object v0

    .line 766
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 767
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 768
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    const/4 v2, 0x0

    #setter for: Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I
    invoke-static {v1, v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$502(Lcom/htc/fm/FMPresetBrowserActivity;I)I

    .line 769
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I
    invoke-static {v1}, Lcom/htc/fm/FMPresetBrowserActivity;->access$500(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result p1

    .line 773
    :cond_1
    const-string v1, "FMPresetBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMPresetBrowserActivity]@@@@ changeMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - 4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    packed-switch p1, :pswitch_data_0

    .line 787
    :goto_0
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 788
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->setTitle()V
    invoke-static {v1}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1300(Lcom/htc/fm/FMPresetBrowserActivity;)V

    .line 789
    return-void

    .line 777
    :pswitch_0
    const-string v1, "FMPresetBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMPresetBrowserActivity]@@@@ changeMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - 5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-direct {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->getCursor4NewMode(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 779
    goto :goto_0

    .line 781
    :pswitch_1
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->getPresetCursor(Landroid/content/AsyncQueryHandler;I)Landroid/database/Cursor;
    invoke-static {v1, v5, v4}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1400(Lcom/htc/fm/FMPresetBrowserActivity;Landroid/content/AsyncQueryHandler;I)Landroid/database/Cursor;

    move-result-object v0

    .line 782
    goto :goto_0

    .line 775
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public exportSelected(IILandroid/database/Cursor;)V
    .locals 4
    .parameter "level"
    .parameter "cursorPosition"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 1073
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/fm/FMPresetBrowserActivity;->access$800(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/fm/FMPresetBrowserActivity;->access$800(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1075
    :cond_0
    if-nez p3, :cond_1

    .line 1085
    :goto_0
    return-void

    .line 1077
    :cond_1
    const-string v0, "FMPresetBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMPresetBrowserActivity]deleteRow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1083
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mArraySeletcedId:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/fm/FMPresetBrowserActivity;->access$600(Lcom/htc/fm/FMPresetBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    const-string v0, "FMPresetBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMPresetBrowserActivity]deleteRow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;
    .locals 1
    .parameter "parentCursor"
    .parameter "cursorPosition"
    .parameter "position"
    .parameter "level"

    .prologue
    .line 983
    const/4 v0, 0x0

    .line 984
    .local v0, cursor:Landroid/database/Cursor;
    packed-switch p4, :pswitch_data_0

    .line 994
    :pswitch_0
    return-object v0

    .line 984
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "flatListPos"

    .prologue
    .line 1180
    if-nez p1, :cond_0

    .line 1182
    const/4 v0, 0x0

    .line 1184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 1168
    const/4 v0, 0x0

    return v0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1172
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1190
    const/4 v0, 0x2

    return v0
.end method

.method public onClick(Landroid/view/View;Landroid/database/Cursor;IIIZ)V
    .locals 6
    .parameter "view"
    .parameter "cursor"
    .parameter "cursorPosition"
    .parameter "level"
    .parameter "position"
    .parameter "isExpanded"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1001
    if-nez p2, :cond_1

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

    if-eqz v2, :cond_0

    .line 1007
    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 1010
    :pswitch_0
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$500(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 1013
    :pswitch_1
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mSupportAddBtnOnTitle:Z
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1500(Lcom/htc/fm/FMPresetBrowserActivity;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1015
    invoke-interface {p2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1016
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1017
    .local v1, id:I
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->tune2Channel(I)V
    invoke-static {v2, v1}, Lcom/htc/fm/FMPresetBrowserActivity;->access$2200(Lcom/htc/fm/FMPresetBrowserActivity;I)V

    .line 1030
    :goto_1
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    invoke-virtual {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->finish()V

    goto :goto_0

    .line 1021
    .end local v1           #id:I
    :cond_2
    if-nez p5, :cond_3

    .line 1022
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->goToNewPreset()V

    goto :goto_0

    .line 1025
    :cond_3
    invoke-interface {p2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1026
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1027
    .restart local v1       #id:I
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->tune2Channel(I)V
    invoke-static {v2, v1}, Lcom/htc/fm/FMPresetBrowserActivity;->access$2200(Lcom/htc/fm/FMPresetBrowserActivity;I)V

    goto :goto_1

    .line 1034
    .end local v1           #id:I
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->getSelectedCount()I

    move-result v0

    .line 1035
    .local v0, deleteCount:I
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$800(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x20c01fc

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1036
    if-lez v0, :cond_4

    .line 1038
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$800(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1040
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$800(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1044
    :cond_4
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$800(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1049
    .end local v0           #deleteCount:I
    :pswitch_3
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->updateUi()V
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1000(Lcom/htc/fm/FMPresetBrowserActivity;)V

    .line 1050
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->setPreset(ILandroid/database/Cursor;)V
    invoke-static {v2, p3, p2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$2300(Lcom/htc/fm/FMPresetBrowserActivity;ILandroid/database/Cursor;)V

    .line 1051
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->goToEditPreset()V
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$2400(Lcom/htc/fm/FMPresetBrowserActivity;)V

    goto/16 :goto_0

    .line 1007
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1010
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

    const/4 v1, 0x0

    const/4 v2, -0x1

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->getPresetCursor(Landroid/content/AsyncQueryHandler;I)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1400(Lcom/htc/fm/FMPresetBrowserActivity;Landroid/content/AsyncQueryHandler;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setActivity(Lcom/htc/fm/FMPresetBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 849
    iput-object p1, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;

    .line 850
    return-void
.end method
