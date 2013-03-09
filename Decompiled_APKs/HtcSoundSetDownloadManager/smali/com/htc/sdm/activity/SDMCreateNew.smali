.class public Lcom/htc/sdm/activity/SDMCreateNew;
.super Landroid/app/Activity;
.source "SDMCreateNew.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SDMCreateNew] "


# instance fields
.field headerText:Lcom/htc/widget/HeaderBarText;

.field private mCancelBtn:Lcom/htc/widget/HtcFooterButton;

.field private mDialog:Landroid/app/Dialog;

.field mDialogCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialogNewName:Landroid/widget/EditText;

.field mDialogReplaceClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDoneBtn:Lcom/htc/widget/HtcFooterButton;

.field private mPrefSoundSet:Landroid/content/SharedPreferences;

.field private mStrNew:Ljava/lang/String;

.field private mStrSuggest:Ljava/lang/String;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private m_nCurrentListType:I

.field private m_nCustomAppendIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->m_nCurrentListType:I

    .line 48
    iput-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDoneBtn:Lcom/htc/widget/HtcFooterButton;

    .line 49
    iput-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    .line 50
    iput-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialogNewName:Landroid/widget/EditText;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->m_nCustomAppendIndex:I

    .line 53
    iput-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mStrSuggest:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mStrNew:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialog:Landroid/app/Dialog;

    .line 57
    iput-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew;->headerText:Lcom/htc/widget/HeaderBarText;

    .line 59
    new-instance v0, Lcom/htc/sdm/activity/SDMCreateNew$1;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SDMCreateNew$1;-><init>(Lcom/htc/sdm/activity/SDMCreateNew;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mTextWatcher:Landroid/text/TextWatcher;

    .line 240
    new-instance v0, Lcom/htc/sdm/activity/SDMCreateNew$4;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SDMCreateNew$4;-><init>(Lcom/htc/sdm/activity/SDMCreateNew;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialogReplaceClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 300
    new-instance v0, Lcom/htc/sdm/activity/SDMCreateNew$5;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SDMCreateNew$5;-><init>(Lcom/htc/sdm/activity/SDMCreateNew;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialogCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sdm/activity/SDMCreateNew;)Lcom/htc/widget/HtcFooterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDoneBtn:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sdm/activity/SDMCreateNew;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mStrNew:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sdm/activity/SDMCreateNew;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialogNewName:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method AddNewSoundset2DB()V
    .locals 14

    .prologue
    const/4 v1, 0x2

    const/4 v13, 0x0

    .line 342
    new-instance v10, Lcom/htc/sdm/provider/SoundSetDAO;

    invoke-direct {v10}, Lcom/htc/sdm/provider/SoundSetDAO;-><init>()V

    .line 344
    .local v10, ssDAO:Lcom/htc/sdm/provider/SoundSetDAO;
    invoke-static {}, Lcom/htc/sdm/util/SDMUtil;->CreateUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    .line 345
    const-string v0, "0"

    iput-object v0, v10, Lcom/htc/sdm/provider/SoundSetDAO;->cat:Ljava/lang/String;

    .line 347
    iput v1, v10, Lcom/htc/sdm/provider/SoundSetDAO;->downloadStatus:I

    .line 348
    iput v1, v10, Lcom/htc/sdm/provider/SoundSetDAO;->srcType:I

    .line 349
    const/4 v0, 0x1

    iput v0, v10, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    .line 351
    const-string v0, "0"

    iput-object v0, v10, Lcom/htc/sdm/provider/SoundSetDAO;->version:Ljava/lang/String;

    .line 353
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd"

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 354
    .local v9, sdf:Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 355
    .local v11, today:Ljava/util/Date;
    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/htc/sdm/provider/SoundSetDAO;->reldate:Ljava/lang/String;

    .line 357
    const/4 v7, 0x0

    .line 358
    .local v7, c:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GUID = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 362
    .local v8, cursize:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 363
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->size:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 370
    :cond_0
    if-eqz v7, :cond_1

    .line 371
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_1
    if-eqz v8, :cond_2

    .line 376
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 377
    iput-object v8, v10, Lcom/htc/sdm/provider/SoundSetDAO;->size:Ljava/lang/String;

    .line 384
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET:Landroid/net/Uri;

    invoke-virtual {v10}, Lcom/htc/sdm/provider/SoundSetDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 387
    new-instance v6, Lcom/htc/sdm/provider/SoundSetInfoDAO;

    invoke-direct {v6}, Lcom/htc/sdm/provider/SoundSetInfoDAO;-><init>()V

    .line 388
    .local v6, InfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mStrNew:Ljava/lang/String;

    iput-object v0, v6, Lcom/htc/sdm/provider/SoundSetInfoDAO;->name:Ljava/lang/String;

    .line 389
    const-string v0, "custom"

    iput-object v0, v6, Lcom/htc/sdm/provider/SoundSetInfoDAO;->lang:Ljava/lang/String;

    .line 390
    iget-object v0, v10, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    iput-object v0, v6, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    .line 391
    const-string v0, "YOU"

    iput-object v0, v6, Lcom/htc/sdm/provider/SoundSetInfoDAO;->author:Ljava/lang/String;

    .line 392
    const-string v0, "YOU"

    iput-object v0, v6, Lcom/htc/sdm/provider/SoundSetInfoDAO;->corp:Ljava/lang/String;

    .line 394
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_INFO:Landroid/net/Uri;

    invoke-virtual {v6}, Lcom/htc/sdm/provider/SoundSetInfoDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 397
    invoke-static {p0}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v10, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/htc/sdm/util/SDMDBUtil;->DuplicateSoundSetChildbyParentGUID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {v13}, Lcom/htc/sdm/util/SDMUtil;->generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 400
    .local v12, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 402
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->finish()V

    .line 403
    return-void

    .line 370
    .end local v6           #InfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    .end local v12           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 371
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 379
    :cond_4
    const-string v0, "300 KB"

    iput-object v0, v10, Lcom/htc/sdm/provider/SoundSetDAO;->size:Ljava/lang/String;

    goto :goto_0
.end method

.method ReplaceSoundsetinDB(Ljava/lang/String;)V
    .locals 6
    .parameter "GUID"

    .prologue
    const/4 v5, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 480
    invoke-static {p0}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/htc/sdm/util/SDMDBUtil;->DuplicateSoundSetChildbyParentGUID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/htc/sdm/util/SDMDBUtil;->updateSoundSetSize(Landroid/content/Context;Ljava/lang/String;)I

    .line 483
    invoke-static {v5}, Lcom/htc/sdm/util/SDMUtil;->generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 484
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 486
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->finish()V

    .line 487
    return-void
.end method

.method public createReplaceNameDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 3
    .parameter "context"
    .parameter "strMessage"
    .parameter "positiveClickListener"
    .parameter "negativeClickListener"

    .prologue
    .line 332
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c015d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2, p3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2, p4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 337
    .local v0, dlg:Landroid/app/Dialog;
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v11, 0xa

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-wide/32 v6, 0x80000

    invoke-static {v5, v6, v7}, Lcom/htc/sdm/util/SDMDBUtil;->isDataStorageFull(Landroid/content/Context;J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/sdm/util/SDMUtil;->CreateDataStorageFullDialog(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->finish()V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0, v9}, Lcom/htc/sdm/activity/SDMCreateNew;->requestWindowFeature(I)Z

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v5, 0x7f030001

    invoke-virtual {p0, v5}, Lcom/htc/sdm/activity/SDMCreateNew;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 118
    const-string v5, "SDMListType"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->m_nCurrentListType:I

    .line 121
    :cond_2
    const v5, 0x7f0b0003

    invoke-virtual {p0, v5}, Lcom/htc/sdm/activity/SDMCreateNew;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HeaderBarText;

    iput-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->headerText:Lcom/htc/widget/HeaderBarText;

    .line 123
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->headerText:Lcom/htc/widget/HeaderBarText;

    if-eqz v5, :cond_3

    .line 125
    const v3, 0x7f09003e

    .line 126
    .local v3, nTitleId:I
    iget v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->m_nCurrentListType:I

    packed-switch v5, :pswitch_data_0

    .line 141
    :goto_1
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->headerText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 142
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->headerText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 146
    .end local v3           #nTitleId:I
    :cond_3
    const v5, 0x7f0b0007

    invoke-virtual {p0, v5}, Lcom/htc/sdm/activity/SDMCreateNew;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooterButton;

    iput-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDoneBtn:Lcom/htc/widget/HtcFooterButton;

    .line 147
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDoneBtn:Lcom/htc/widget/HtcFooterButton;

    if-eqz v5, :cond_4

    .line 149
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDoneBtn:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x20c0130

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 150
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDoneBtn:Lcom/htc/widget/HtcFooterButton;

    new-instance v6, Lcom/htc/sdm/activity/SDMCreateNew$2;

    invoke-direct {v6, p0}, Lcom/htc/sdm/activity/SDMCreateNew$2;-><init>(Lcom/htc/sdm/activity/SDMCreateNew;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_4
    const v5, 0x7f0b0006

    invoke-virtual {p0, v5}, Lcom/htc/sdm/activity/SDMCreateNew;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooterButton;

    iput-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    .line 161
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    if-eqz v5, :cond_5

    .line 163
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x7f09001f

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 164
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    new-instance v6, Lcom/htc/sdm/activity/SDMCreateNew$3;

    invoke-direct {v6, p0}, Lcom/htc/sdm/activity/SDMCreateNew$3;-><init>(Lcom/htc/sdm/activity/SDMCreateNew;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_5
    const v5, 0x7f0b0004

    invoke-virtual {p0, v5}, Lcom/htc/sdm/activity/SDMCreateNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 174
    .local v1, editTextLayout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_6

    .line 176
    invoke-virtual {v1, v9, v8}, Landroid/widget/LinearLayout;->setRoundedCornerEnabled(ZZ)V

    .line 180
    :cond_6
    const v5, 0x7f0b0005

    invoke-virtual {p0, v5}, Lcom/htc/sdm/activity/SDMCreateNew;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialogNewName:Landroid/widget/EditText;

    .line 182
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialogNewName:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 185
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x62

    if-ne v5, v6, :cond_7

    .line 187
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v10, v11, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 189
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialogNewName:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialogNewName:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 194
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialogNewName:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    const v5, 0x7f090066

    invoke-virtual {p0, v5}, Lcom/htc/sdm/activity/SDMCreateNew;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, strCustom:Ljava/lang/String;
    const-string v5, "SoundSetPref"

    invoke-virtual {p0, v5, v8}, Lcom/htc/sdm/activity/SDMCreateNew;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mPrefSoundSet:Landroid/content/SharedPreferences;

    .line 200
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mPrefSoundSet:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_8

    .line 202
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mPrefSoundSet:Landroid/content/SharedPreferences;

    const-string v6, "SoundSetCreateNewIndex"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->m_nCustomAppendIndex:I

    .line 207
    :cond_8
    iget v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->m_nCustomAppendIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->m_nCustomAppendIndex:I

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sdm/activity/SDMCreateNew;->m_nCustomAppendIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mStrSuggest:Ljava/lang/String;

    .line 210
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mStrSuggest:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/htc/sdm/util/SDMDBUtil;->IsCustomSoundSetNameExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 211
    iget-object v5, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialogNewName:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mStrSuggest:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 129
    .end local v1           #editTextLayout:Landroid/widget/LinearLayout;
    .end local v4           #strCustom:Ljava/lang/String;
    .restart local v3       #nTitleId:I
    :pswitch_0
    const v3, 0x7f09003e

    .line 130
    goto/16 :goto_1

    .line 132
    :pswitch_1
    const v3, 0x7f09003f

    .line 133
    goto/16 :goto_1

    .line 135
    :pswitch_2
    const v3, 0x7f090041

    .line 136
    goto/16 :goto_1

    .line 138
    :pswitch_3
    const v3, 0x7f090040

    goto/16 :goto_1

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 314
    packed-switch p1, :pswitch_data_0

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialog:Landroid/app/Dialog;

    return-object v1

    .line 318
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialogNewName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, text:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f09003d

    invoke-virtual {p0, v2}, Lcom/htc/sdm/activity/SDMCreateNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialogReplaceClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialogCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/htc/sdm/activity/SDMCreateNew;->createReplaceNameDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcAlertDialog;

    iput-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method onSave()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mDialogNewName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mStrNew:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mStrNew:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mStrSuggest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mPrefSoundSet:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mPrefSoundSet:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SoundSetCreateNewIndex"

    iget v2, p0, Lcom/htc/sdm/activity/SDMCreateNew;->m_nCustomAppendIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew;->mStrNew:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/htc/sdm/util/SDMDBUtil;->IsCustomSoundSetNameExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sdm/activity/SDMCreateNew;->showDialog(I)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SDMCreateNew;->AddNewSoundset2DB()V

    goto :goto_0
.end method
