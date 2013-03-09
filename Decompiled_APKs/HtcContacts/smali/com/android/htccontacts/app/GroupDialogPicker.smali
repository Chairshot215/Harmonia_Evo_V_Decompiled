.class public Lcom/android/htccontacts/app/GroupDialogPicker;
.super Lcom/android/htccontacts/app/BaseActivity;
.source "GroupDialogPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/app/GroupDialogPicker$GroupsAdapter;,
        Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;,
        Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field protected static final COLUMN_INDEX_ID:I = 0x0

.field protected static final COLUMN_INDEX_NAME:I = 0x1

.field protected static final COLUMN_INDEX_SHOULD_SYNC:I = 0x2

.field protected static final COLUMN_INDEX_SYSTEM_ID:I = 0x3

.field public static final EXTRA_INFO_INDEX:Ljava/lang/String; = "extra_info_index"

.field public static final EXTRA_IN_BUTTON_CANCEL_LABEL_RES:Ljava/lang/String; = "BUTTON_CANCEL_LABEL_RES"

.field public static final EXTRA_IN_BUTTON_OK_LABEL_RES:Ljava/lang/String; = "BUTTON_OK_LABEL_RES"

.field public static final EXTRA_IN_EXCLUDE_ID:Ljava/lang/String; = "EXCLUDE_ID"

.field public static final EXTRA_IN_SELECTED_APPEND_TITLE:Ljava/lang/String; = "SELECTED_APPEND_TITLE"

.field public static final EXTRA_IN_SELECTED_ID:Ljava/lang/String; = "SELECTED_ID"

.field public static final EXTRA_IN_SELECTION_MODE:Ljava/lang/String; = "SELECT_MODE"

.field public static final EXTRA_IN_TITLE_ICON_RES:Ljava/lang/String; = "TITLE_ICON_RES"

.field public static final EXTRA_IN_TITLE_TEXT_RES:Ljava/lang/String; = "TITLE_TEXT_RES"

.field public static final EXTRA_IS_FAVORITE:Ljava/lang/String; = "IS_FAVORITE"

.field public static final EXTRA_OUT_GOOGLE_STARRED_GROUP_ID:Ljava/lang/String; = "EXTRA_OUT_GOOGLE_STARRED_GROUP_ID"

.field public static final EXTRA_OUT_SELECTED_GROUP_IS_READ_ONLY:Ljava/lang/String; = "SELECTED_GROUP_IS_READ_ONLY"

.field public static final EXTRA_OUT_SELECTED_ID:Ljava/lang/String; = "SELECTED_ID"

.field public static final EXTRA_OUT_SELECTED_TITLE:Ljava/lang/String; = "SELECTED_TITLE"

.field public static final EXTRA_PERSON_ACCOUNT_NAME:Ljava/lang/String; = "PERSON_ACCOUNT_NAME"

.field public static final EXTRA_PERSON_ACCOUNT_TYPE:Ljava/lang/String; = "PERSON_ACCOUNT_TYPE"

.field protected static final GROUP_PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_ALL_ITEM:I = 0xf001

.field protected static final QUERY_TOKEN_LIST:I = 0x1

.field private static final UI_DIALOG_SHOW:I = 0xf002


# instance fields
.field protected mAccountType:Ljava/lang/String;

.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mAppendedGroupIsReadOnly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAppendedGroupTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mButtonCancelLabelResId:I

.field protected mButtonOkLabelResId:I

.field private mContactId:J

.field protected mCursor:Landroid/database/Cursor;

.field protected mDataSet:Ljava/lang/String;

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

.field private mExtreInfoIndex:I

.field protected mGroupItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

.field protected mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

.field protected mIntentAction:Ljava/lang/String;

.field private mIsChoosen:Z

.field private mIsDestroy:Z

.field private mIsFavorite:Z

.field protected mListView:Landroid/widget/ListView;

.field private mMyContactGroupRawId:J

.field private mMyStarredGroupRawIdSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonAccountName:Ljava/lang/String;

.field private mPersonAccountType:Ljava/lang/String;

.field private mPreSelectedTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueryHandler:Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSelectMode:I

.field protected mSelectedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mTitleTextResId:I

.field mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "group_is_read_only"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/app/GroupDialogPicker;->GROUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 51
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseActivity;-><init>()V

    .line 113
    iput-wide v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mContactId:J

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mPreSelectedTitleList:Ljava/util/ArrayList;

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mIsFavorite:Z

    .line 136
    iput-wide v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mMyContactGroupRawId:J

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mMyStarredGroupRawIdSet:Ljava/util/ArrayList;

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mExtreInfoIndex:I

    .line 173
    new-instance v0, Lcom/android/htccontacts/app/GroupDialogPicker$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/app/GroupDialogPicker$1;-><init>(Lcom/android/htccontacts/app/GroupDialogPicker;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mUIHandler:Landroid/os/Handler;

    .line 279
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/app/GroupDialogPicker;Lcom/htc/app/HtcAlertController$AlertParams;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/htccontacts/app/GroupDialogPicker;->generateDialog(Lcom/htc/app/HtcAlertController$AlertParams;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/app/GroupDialogPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/htccontacts/app/GroupDialogPicker;->adjustChecks()V

    return-void
.end method

.method private adjustChecks()V
    .locals 5

    .prologue
    .line 675
    iget-object v3, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 676
    iget-object v3, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 677
    .local v0, count:I
    const/4 v2, 0x0

    .line 678
    .local v2, item:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 679
    iget-object v3, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    check-cast v2, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;

    .line 680
    .restart local v2       #item:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    iget-boolean v3, v2, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->isChecked:Z

    if-eqz v3, :cond_0

    .line 681
    iget-object v3, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 678
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #item:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    :cond_1
    return-void
.end method

.method private generateDialog(Lcom/htc/app/HtcAlertController$AlertParams;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    .line 245
    iget-object v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 246
    iget-object v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 247
    iput-object v12, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 250
    :cond_0
    new-instance v6, Lcom/android/htccontacts/app/GroupDialogPicker$2;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/app/GroupDialogPicker$2;-><init>(Lcom/android/htccontacts/app/GroupDialogPicker;)V

    .line 257
    .local v6, listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    iget-object v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 258
    .local v8, size:I
    new-array v5, v8, [Ljava/lang/CharSequence;

    .line 259
    .local v5, items:[Ljava/lang/CharSequence;
    new-array v1, v8, [Z

    .line 261
    .local v1, checkedItems:[Z
    const/4 v3, 0x0

    .line 262
    .local v3, index:I
    iget-object v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;

    .line 263
    .local v4, item:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    iget-object v9, v4, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupName:Ljava/lang/String;

    iget v10, v4, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupIsReadOnly:I

    invoke-static {p0, v9, v10}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, name:Ljava/lang/String;
    aput-object v7, v5, v3

    .line 265
    iget-boolean v9, v4, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->isChecked:Z

    aput-boolean v9, v1, v3

    .line 266
    add-int/lit8 v3, v3, 0x1

    .line 267
    goto :goto_0

    .line 269
    .end local v4           #item:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    .end local v7           #name:Ljava/lang/String;
    :cond_1
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v10, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    iget-object v10, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v11, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    iget-object v10, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v11, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    iget-object v10, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v5, v12, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 276
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    return-object v0
.end method


# virtual methods
.method protected buildAllItems(Lcom/htc/app/HtcAlertController$AlertParams;)V
    .locals 47
    .parameter "params"

    .prologue
    .line 460
    sget-object v4, Lcom/htc/provider/HtcContactsContract$Groups;->CONTENT_NAME_SUMMARY_URI:Landroid/net/Uri;

    .line 461
    .local v4, uri:Landroid/net/Uri;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v38, sb:Ljava/lang/StringBuilder;
    const-string v3, "("

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v3, "is_attribute_set"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v3, " = 0 ) "

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 470
    .local v6, GROUP_CLAUSE:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/htccontacts/app/GroupDialogPicker;->GROUP_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 472
    .local v21, cursor:Landroid/database/Cursor;
    if-eqz v21, :cond_4

    .line 474
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/app/GroupDialogPicker;->finish()V

    .line 477
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    if-nez v3, :cond_2

    .line 478
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    .line 482
    :goto_0
    const-string v3, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 483
    .local v32, idx:I
    const-string v3, "title"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v43

    .line 485
    .local v43, titleIdx:I
    const-string v3, "group_is_read_only"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 486
    .local v25, groupIsReadOnlyIndex:I
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 487
    new-instance v33, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;

    invoke-direct/range {v33 .. v33}, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;-><init>()V

    .line 488
    .local v33, item:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v33

    iput v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupId:I

    .line 489
    move-object/from16 v0, v21

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    iput-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupName:Ljava/lang/String;

    .line 490
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v33

    iput v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupIsReadOnly:I

    .line 492
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 493
    const-string v3, "null"

    move-object/from16 v0, v33

    iput-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupName:Ljava/lang/String;

    .line 495
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    move-object/from16 v0, v33

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 498
    .end local v25           #groupIsReadOnlyIndex:I
    .end local v32           #idx:I
    .end local v33           #item:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    .end local v43           #titleIdx:I
    :catchall_0
    move-exception v3

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 499
    const/16 v21, 0x0

    throw v3

    .line 480
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 498
    .restart local v25       #groupIsReadOnlyIndex:I
    .restart local v32       #idx:I
    .restart local v43       #titleIdx:I
    :cond_3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 499
    const/16 v21, 0x0

    .line 503
    .end local v25           #groupIsReadOnlyIndex:I
    .end local v32           #idx:I
    .end local v43           #titleIdx:I
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mContactId:J

    move-wide/from16 v16, v0

    const-wide/16 v45, 0x0

    cmp-long v3, v16, v45

    if-lez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mPreSelectedTitleList:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mSelectedIdList:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    .line 504
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "data1"

    aput-object v5, v9, v3

    .line 506
    .local v9, projection:[Ljava/lang/String;
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 507
    .local v8, dataUri:Landroid/net/Uri;
    const-string v10, "contact_id=? AND mimetype= ? "

    .line 510
    .local v10, selection:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mContactId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v3

    const/4 v3, 0x1

    const-string v5, "vnd.android.cursor.item/group_membership"

    aput-object v5, v11, v3

    .line 513
    .local v11, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mResolver:Landroid/content/ContentResolver;

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 515
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mSelectedIdList:Ljava/util/ArrayList;

    .line 516
    if-eqz v21, :cond_6

    .line 518
    :goto_2
    :try_start_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 519
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 520
    .local v37, rowId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mSelectedIdList:Ljava/util/ArrayList;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 523
    .end local v37           #rowId:I
    :catchall_1
    move-exception v3

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 524
    const/16 v21, 0x0

    throw v3

    .line 523
    :cond_5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 524
    const/16 v21, 0x0

    .line 528
    :cond_6
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    .end local v9           #projection:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "starred"

    aput-object v5, v9, v3

    .line 529
    .restart local v9       #projection:[Ljava/lang/String;
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 531
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mContactId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v8

    move-object v14, v9

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 533
    if-eqz v21, :cond_8

    .line 535
    :try_start_3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 536
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_9

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mIsFavorite:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 539
    :cond_7
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 540
    const/16 v21, 0x0

    .line 546
    .end local v8           #dataUri:Landroid/net/Uri;
    .end local v9           #projection:[Ljava/lang/String;
    .end local v10           #selection:Ljava/lang/String;
    .end local v11           #selectionArgs:[Ljava/lang/String;
    :cond_8
    const/16 v21, 0x0

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mSelectedIdList:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mSelectedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 548
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 549
    .local v20, buffer:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mSelectedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v30, v0

    .line 550
    .local v30, id:J
    move-object/from16 v0, v20

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 551
    const-string v3, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 536
    .end local v20           #buffer:Ljava/lang/StringBuffer;
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v30           #id:J
    .restart local v8       #dataUri:Landroid/net/Uri;
    .restart local v9       #projection:[Ljava/lang/String;
    .restart local v10       #selection:Ljava/lang/String;
    .restart local v11       #selectionArgs:[Ljava/lang/String;
    :cond_9
    const/4 v3, 0x0

    goto :goto_3

    .line 539
    :catchall_2
    move-exception v3

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 540
    const/16 v21, 0x0

    throw v3

    .line 554
    .end local v8           #dataUri:Landroid/net/Uri;
    .end local v9           #projection:[Ljava/lang/String;
    .end local v10           #selection:Ljava/lang/String;
    .end local v11           #selectionArgs:[Ljava/lang/String;
    .restart local v20       #buffer:Ljava/lang/StringBuffer;
    .restart local v29       #i$:Ljava/util/Iterator;
    :cond_a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v40

    .line 555
    .local v40, size:I
    const/4 v3, 0x1

    move/from16 v0, v40

    if-lt v0, v3, :cond_b

    .line 556
    add-int/lit8 v3, v40, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 558
    :cond_b
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 559
    const/4 v3, 0x0

    const-string v5, "_id IN ( "

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    const-string v3, ")"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    :cond_c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_f

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 564
    .restart local v10       #selection:Ljava/lang/String;
    :goto_5
    const-string v15, "deleted = 0 "

    .line 565
    .local v15, finalSelction:Ljava/lang/String;
    if-nez v10, :cond_10

    .line 566
    const-string v10, "_id  < 0"

    .line 570
    :goto_6
    const-string v3, "content://com.android.contacts/groups_raw"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 571
    .local v13, rawUri:Landroid/net/Uri;
    const/16 v3, 0x8

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v9, v3

    const/4 v3, 0x1

    const-string v5, "title"

    aput-object v5, v9, v3

    const/4 v3, 0x2

    const-string v5, "sortorder"

    aput-object v5, v9, v3

    const/4 v3, 0x3

    const-string v5, "account_name"

    aput-object v5, v9, v3

    const/4 v3, 0x4

    const-string v5, "account_type"

    aput-object v5, v9, v3

    const/4 v3, 0x5

    const-string v5, "data_set"

    aput-object v5, v9, v3

    const/4 v3, 0x6

    const-string v5, "system_id"

    aput-object v5, v9, v3

    const/4 v3, 0x7

    const-string v5, "group_is_read_only"

    aput-object v5, v9, v3

    .line 583
    .restart local v9       #projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mResolver:Landroid/content/ContentResolver;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v14, v9

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 586
    .end local v9           #projection:[Ljava/lang/String;
    .end local v10           #selection:Ljava/lang/String;
    .end local v13           #rawUri:Landroid/net/Uri;
    .end local v15           #finalSelction:Ljava/lang/String;
    .end local v20           #buffer:Ljava/lang/StringBuffer;
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v40           #size:I
    :cond_d
    new-instance v39, Ljava/util/HashSet;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashSet;-><init>()V

    .line 588
    .local v39, selectedTitles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 589
    .local v36, orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v21, :cond_13

    .line 591
    :goto_7
    :try_start_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 592
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 593
    .local v26, groupRawId:J
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 594
    .local v42, title:Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 595
    .local v18, accountName:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 596
    .local v19, accountType:Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 597
    .local v22, dataSet:Ljava/lang/String;
    const/4 v3, 0x6

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 598
    .local v41, systemId:Ljava/lang/String;
    const/4 v3, 0x7

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 599
    .local v24, groupIsReadOnly:I
    if-eqz v18, :cond_e

    if-eqz v19, :cond_e

    const-string v3, "com.google"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v42, :cond_e

    const-string v3, "Starred in Android"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v22, :cond_e

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mMyStarredGroupRawIdSet:Ljava/util/ArrayList;

    move-wide/from16 v0, v26

    long-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_e
    if-eqz v42, :cond_11

    if-eqz v18, :cond_11

    if-eqz v19, :cond_11

    const-string v3, "My Contacts"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez v22, :cond_11

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v3, v0, :cond_11

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mPersonAccountType:Ljava/lang/String;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mPersonAccountName:Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mPersonAccountType:Ljava/lang/String;

    const-string v5, "com.google"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mPersonAccountName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "com.google"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 612
    if-eqz v41, :cond_11

    const-string v3, "Contacts"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 613
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/htccontacts/app/GroupDialogPicker;->mMyContactGroupRawId:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_7

    .line 627
    .end local v18           #accountName:Ljava/lang/String;
    .end local v19           #accountType:Ljava/lang/String;
    .end local v22           #dataSet:Ljava/lang/String;
    .end local v24           #groupIsReadOnly:I
    .end local v26           #groupRawId:J
    .end local v41           #systemId:Ljava/lang/String;
    .end local v42           #title:Ljava/lang/String;
    :catchall_3
    move-exception v3

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v3

    .line 563
    .end local v36           #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v39           #selectedTitles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20       #buffer:Ljava/lang/StringBuffer;
    .restart local v29       #i$:Ljava/util/Iterator;
    .restart local v40       #size:I
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 568
    .restart local v10       #selection:Ljava/lang/String;
    .restart local v15       #finalSelction:Ljava/lang/String;
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_6

    .line 621
    .end local v10           #selection:Ljava/lang/String;
    .end local v15           #finalSelction:Ljava/lang/String;
    .end local v20           #buffer:Ljava/lang/StringBuffer;
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v40           #size:I
    .restart local v18       #accountName:Ljava/lang/String;
    .restart local v19       #accountType:Ljava/lang/String;
    .restart local v22       #dataSet:Ljava/lang/String;
    .restart local v24       #groupIsReadOnly:I
    .restart local v26       #groupRawId:J
    .restart local v36       #orderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v39       #selectedTitles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v41       #systemId:Ljava/lang/String;
    .restart local v42       #title:Ljava/lang/String;
    :cond_11
    const/4 v3, 0x2

    :try_start_5
    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 623
    .local v35, order:I
    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 624
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_7

    .line 627
    .end local v18           #accountName:Ljava/lang/String;
    .end local v19           #accountType:Ljava/lang/String;
    .end local v22           #dataSet:Ljava/lang/String;
    .end local v24           #groupIsReadOnly:I
    .end local v26           #groupRawId:J
    .end local v35           #order:I
    .end local v41           #systemId:Ljava/lang/String;
    .end local v42           #title:Ljava/lang/String;
    :cond_12
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 635
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v40

    .line 636
    .restart local v40       #size:I
    move/from16 v0, v40

    new-array v3, v0, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 637
    const/16 v28, 0x0

    .local v28, i:I
    :goto_8
    move/from16 v0, v28

    move/from16 v1, v40

    if-ge v0, v1, :cond_14

    .line 638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;

    iget-object v0, v3, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupName:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 640
    .local v34, name:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;

    iget v3, v3, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupIsReadOnly:I

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-static {v0, v1, v3}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v28

    .line 637
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 643
    .end local v34           #name:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .restart local v29       #i$:Ljava/util/Iterator;
    :cond_15
    :goto_9
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;

    .line 645
    .local v23, gitem:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupName:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/Integer;

    .line 646
    .local v44, v:Ljava/lang/Integer;
    if-eqz v44, :cond_16

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_a
    move-object/from16 v0, v23

    iput v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->sortOrder:I

    .line 648
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupName:Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 649
    const/4 v3, 0x1

    move-object/from16 v0, v23

    iput-boolean v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->isChecked:Z

    goto :goto_9

    .line 646
    :cond_16
    const/4 v3, 0x0

    goto :goto_a

    .line 653
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mAppendedGroupTitle:Ljava/util/ArrayList;

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mAppendedGroupTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 655
    const/4 v3, 0x1

    move-object/from16 v0, v23

    iput-boolean v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->isChecked:Z

    goto :goto_9

    .line 659
    :cond_18
    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupId:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mSelectedIdList:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mSelectedIdList:Ljava/util/ArrayList;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 660
    const/4 v3, 0x1

    move-object/from16 v0, v23

    iput-boolean v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->isChecked:Z

    goto :goto_9

    .line 664
    :cond_19
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupName:Ljava/lang/String;

    if-eqz v3, :cond_15

    const-string v3, "Favorite_8656150684447252476_6727701920173350445"

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 666
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mIsFavorite:Z

    if-eqz v3, :cond_15

    .line 667
    const/4 v3, 0x1

    move-object/from16 v0, v23

    iput-boolean v3, v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->isChecked:Z

    goto/16 :goto_9

    .line 672
    .end local v23           #gitem:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    .end local v44           #v:Ljava/lang/Integer;
    :cond_1a
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/htccontacts/app/GroupDialogPicker;->isFinishing()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v9, -0x2

    if-eq p2, v9, :cond_2

    const/4 v9, -0x3

    if-ne p2, v9, :cond_3

    .line 317
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/app/GroupDialogPicker;->setResult(I)V

    .line 318
    invoke-virtual {p0}, Lcom/android/htccontacts/app/GroupDialogPicker;->finish()V

    goto :goto_0

    .line 322
    :cond_3
    iget-object v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_b

    .line 323
    iget-object v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mListView:Landroid/widget/ListView;

    if-eqz v9, :cond_0

    .line 326
    iget-object v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 328
    .local v0, checkedItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 332
    .local v7, size:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v3, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_5

    .line 334
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 335
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 336
    .local v6, position:I
    iget-object v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;

    .line 337
    .local v5, item:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    iget v9, v5, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v5           #item:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    .end local v6           #position:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 341
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v8, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_7

    .line 343
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 344
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 345
    .restart local v6       #position:I
    iget-object v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;

    .line 346
    .restart local v5       #item:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    iget-object v9, v5, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .end local v5           #item:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    .end local v6           #position:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 351
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v1, groupIsReadOnlyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v7, :cond_9

    .line 353
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 354
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 355
    .restart local v6       #position:I
    iget-object v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mGroupItems:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;

    .line 356
    .restart local v5       #item:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    iget v9, v5, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupIsReadOnly:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v5           #item:Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    .end local v6           #position:I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 360
    :cond_9
    iget-wide v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mMyContactGroupRawId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_a

    .line 361
    iget-wide v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mMyContactGroupRawId:J

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v9, "My Contacts"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v9, Ljava/lang/Integer;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_a
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "SELECTED_ID"

    invoke-virtual {v4, v9, v3}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 368
    const-string v9, "SELECTED_TITLE"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 370
    const-string v9, "SELECTED_GROUP_IS_READ_ONLY"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 371
    const-string v9, "EXTRA_OUT_GOOGLE_STARRED_GROUP_ID"

    iget-object v10, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mMyStarredGroupRawIdSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 372
    iget-object v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v9, "extra_info_index"

    iget v10, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mExtreInfoIndex:I

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    const/4 v9, -0x1

    invoke-virtual {p0, v9, v4}, Lcom/android/htccontacts/app/GroupDialogPicker;->setResult(ILandroid/content/Intent;)V

    .line 375
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mIsChoosen:Z

    .line 377
    .end local v0           #checkedItems:Landroid/util/SparseBooleanArray;
    .end local v1           #groupIsReadOnlyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2           #i:I
    .end local v3           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #size:I
    .end local v8           #titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    invoke-virtual {p0}, Lcom/android/htccontacts/app/GroupDialogPicker;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 414
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/htccontacts/app/GroupDialogPicker;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 419
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 421
    .local v0, backgroundColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/android/htccontacts/app/GroupDialogPicker;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 425
    .local v2, view:Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/app/GroupDialogPicker;->setContentView(Landroid/view/View;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/htccontacts/app/GroupDialogPicker;->resolveIntent()V

    .line 433
    invoke-virtual {p0}, Lcom/android/htccontacts/app/GroupDialogPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mResolver:Landroid/content/ContentResolver;

    .line 434
    new-instance v3, Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mQueryHandler:Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;

    .line 436
    new-instance v3, Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-direct {v3, p0}, Lcom/htc/app/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 439
    iget-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 440
    .local v1, params:Lcom/htc/app/HtcAlertController$AlertParams;
    iput-boolean v5, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 441
    iget v3, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mTitleTextResId:I

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/app/GroupDialogPicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 443
    iget v3, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mButtonOkLabelResId:I

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/app/GroupDialogPicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 444
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 445
    iget v3, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mButtonCancelLabelResId:I

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/app/GroupDialogPicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 448
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 451
    iget-object v3, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mQueryHandler:Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;

    invoke-virtual {v3}, Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;->startQueryGroupItem()V

    .line 452
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 707
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onDestroy()V

    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mIsDestroy:Z

    .line 709
    iget-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 713
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 717
    invoke-virtual {p0}, Lcom/android/htccontacts/app/GroupDialogPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mIsDestroy:Z

    if-nez v0, :cond_1

    .line 718
    iget-boolean v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mIsChoosen:Z

    if-nez v0, :cond_0

    .line 719
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/GroupDialogPicker;->setResult(I)V

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/app/GroupDialogPicker;->finish()V

    .line 723
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    .line 307
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 701
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onPause()V

    .line 702
    iget-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mUIHandler:Landroid/os/Handler;

    const v1, 0xf002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 690
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onRestart()V

    .line 691
    iget-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mQueryHandler:Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;->startQueryGroupItem()V

    .line 692
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 170
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 695
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onStop()V

    .line 696
    iget-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mQueryHandler:Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;->cancelQueryGroupItem()V

    .line 697
    iget-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mUIHandler:Landroid/os/Handler;

    const v1, 0xf002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 698
    return-void
.end method

.method protected resolveIntent()V
    .locals 4

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/android/htccontacts/app/GroupDialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 382
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mIntentAction:Ljava/lang/String;

    .line 383
    const-string v1, "SELECT_MODE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mSelectMode:I

    .line 385
    const-string v1, "EXCLUDE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mExcludeIdList:Ljava/util/ArrayList;

    .line 386
    const-string v1, "SELECTED_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mSelectedIdList:Ljava/util/ArrayList;

    .line 387
    const-string v1, "TITLE_TEXT_RES"

    const v2, 0x7f0a01db

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mTitleTextResId:I

    .line 391
    const-string v1, "BUTTON_OK_LABEL_RES"

    const v2, 0x7f0a0160

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mButtonOkLabelResId:I

    .line 393
    const-string v1, "BUTTON_CANCEL_LABEL_RES"

    const v2, 0x7f0a0161

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mButtonCancelLabelResId:I

    .line 396
    const-string v1, "SELECTED_APPEND_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mAppendedGroupTitle:Ljava/util/ArrayList;

    .line 399
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mAccountType:Ljava/lang/String;

    .line 400
    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mDataSet:Ljava/lang/String;

    .line 402
    const-string v1, "IS_FAVORITE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mIsFavorite:Z

    .line 403
    const-string v1, "PERSON_ACCOUNT_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mPersonAccountName:Ljava/lang/String;

    .line 404
    const-string v1, "PERSON_ACCOUNT_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mPersonAccountType:Ljava/lang/String;

    .line 406
    const-string v1, "extra_info_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mExtreInfoIndex:I

    .line 408
    const-string v1, "contact_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker;->mContactId:J

    .line 410
    return-void
.end method

.method protected setupAlert()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method
