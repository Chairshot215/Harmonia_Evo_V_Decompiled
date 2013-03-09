.class public Lcom/android/htccontacts/CheckBoxContactPicker;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "CheckBoxContactPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/CheckBoxContactPicker$FilterTextWatcher;,
        Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;,
        Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;,
        Lcom/android/htccontacts/CheckBoxContactPicker$QueryHandler;
    }
.end annotation


# static fields
.field public static final ACTION_EXCLUDE_GROUP:Ljava/lang/String; = "Exclude"

.field public static final ACTION_THIS_FAVORITE:Ljava/lang/String; = "ThisFavorite"

.field public static final ACTION_THIS_GROUP:Ljava/lang/String; = "ThisGroup"

.field public static final ALL_GROUP:I = 0x3e8

.field static final EMAIL:I = 0x2000

.field public static final EXTRA_CONTACT_TYPE:Ljava/lang/String; = "CONTACT_TYPE"

.field public static final EXTRA_IN_DELETE:Ljava/lang/String; = "DELETE"

.field public static final EXTRA_IN_DELETE_MSE:Ljava/lang/String; = "DELETE_MSG"

.field public static final EXTRA_IN_EXCLUDE_ID:Ljava/lang/String; = "EXCLUDE_ID"

.field public static final EXTRA_IN_GROUP_ID:Ljava/lang/String; = "GROUP_ID"

.field public static final EXTRA_IN_INCLUDE_ID:Ljava/lang/String; = "INCLUDE_ID"

.field public static final EXTRA_IN_IS_REMOVE:Ljava/lang/String; = "ACTION_TYPE"

.field public static final EXTRA_IN_SHOW_SIM_CONTACTS:Ljava/lang/String; = "SHOW_SIM_CONTACTS"

.field public static final EXTRA_IN_TITLE_RID:Ljava/lang/String; = "TITLE_RID"

.field public static final EXTRA_IN_TITLE_TEXT:Ljava/lang/String; = "TITLE_TEXT"

.field public static final EXTRA_OUT_IS_SIM_CONTACT:Ljava/lang/String; = "IS_SIM_CONTACT"

.field public static final EXTRA_OUT_SELECTED_EMAIL_ID:Ljava/lang/String; = "SELECTED_EMAIL_ID"

.field public static final EXTRA_OUT_SELECTED_ID:Ljava/lang/String; = "SELECTED_ID"

.field public static final EXTRA_OUT_SELECTED_MMS_ADDRESS:Ljava/lang/String; = "SELECTED_MMS_ADDRESS"

.field static final GENERAL:I = 0x1000

.field private static final MENU_SELECT_ALL:I = 0x1

.field private static final MENU_UN_SELECT_ALL:I = 0x2

.field static final MMS:I = 0x3000

.field public static final MULTIPLE_SELECT:I = 0x1

.field public static final NO_EXTRA_GROUP:I = 0x3e9

.field protected static final QUERY_TOKEN_LIST:I = 0x0

.field public static final SINGLE_SELECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CheckBoxContactPicker"


# instance fields
.field private BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

.field private BACKGROUND_SPAN_COLOR:I

.field private final DEBUG:Z

.field private FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

.field private FOREGROUND_SPAN_COLOR:I

.field private isDoOK:Z

.field private mCacheBooleanArray:Landroid/util/SparseBooleanArray;

.field protected mCancelButton:Lcom/htc/widget/HtcFooterButton;

.field protected mCursorAdapter:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;

.field protected mDefaultContactDrawable:Landroid/graphics/drawable/Drawable;

.field protected mExcludeIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterString:Ljava/lang/String;

.field protected mFilterText:Landroid/widget/EditText;

.field protected mGroupId:J

.field protected mIDIdx:I

.field protected mIncludeIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntentAction:Ljava/lang/String;

.field protected mIsRemove:Z

.field protected mListView:Lcom/htc/widget/HtcListView;

.field protected mNameIdx:I

.field protected mPersonIdx:I

.field protected mPhotoPathIdx:I

.field protected mQueryHandler:Lcom/android/htccontacts/CheckBoxContactPicker$QueryHandler;

.field protected mRecordNumberIdx:I

.field protected mRequestor:I

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSaveButton:Lcom/htc/widget/HtcFooterButton;

.field protected mSimContactDrawable:Landroid/graphics/drawable/Drawable;

.field private mTitleLayout:Landroid/view/View;

.field protected mTitleRid:I

.field protected mTitleText:Ljava/lang/String;

.field protected mTypeIdx:I

.field protected mUnNamed:Ljava/lang/String;

.field private mbDelete:Z

.field private mbDeleteMSGID:I

.field protected mbShowSimContacts:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->DEBUG:Z

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mTypeIdx:I

    .line 158
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mRequestor:I

    .line 181
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    .line 1239
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/CheckBoxContactPicker;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/CheckBoxContactPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->isDoOK:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/CheckBoxContactPicker;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/htccontacts/CheckBoxContactPicker;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/htccontacts/CheckBoxContactPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->isDoOK:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/htccontacts/CheckBoxContactPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->doOK()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/CheckBoxContactPicker;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/CheckBoxContactPicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/htccontacts/CheckBoxContactPicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/htccontacts/CheckBoxContactPicker;)Landroid/text/style/BackgroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/CheckBoxContactPicker;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/CheckBoxContactPicker;)Lcom/android/htccontacts/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/CheckBoxContactPicker;)Lcom/android/htccontacts/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/CheckBoxContactPicker;)Lcom/android/htccontacts/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;

    return-object v0
.end method

.method private confirmDelete()V
    .locals 3

    .prologue
    .line 549
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 551
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mTitleRid:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 552
    iget v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mbDeleteMSGID:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 554
    const v1, 0x7f0a014f

    new-instance v2, Lcom/android/htccontacts/CheckBoxContactPicker$5;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/CheckBoxContactPicker$5;-><init>(Lcom/android/htccontacts/CheckBoxContactPicker;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 574
    const v1, 0x7f0a0152

    new-instance v2, Lcom/android/htccontacts/CheckBoxContactPicker$6;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/CheckBoxContactPicker$6;-><init>(Lcom/android/htccontacts/CheckBoxContactPicker;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 580
    new-instance v1, Lcom/android/htccontacts/CheckBoxContactPicker$7;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/CheckBoxContactPicker$7;-><init>(Lcom/android/htccontacts/CheckBoxContactPicker;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 587
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 588
    return-void
.end method

.method private doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "filter"

    .prologue
    const/4 v3, 0x0

    .line 808
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    :goto_0
    return-object v3

    .line 812
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 815
    const/4 v0, 0x0

    .line 819
    .local v0, fineFilterSelection:Ljava/lang/String;
    const-string v2, "name"

    invoke-static {v2, p1}, Lcom/android/htccontacts/util/ContactsUtils;->getFilterWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 848
    .local v1, selection:Ljava/lang/String;
    goto :goto_0
.end method

.method private doOK()V
    .locals 19

    .prologue
    .line 593
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 637
    .local v12, intent:Landroid/content/Intent;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v11, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v18, 0x0

    .line 639
    .local v18, typeList:[Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_8

    .line 641
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mbShowSimContacts:Z

    if-nez v1, :cond_1

    .line 643
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    .line 644
    .local v15, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v15, :cond_8

    .line 646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 652
    .end local v8           #i:I
    .end local v15           #size:I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->prepareQueryUri()Landroid/net/Uri;

    move-result-object v2

    .line 653
    .local v2, uriSimAndContacts:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 654
    .local v7, cursorSimAndContacts:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 655
    .local v13, nCursorCount:I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v17, typeArrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_1
    if-ge v8, v13, :cond_5

    .line 658
    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 660
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 661
    .local v10, idKey:I
    const/16 v16, 0x0

    .line 662
    .local v16, type:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mTypeIdx:I

    if-ltz v1, :cond_2

    .line 663
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mTypeIdx:I

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 664
    const/16 v1, 0x14

    move/from16 v0, v16

    if-ne v0, v1, :cond_2

    .line 665
    neg-int v10, v10

    .line 667
    :cond_2
    const/4 v9, -0x1

    .line 668
    .local v9, id:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 670
    const/16 v1, 0x14

    move/from16 v0, v16

    if-eq v0, v1, :cond_4

    .line 672
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mPersonIdx:I

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 680
    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    .end local v9           #id:I
    .end local v10           #idKey:I
    .end local v16           #type:I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 677
    .restart local v9       #id:I
    .restart local v10       #idKey:I
    .restart local v16       #type:I
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mRecordNumberIdx:I

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    goto :goto_2

    .line 685
    .end local v9           #id:I
    .end local v10           #idKey:I
    .end local v16           #type:I
    :cond_5
    if-eqz v7, :cond_6

    .line 686
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 689
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 690
    .local v14, nTypeArrListSize:I
    if-lez v14, :cond_7

    .line 691
    new-array v0, v14, [Z

    move-object/from16 v18, v0

    .line 692
    :cond_7
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v14, :cond_8

    .line 693
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, v18, v8

    .line 692
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 698
    .end local v2           #uriSimAndContacts:Landroid/net/Uri;
    .end local v7           #cursorSimAndContacts:Landroid/database/Cursor;
    .end local v8           #i:I
    .end local v13           #nCursorCount:I
    .end local v14           #nTypeArrListSize:I
    .end local v17           #typeArrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_8
    const-string v1, "SELECTED_ID"

    invoke-virtual {v12, v1, v11}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 699
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mbShowSimContacts:Z

    if-eqz v1, :cond_9

    .line 700
    const-string v1, "IS_SIM_CONTACT"

    move-object/from16 v0, v18

    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 702
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v12}, Lcom/android/htccontacts/CheckBoxContactPicker;->setResult(ILandroid/content/Intent;)V

    .line 705
    return-void
.end method

.method private getCurrentCursorCheckedNumber()I
    .locals 5

    .prologue
    .line 388
    const/4 v1, 0x0

    .line 389
    .local v1, count:I
    iget-object v4, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 390
    .local v0, array:Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 391
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 392
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    add-int/lit8 v1, v1, 0x1

    .line 391
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 396
    :cond_1
    return v1
.end method

.method private getCurrentCursorCount()I
    .locals 3

    .prologue
    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, result:I
    iget-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCursorAdapter:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCursorAdapter:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 379
    .local v0, cursorCurrent:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 380
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 384
    .end local v0           #cursorCurrent:Landroid/database/Cursor;
    :cond_0
    return v1
.end method

.method private haveCheckedItem()Z
    .locals 5

    .prologue
    .line 1275
    const/4 v2, 0x0

    .line 1276
    .local v2, result:Z
    iget-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    .line 1277
    .local v1, items:Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 1278
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1279
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1280
    const/4 v2, 0x1

    .line 1284
    :cond_0
    return v2

    .line 1278
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initSpanColor()V
    .locals 3

    .prologue
    .line 1293
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1294
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getTextHighlightColor(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->BACKGROUND_SPAN_COLOR:I

    .line 1295
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->BACKGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 1296
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->FOREGROUND_SPAN_COLOR:I

    .line 1297
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->FOREGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 1298
    return-void
.end method

.method private prepareQueryUri()Landroid/net/Uri;
    .locals 12

    .prologue
    const/16 v9, 0x3000

    const/16 v11, 0x2c

    .line 852
    iget-object v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mIntentAction:Ljava/lang/String;

    const-string v8, "ThisGroup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 853
    sget-object v7, Landroid/provider/Contacts$People;->MEMBER_CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mGroupId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 931
    :cond_0
    :goto_0
    return-object v5

    .line 855
    :cond_1
    iget-object v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mIntentAction:Ljava/lang/String;

    const-string v8, "ThisFavorite"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 856
    const-string v7, "content://contacts/contacts/favorite"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .local v6, uri:Landroid/net/Uri;
    move-object v5, v6

    .line 857
    goto :goto_0

    .line 859
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2
    iget v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mRequestor:I

    const/16 v8, 0x1000

    if-eq v7, v8, :cond_5

    .line 861
    sget-object v5, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    .line 862
    .local v5, queryUri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 864
    .local v0, builder:Ljava/lang/StringBuilder;
    iget v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mRequestor:I

    const/16 v8, 0x2000

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mRequestor:I

    if-ne v7, v9, :cond_4

    .line 865
    :cond_3
    const-string v7, "primary_email"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    const-string v7, " is not NULL"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    :cond_4
    iget v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mRequestor:I

    if-ne v7, v9, :cond_0

    .line 870
    const-string v7, "  OR "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    const-string v7, "primary_phone"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    const-string v7, " is not NULL"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 877
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v5           #queryUri:Landroid/net/Uri;
    :cond_5
    iget-boolean v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mbShowSimContacts:Z

    if-eqz v7, :cond_6

    .line 890
    const-string v7, "content://contacts/simAndContacts"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 893
    :cond_6
    sget-object v7, Landroid/provider/Contacts$People;->NON_MEMBER_CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mGroupId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 896
    .restart local v5       #queryUri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 897
    .local v1, excludeList:Ljava/lang/StringBuilder;
    const-string v7, "("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    iget-object v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mExcludeIdList:Ljava/util/ArrayList;

    if-eqz v7, :cond_8

    .line 899
    iget-object v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mExcludeIdList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 900
    iget-object v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mExcludeIdList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 901
    .local v2, i:Ljava/lang/Integer;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 905
    .end local v2           #i:Ljava/lang/Integer;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_8

    .line 906
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 909
    :cond_8
    const-string v7, ")"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    .local v4, includeList:Ljava/lang/StringBuilder;
    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    iget-object v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mIncludeIdList:Ljava/util/ArrayList;

    if-eqz v7, :cond_a

    .line 917
    iget-object v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mIncludeIdList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 918
    iget-object v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mIncludeIdList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 919
    .restart local v2       #i:Ljava/lang/Integer;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 923
    .end local v2           #i:Ljava/lang/Integer;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_a

    .line 924
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 927
    :cond_a
    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 931
    goto/16 :goto_0
.end method

.method private selectAll()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/htccontacts/CheckBoxContactPicker;->setSameValue(Z)V

    .line 402
    return-void
.end method

.method private setButtonEnabled(Landroid/widget/Button;Z)V
    .locals 0
    .parameter "button"
    .parameter "enabled"

    .prologue
    .line 1288
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1289
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1290
    return-void
.end method

.method private setSameValue(Z)V
    .locals 7
    .parameter "bSelect"

    .prologue
    .line 409
    iget-object v6, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCursorAdapter:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;

    if-nez v6, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCursorAdapter:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;

    invoke-virtual {v6}, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 412
    .local v0, cursorCurrent:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 415
    .local v4, nInitPosition:I
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 416
    .local v2, nCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 418
    iget-object v6, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v1, p1}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 419
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 421
    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 422
    .local v3, nID:I
    iget v6, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mTypeIdx:I

    if-ltz v6, :cond_2

    .line 423
    iget v6, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mTypeIdx:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 424
    .local v5, type:I
    const/16 v6, 0x14

    if-ne v5, v6, :cond_2

    .line 425
    neg-int v3, v3

    .line 427
    .end local v5           #type:I
    :cond_2
    iget-object v6, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 416
    .end local v3           #nID:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 430
    :cond_4
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 431
    const/4 v0, 0x0

    .line 432
    iget-object v6, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0
.end method

.method private switchSearchLayoutVisibility()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 319
    const v2, 0x7f07001e

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/CheckBoxContactPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 321
    .local v0, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getVisibility()I

    move-result v1

    .line 322
    .local v1, visibility:I
    if-nez v1, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 324
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->setVisibility(I)V

    .line 331
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->setVisibility(I)V

    .line 327
    iget-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method private unSelectAll()V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/htccontacts/CheckBoxContactPicker;->setSameValue(Z)V

    .line 406
    return-void
.end method


# virtual methods
.method protected doClickCancel()V
    .locals 0

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->finish()V

    .line 717
    return-void
.end method

.method protected doClickOk()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCursorAdapter:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;

    if-eqz v0, :cond_0

    .line 516
    iget v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mRequestor:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mRequestor:I

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 533
    iget-boolean v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mbDelete:Z

    if-nez v0, :cond_2

    .line 535
    invoke-direct {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->doOK()V

    .line 536
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->finish()V

    goto :goto_0

    .line 539
    :cond_2
    invoke-direct {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->confirmDelete()V

    goto :goto_0
.end method

.method protected findViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 437
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    .line 438
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 441
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v4, Lcom/android/htccontacts/CheckBoxContactPicker$1;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/CheckBoxContactPicker$1;-><init>(Lcom/android/htccontacts/CheckBoxContactPicker;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 455
    const v3, 0x7f070017

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/CheckBoxContactPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 456
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 458
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/htccontacts/CheckBoxContactPicker;->setButtonEnabled(Landroid/widget/Button;Z)V

    .line 459
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    .line 461
    const v3, 0x7f070016

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/CheckBoxContactPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;

    .line 462
    .local v2, titleBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    if-eqz v2, :cond_0

    .line 463
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->buildHeaderBar(I)V

    .line 465
    :cond_0
    const v3, 0x7f07001e

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/CheckBoxContactPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 466
    .local v1, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    if-eqz v1, :cond_1

    .line 467
    invoke-virtual {v1, v5}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->buildHeaderBar(I)V

    .line 468
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderInputBox()Lcom/htc/widget/HeaderBarInput;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterText:Landroid/widget/EditText;

    .line 469
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterText:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    .line 470
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterText:Landroid/widget/EditText;

    const v4, 0x7f0a0139

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/CheckBoxContactPicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterText:Landroid/widget/EditText;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 476
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterText:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 478
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterText:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    .line 479
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/htccontacts/CheckBoxContactPicker$FilterTextWatcher;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/CheckBoxContactPicker$FilterTextWatcher;-><init>(Lcom/android/htccontacts/CheckBoxContactPicker;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 481
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/htccontacts/CheckBoxContactPicker$2;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/CheckBoxContactPicker$2;-><init>(Lcom/android/htccontacts/CheckBoxContactPicker;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 495
    :cond_2
    return-void
.end method

.method public getExtraGroupFilterSelection(I)Ljava/lang/String;
    .locals 5
    .parameter "extragroup"

    .prologue
    .line 786
    const-string v1, "( %s = %d )"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "extra_group"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    .line 189
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/CheckBoxContactPicker;->requestWindowFeature(I)Z

    .line 191
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CheckBoxContactPicker;->setContentView(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->findViews()V

    .line 195
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->setListeners()V

    .line 196
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->resolveIntent()V

    .line 197
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mResolver:Landroid/content/ContentResolver;

    .line 200
    new-instance v0, Lcom/android/htccontacts/CheckBoxContactPicker$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/CheckBoxContactPicker$QueryHandler;-><init>(Lcom/android/htccontacts/CheckBoxContactPicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mQueryHandler:Lcom/android/htccontacts/CheckBoxContactPicker$QueryHandler;

    .line 202
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x208025a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mSimContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 203
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080846

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mDefaultContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 223
    invoke-direct {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->initSpanColor()V

    .line 225
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 337
    const v0, 0x7f0a0235

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080334

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 338
    const/4 v0, 0x2

    const v1, 0x7f0a0236

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 339
    return v3
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 258
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 260
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 262
    iget-object v5, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCursorAdapter:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;

    if-eqz v5, :cond_0

    .line 263
    iget-object v5, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCursorAdapter:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;

    invoke-virtual {v5}, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 264
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 265
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 278
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v5, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v5, :cond_2

    .line 279
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 280
    iget-object v5, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 281
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 282
    .local v3, obj:Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v5, v3, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;

    if-eqz v5, :cond_1

    move-object v1, v3

    .line 283
    check-cast v1, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;

    .line 284
    .local v1, cache:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;
    iget-object v5, v1, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 286
    iget-object v5, v1, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    iput-object v6, v1, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->bitmap:Landroid/graphics/Bitmap;

    .line 279
    .end local v1           #cache:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v2           #i:I
    .end local v3           #obj:Ljava/lang/Object;
    .end local v4           #view:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1266
    long-to-int v0, p4

    .line 1267
    .local v0, _id:I
    iget-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 1268
    .local v1, checked:Z
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1270
    iget-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->haveCheckedItem()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/htccontacts/CheckBoxContactPicker;->setButtonEnabled(Landroid/widget/Button;Z)V

    .line 1272
    return-void

    .line 1268
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 358
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 371
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 361
    :pswitch_0
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[CheckBoxContactPicker]Select all"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->selectAll()V

    .line 363
    iget-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0, v1, v0}, Lcom/android/htccontacts/CheckBoxContactPicker;->setButtonEnabled(Landroid/widget/Button;Z)V

    goto :goto_0

    .line 366
    :pswitch_1
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[CheckBoxContactPicker]Unselect all"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->unSelectAll()V

    .line 368
    iget-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->haveCheckedItem()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/CheckBoxContactPicker;->setButtonEnabled(Landroid/widget/Button;Z)V

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 252
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 345
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 346
    .local v2, select:Landroid/view/MenuItem;
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 348
    .local v3, unselect:Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->getCurrentCursorCount()I

    move-result v0

    .line 349
    .local v0, all:I
    invoke-direct {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->getCurrentCursorCheckedNumber()I

    move-result v1

    .line 350
    .local v1, checked:I
    if-eq v0, v1, :cond_1

    move v4, v5

    :goto_0
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 351
    if-eqz v1, :cond_0

    move v6, v5

    :cond_0
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 352
    return v5

    :cond_1
    move v4, v6

    .line 350
    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "inState"

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 305
    const-string v3, "selecteditem"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 306
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 307
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 308
    .local v1, id:I
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 310
    .end local v1           #id:I
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 229
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 234
    iget-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 235
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->startQuery()V

    .line 244
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 300
    return-void
.end method

.method prepareQuerySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    .line 794
    .local v0, sel:Ljava/lang/String;
    return-object v0
.end method

.method protected resolveIntent()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 720
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 721
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "GROUP_ID"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mGroupId:J

    .line 723
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mIntentAction:Ljava/lang/String;

    .line 725
    const-string v2, "TITLE_RID"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mTitleRid:I

    .line 726
    const-string v2, "TITLE_TEXT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mTitleText:Ljava/lang/String;

    .line 727
    const-string v2, "ACTION_TYPE"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mIsRemove:Z

    .line 732
    const-string v2, "EXCLUDE_ID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mExcludeIdList:Ljava/util/ArrayList;

    .line 735
    const-string v2, "INCLUDE_ID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mIncludeIdList:Ljava/util/ArrayList;

    .line 738
    const-string v2, "request"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, request:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 740
    const-string v2, "mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 741
    const/16 v2, 0x3000

    iput v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mRequestor:I

    .line 748
    :cond_0
    :goto_0
    const-string v2, "DELETE"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mbDelete:Z

    .line 749
    iget-boolean v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mbDelete:Z

    if-eqz v2, :cond_1

    .line 750
    const-string v2, "DELETE_MSG"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mbDeleteMSGID:I

    .line 752
    :cond_1
    const-string v2, "SHOW_SIM_CONTACTS"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mbShowSimContacts:Z

    .line 753
    return-void

    .line 742
    :cond_2
    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 743
    const/16 v2, 0x2000

    iput v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mRequestor:I

    goto :goto_0
.end method

.method protected setAdapter(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCursorAdapter:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;

    if-nez v0, :cond_0

    .line 937
    new-instance v0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x7f03002b

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;-><init>(Lcom/android/htccontacts/CheckBoxContactPicker;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCursorAdapter:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;

    .line 939
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCursorAdapter:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CheckBoxContactPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 943
    :goto_0
    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCursorAdapter:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected setListeners()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/android/htccontacts/CheckBoxContactPicker$3;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/CheckBoxContactPicker$3;-><init>(Lcom/android/htccontacts/CheckBoxContactPicker;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/android/htccontacts/CheckBoxContactPicker$4;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/CheckBoxContactPicker$4;-><init>(Lcom/android/htccontacts/CheckBoxContactPicker;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    return-void
.end method

.method protected startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 799
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mQueryHandler:Lcom/android/htccontacts/CheckBoxContactPicker$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/CheckBoxContactPicker$QueryHandler;->cancelOperation(I)V

    .line 800
    invoke-direct {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->prepareQueryUri()Landroid/net/Uri;

    move-result-object v3

    .line 801
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker;->prepareQuerySelection()Ljava/lang/String;

    move-result-object v5

    .line 803
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker;->mQueryHandler:Lcom/android/htccontacts/CheckBoxContactPicker$QueryHandler;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/CheckBoxContactPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    return-void
.end method
