.class public Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;
.super Lcom/android/htccontacts/app/BaseActivity;
.source "ShowContactInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;
    }
.end annotation


# static fields
.field private static final DELETE_TOKEN:I = 0x1

.field public static final EXTRA_DELETE:Ljava/lang/String; = "can_delete"

.field public static final EXTRA_NAME:Ljava/lang/String; = "display_name"

.field public static final EXTRA_PHOTO_BP:Ljava/lang/String; = "photo_bp"

.field public static final EXTRA_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field private static final QUERY_TOKEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShowContactInfoDialog"


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mPhotoId:J

.field private mQueryHandler:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;

.field private mShowDeleteOption:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseActivity;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mUri:Landroid/net/Uri;

    .line 57
    iput-object v2, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mDisplayName:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhoto:Landroid/graphics/Bitmap;

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhotoId:J

    .line 60
    iput-object v2, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mShowDeleteOption:Z

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;Landroid/database/Cursor;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->buildView(Landroid/database/Cursor;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->showContactDialog(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->finishSelf()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;)Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mQueryHandler:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;

    return-object v0
.end method

.method private buildCommonListHeaderView(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/view/View;
    .locals 4
    .parameter "name"
    .parameter "photo"

    .prologue
    .line 298
    new-instance v0, Lcom/htc/widget/HtcListItem;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    .line 299
    .local v0, item:Lcom/htc/widget/HtcListItem;
    new-instance v2, Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcListItemQuickContactBadge;-><init>(Landroid/content/Context;)V

    .line 300
    .local v2, mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 301
    new-instance v1, Lcom/htc/widget/HtcListItem2LineText;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    .line 302
    .local v1, mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 303
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 304
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 305
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 306
    const v3, 0x7f020035

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    .line 307
    return-object v0
.end method

.method private buildCommonListItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter "label"
    .parameter "value"

    .prologue
    .line 311
    new-instance v0, Lcom/htc/widget/HtcListItem;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, item:Lcom/htc/widget/HtcListItem;
    new-instance v1, Lcom/htc/widget/HtcListItem2LineText;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    .line 313
    .local v1, mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 315
    const v2, 0x203003d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 316
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 317
    return-object v0
.end method

.method private buildDividerView()Landroid/view/View;
    .locals 4

    .prologue
    .line 321
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 322
    .local v0, divider:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 323
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    const v2, 0x2080700

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 325
    return-object v0
.end method

.method private buildView(Landroid/database/Cursor;)Landroid/view/View;
    .locals 30
    .parameter "c"

    .prologue
    .line 196
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v3, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v24, phonetypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v22, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v13, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v20, organizationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    .line 204
    const-string v26, "account_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 205
    .local v7, acountTypeIdx:I
    const-string v26, "data_set"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 206
    .local v11, dataSetIdx:I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-eqz v26, :cond_8

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mDisplayName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    .line 208
    const-string v26, "display_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mDisplayName:Ljava/lang/String;

    .line 210
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhotoId:J

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x1

    cmp-long v26, v26, v28

    if-nez v26, :cond_2

    .line 211
    const-string v26, "photo_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhotoId:J

    .line 214
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    if-nez v26, :cond_4

    .line 215
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhotoId:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-lez v26, :cond_3

    .line 216
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhotoId:J

    move-wide/from16 v26, v0

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhoto:Landroid/graphics/Bitmap;

    .line 219
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    if-nez v26, :cond_4

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x2080846

    invoke-static/range {v26 .. v27}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhoto:Landroid/graphics/Bitmap;

    .line 224
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, accountType:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 226
    .local v10, dataSet:Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v6

    .line 227
    .local v6, accountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 228
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_5
    const-string v26, "mimetype"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 231
    .local v18, mimetype:Ljava/lang/String;
    const-string v26, "data1"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 232
    .local v9, data:Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 233
    const-string v26, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 234
    const-string v26, "data2"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 235
    .local v23, phoneType:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 236
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 239
    .end local v23           #phoneType:Ljava/lang/String;
    :cond_6
    const-string v26, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 240
    if-eqz v9, :cond_0

    .line 241
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 243
    :cond_7
    const-string v26, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 244
    if-eqz v9, :cond_0

    .line 245
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 253
    .end local v4           #accountType:Ljava/lang/String;
    .end local v6           #accountTypeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .end local v7           #acountTypeIdx:I
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #dataSet:Ljava/lang/String;
    .end local v11           #dataSetIdx:I
    .end local v18           #mimetype:Ljava/lang/String;
    :cond_8
    const-string v26, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/LayoutInflater;

    const v27, 0x7f03004c

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 256
    .local v17, mainLayout:Landroid/view/View;
    const v26, 0x7f07004c

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 257
    .local v8, content:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mDisplayName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->buildCommonListHeaderView(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/view/View;

    move-result-object v14

    .line 258
    .local v14, header:Landroid/view/View;
    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->buildDividerView()Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    .line 262
    .local v5, accountTypeDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    const v26, 0x7f0a0394

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v26

    iget-object v0, v5, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v5, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->showAccountLabelForListView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->buildCommonListItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v25

    .line 267
    .local v25, view:Landroid/view/View;
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->buildDividerView()Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 270
    .end local v5           #accountTypeDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .end local v25           #view:Landroid/view/View;
    :cond_9
    const/16 v16, 0x0

    .line 271
    .local v16, index:I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 272
    .local v21, phone:Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->buildCommonListItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v25

    .line 274
    .restart local v25       #view:Landroid/view/View;
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->buildDividerView()Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    add-int/lit8 v16, v16, 0x1

    .line 277
    goto :goto_2

    .line 278
    .end local v21           #phone:Ljava/lang/String;
    .end local v25           #view:Landroid/view/View;
    :cond_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 279
    .local v12, email:Ljava/lang/String;
    const v26, 0x7f0a00ad

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v12}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->buildCommonListItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v25

    .line 281
    .restart local v25       #view:Landroid/view/View;
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->buildDividerView()Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 284
    .end local v12           #email:Ljava/lang/String;
    .end local v25           #view:Landroid/view/View;
    :cond_b
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 285
    .local v19, organization:Ljava/lang/String;
    const v26, 0x7f0a0059

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->buildCommonListItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v25

    .line 287
    .restart local v25       #view:Landroid/view/View;
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->buildDividerView()Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 291
    .end local v19           #organization:Ljava/lang/String;
    .end local v25           #view:Landroid/view/View;
    :cond_c
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v26

    if-lez v26, :cond_d

    .line 292
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 294
    :cond_d
    return-object v17
.end method

.method private finishSelf()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 147
    invoke-virtual {p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->finish()V

    .line 150
    :cond_0
    return-void
.end method

.method private showContactDialog(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 329
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a00ef

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 331
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 332
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 333
    iget-boolean v1, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mShowDeleteOption:Z

    if-eqz v1, :cond_0

    .line 334
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 335
    const v1, 0x7f0a0155

    new-instance v2, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$1;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$1;-><init>(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 343
    const v1, 0x7f0a0147

    new-instance v2, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;-><init>(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 372
    :cond_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 373
    iget-object v1, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 374
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedState"

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 75
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 77
    .local v8, backgroundColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 81
    .local v9, view:Landroid/view/View;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {p0, v9}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->setContentView(Landroid/view/View;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mUri:Landroid/net/Uri;

    .line 96
    invoke-virtual {p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "display_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mDisplayName:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iput-object v2, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mDisplayName:Ljava/lang/String;

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "photo_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhotoId:J

    .line 101
    invoke-virtual {p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "photo_bp"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhoto:Landroid/graphics/Bitmap;

    .line 102
    invoke-virtual {p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "can_delete"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mShowDeleteOption:Z

    .line 104
    new-instance v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;-><init>(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mQueryHandler:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;

    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mQueryHandler:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;

    iget-object v3, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mUri:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onDestroy()V

    .line 127
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mShowDeleteOption:Z

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->finishSelf()V

    .line 143
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onPause()V

    .line 114
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->finish()V

    .line 121
    :cond_1
    return-void
.end method
