.class public Lcom/android/mms/ui/ActionListActivity;
.super Lcom/htc/app/HtcListActivity;
.source "ActionListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;,
        Lcom/android/mms/ui/ActionListActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final ACTION_ADD_EXISTING_CONTACT:I = 0x6

.field private static final ACTION_EMAIL:I = 0x4

.field private static final ACTION_MESSAGE:I = 0x2

.field private static final ACTION_MOBILE:I = 0x0

.field private static final ACTION_NEW_CONTACT:I = 0x5

.field private static final ACTION_OPEN_CONTACT:I = 0x3

.field private static final ACTION_VT_MOBILE:I = 0x1

.field private static final COLON:C = ':'

.field private static final HTC_DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = true

.field private static final REQUEST_MAKE_CALL:I = 0x1

.field private static final REQUEST_OPEN_CONTACT:I = 0x4

.field private static final REQUEST_SAVETO_CONTACTS:I = 0x0

.field private static final REQUEST_SEND_EMAIL:I = 0x3

.field private static final REQUEST_SEND_MESSAGE:I = 0x2

.field private static final SAVETO_CONTACTS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActionListActivity"

.field private static final TEL_PREFIX:Ljava/lang/String; = "tel:"


# instance fields
.field private HARDWARE_KEYBOARD_STATUS:I

.field private mAdapter:Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mId:Ljava/lang/String;

.field private mIsContact:Z

.field private mIsPhoneNumMode:Z

.field private mIsSim:Z

.field private mName:Ljava/lang/String;

.field private mPersonalId:J

.field private mTileText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 67
    iput-boolean v3, p0, Lcom/android/mms/ui/ActionListActivity;->mIsPhoneNumMode:Z

    .line 68
    iput-object v2, p0, Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/android/mms/ui/ActionListActivity;->mId:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lcom/android/mms/ui/ActionListActivity;->mTileText:Landroid/widget/EditText;

    .line 71
    iput-boolean v3, p0, Lcom/android/mms/ui/ActionListActivity;->mIsContact:Z

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ActionListActivity;->mPersonalId:J

    .line 73
    iput-object v2, p0, Lcom/android/mms/ui/ActionListActivity;->mName:Ljava/lang/String;

    .line 74
    iput-boolean v3, p0, Lcom/android/mms/ui/ActionListActivity;->mIsSim:Z

    .line 76
    iput-object v2, p0, Lcom/android/mms/ui/ActionListActivity;->mContext:Landroid/content/Context;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ActionListActivity;->HARDWARE_KEYBOARD_STATUS:I

    .line 600
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ActionListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->setContactInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ActionListActivity;)Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/ActionListActivity;->mAdapter:Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/ActionListActivity;Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;)Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mms/ui/ActionListActivity;->mAdapter:Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ActionListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/ActionListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ActionListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ActionListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/mms/ui/ActionListActivity;->mIsPhoneNumMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ActionListActivity;Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ActionListActivity;->bulidListItems(Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V

    return-void
.end method

.method private addToExistingContact()V
    .locals 4

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->getEditTextContent()Ljava/lang/CharSequence;

    move-result-object v1

    .line 501
    .local v1, text:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 502
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/ActionListActivity;->mIsPhoneNumMode:Z

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 504
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/ActionListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 505
    return-void
.end method

.method private bulidListItems(Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "mInflater"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, mActionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 381
    if-nez p2, :cond_0

    .line 407
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ActionListActivity;->mIsPhoneNumMode:Z

    if-eqz v0, :cond_3

    .line 385
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ActionListActivity;->mIsContact:Z

    if-eqz v0, :cond_5

    .line 402
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    :cond_3
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v0

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsEmailAddress()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 396
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 404
    :cond_5
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getEditTextContent()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mTileText:Landroid/widget/EditText;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;

    .line 413
    :cond_0
    :goto_0
    return-object v0

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mTileText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 412
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSaveToContactDialogView()Lcom/android/mms/ui/HtcSaveToContactsDialogView;
    .locals 4

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/mms/ui/ActionListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/HtcSaveToContactsDialogView;

    .line 321
    .local v0, dialogView:Lcom/android/mms/ui/HtcSaveToContactsDialogView;
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->setMsgText(Ljava/lang/String;)V

    .line 322
    new-instance v1, Lcom/android/mms/ui/ActionListActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ActionListActivity$2;-><init>(Lcom/android/mms/ui/ActionListActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->setCreateButtonOnClickListener(Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;)V

    .line 331
    new-instance v1, Lcom/android/mms/ui/ActionListActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ActionListActivity$3;-><init>(Lcom/android/mms/ui/ActionListActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->setSaveButtonOnClickListener(Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;)V

    .line 340
    return-object v0
.end method

.method private initViews()Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    .locals 10

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x0

    .line 101
    sget-object v6, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    invoke-static {p0, v6, v7, v7, v9}, Lcom/android/mms/util/CommonActivityLayout;->createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II[I)Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v1

    .line 105
    .local v1, controller:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, contentView:Landroid/view/View;
    const v6, 0x7f0e000b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 107
    .local v2, headerContainer:Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/android/mms/ui/ActionListActivity;->mContext:Landroid/content/Context;

    const-string v7, "common_titlebar_sublevel"

    const v8, 0x7f0200e5

    invoke-static {v6, v2, v7, v8}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->changeBgDrawable(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    .line 108
    iget-object v5, v1, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBar:Landroid/view/ViewGroup;

    check-cast v5, Lcom/htc/widget/HeaderBar;

    .line 109
    .local v5, title:Lcom/htc/widget/HeaderBar;
    invoke-virtual {v5, v9}, Lcom/htc/widget/HeaderBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    new-instance v3, Lcom/htc/widget/HeaderBarMiddle;

    iget-object v6, p0, Lcom/android/mms/ui/ActionListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    .line 111
    .local v3, inputHeader:Lcom/htc/widget/HeaderBarMiddle;
    invoke-virtual {v3, v9}, Lcom/htc/widget/HeaderBarMiddle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    new-instance v4, Lcom/htc/widget/HeaderBarInput;

    iget-object v6, p0, Lcom/android/mms/ui/ActionListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/htc/widget/HeaderBarInput;-><init>(Landroid/content/Context;)V

    .line 113
    .local v4, inputView:Lcom/htc/widget/HeaderBarInput;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 114
    invoke-virtual {v4}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ActionListActivity;->mTileText:Landroid/widget/EditText;

    .line 115
    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarMiddle;->addCenterView(Landroid/view/View;)V

    .line 116
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    return-object v1
.end method

.method private isHardwareKeyboardActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/android/mms/ui/ActionListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHardwareKeyboardAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/android/mms/ui/ActionListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeCall()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 418
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->getEditTextContent()Ljava/lang/CharSequence;

    move-result-object v4

    .line 425
    .local v4, text:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/mms/ui/ActionListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->getMakeCallDirectlyIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 430
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 432
    .local v3, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    iget-wide v6, p0, Lcom/android/mms/ui/ActionListActivity;->mPersonalId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 433
    iget-wide v6, p0, Lcom/android/mms/ui/ActionListActivity;->mPersonalId:J

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/ActionListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 437
    .local v0, bm:Landroid/graphics/Bitmap;
    const-string v6, "hasPhoto"

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    const-string v5, "personId"

    iget-wide v6, p0, Lcom/android/mms/ui/ActionListActivity;->mPersonalId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 440
    const-string v5, "number"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_0
    const-string v5, "fromDialer"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 446
    invoke-interface {v3, v2}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 448
    const-string v5, "ActionListActivity"

    const-string v6, "is not Contact make call"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Lcom/android/mms/ui/ActionListActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .end local v3           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    return-void

    .line 437
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v3       #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 452
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 454
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "HtcDialer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private makeVTCall()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 542
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->getEditTextContent()Ljava/lang/CharSequence;

    move-result-object v3

    .line 543
    .local v3, text:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/mms/ui/ActionListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->getMakeCallDirectlyIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 544
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "isVTCall"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 548
    .local v2, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 549
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 551
    :cond_0
    const-string v4, "fromDialer"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 552
    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 554
    const-string v4, "ActionListActivity"

    const-string v5, "is not Contact make vt call"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual {p0}, Lcom/android/mms/ui/ActionListActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_1
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "HtcDialer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private newContact()V
    .locals 4

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->getEditTextContent()Ljava/lang/CharSequence;

    move-result-object v1

    .line 492
    .local v1, text:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 493
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/ActionListActivity;->mIsPhoneNumMode:Z

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->createAddToNewContactIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 495
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/ActionListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 496
    return-void
.end method

.method private openContact()V
    .locals 3

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/android/mms/ui/ActionListActivity;->mIsContact:Z

    if-eqz v0, :cond_0

    .line 484
    iget-wide v0, p0, Lcom/android/mms/ui/ActionListActivity;->mPersonalId:J

    iget-boolean v2, p0, Lcom/android/mms/ui/ActionListActivity;->mIsSim:Z

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getOpenContactCardIntent(JZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ActionListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 487
    :cond_0
    return-void
.end method

.method private sendMail()V
    .locals 6

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->getEditTextContent()Ljava/lang/CharSequence;

    move-result-object v1

    .line 520
    .local v1, text:Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "mailto"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 521
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/ActionListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 522
    return-void
.end method

.method private sendMessage()V
    .locals 5

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->getEditTextContent()Ljava/lang/CharSequence;

    move-result-object v1

    .line 509
    .local v1, text:Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 510
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v2, "sms"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 512
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/ActionListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 515
    return-void
.end method

.method private setContactInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 196
    iget-boolean v1, p0, Lcom/android/mms/ui/ActionListActivity;->mIsPhoneNumMode:Z

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 198
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    iget-wide v1, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 199
    iget-wide v1, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    iput-wide v1, p0, Lcom/android/mms/ui/ActionListActivity;->mPersonalId:J

    .line 200
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mName:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mName:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mName:Ljava/lang/String;

    .line 202
    :cond_0
    iput-boolean v5, p0, Lcom/android/mms/ui/ActionListActivity;->mIsContact:Z

    .line 215
    .end local v0           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_1
    :goto_0
    const-string v1, "ActionListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/ui/ActionListActivity;->mPersonalId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v1, "ActionListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ActionListActivity;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getContactInfoFromEmailAddr(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 207
    .local v0, info:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 208
    const-string v1, "personId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/ActionListActivity;->mPersonalId:J

    .line 209
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mName:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mName:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mName:Ljava/lang/String;

    .line 211
    :cond_3
    iput-boolean v5, p0, Lcom/android/mms/ui/ActionListActivity;->mIsContact:Z

    goto :goto_0
.end method

.method private setTitileText()V
    .locals 5

    .prologue
    const/16 v4, 0x3a

    const/4 v3, 0x3

    .line 131
    iget-boolean v1, p0, Lcom/android/mms/ui/ActionListActivity;->mIsPhoneNumMode:Z

    if-eqz v1, :cond_3

    .line 133
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mTileText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mId:Ljava/lang/String;

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 136
    .local v0, index:I
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mId:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;

    .line 140
    .end local v0           #index:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mTileText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->isHardwareKeyboardAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->isHardwareKeyboardActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mTileText:Landroid/widget/EditText;

    const-string v2, "0123456789#*abc+"

    invoke-static {v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 169
    :goto_1
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mTileText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mTileText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mTileText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 165
    .restart local v0       #index:I
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mId:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mTileText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity;->mTileText:Landroid/widget/EditText;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 305
    packed-switch p1, :pswitch_data_0

    .line 315
    :goto_0
    return-void

    .line 311
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ActionListActivity;->setResult(I)V

    .line 312
    invoke-virtual {p0}, Lcom/android/mms/ui/ActionListActivity;->finish()V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 175
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->isHardwareKeyboardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/mms/ui/ActionListActivity;->HARDWARE_KEYBOARD_STATUS:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ActionListActivity;->mIsPhoneNumMode:Z

    if-eqz v0, :cond_0

    .line 179
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/ActionListActivity;->mTileText:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 181
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/mms/ui/ActionListActivity;->HARDWARE_KEYBOARD_STATUS:I

    .line 190
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ActionListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ActionListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 192
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ActionListActivity;->mTileText:Landroid/widget/EditText;

    const-string v1, "0123456789#*abc+"

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 186
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/mms/ui/ActionListActivity;->HARDWARE_KEYBOARD_STATUS:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 221
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 223
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ActionListActivity;->requestWindowFeature(I)Z

    .line 224
    invoke-virtual {p0}, Lcom/android/mms/ui/ActionListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ActionListActivity;->mContext:Landroid/content/Context;

    .line 225
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->initViews()Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v1

    .line 226
    .local v1, controller:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ActionListActivity;->setContentView(Landroid/view/View;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/mms/ui/ActionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 229
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "isPhoneNum"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/ActionListActivity;->mIsPhoneNumMode:Z

    .line 231
    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getHeaderBarComposer()Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    move-result-object v0

    .line 232
    .local v0, composer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    iget-object v4, v0, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarText;

    .line 233
    .local v3, view:Lcom/htc/widget/HeaderBarText;
    iget-boolean v4, p0, Lcom/android/mms/ui/ActionListActivity;->mIsPhoneNumMode:Z

    if-eqz v4, :cond_0

    const v4, 0x7f0901bd

    :goto_0
    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 234
    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 236
    const-string v4, "id"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ActionListActivity;->mId:Ljava/lang/String;

    .line 241
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->setTitileText()V

    .line 243
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/ui/ActionListActivity$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ActionListActivity$1;-><init>(Lcom/android/mms/ui/ActionListActivity;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 261
    invoke-virtual {p0}, Lcom/android/mms/ui/ActionListActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mms/ui/ActionListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 266
    return-void

    .line 233
    :cond_0
    const v4, 0x7f0901bc

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 345
    packed-switch p1, :pswitch_data_0

    .line 377
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 348
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901d7

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->getSaveToContactDialogView()Lcom/android/mms/ui/HtcSaveToContactsDialogView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 572
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ActionListActivity$ViewHolder;

    .line 573
    .local v0, cache:Lcom/android/mms/ui/ActionListActivity$ViewHolder;
    iget v1, v0, Lcom/android/mms/ui/ActionListActivity$ViewHolder;->type:I

    .line 575
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 599
    :goto_0
    return-void

    .line 577
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->makeCall()V

    goto :goto_0

    .line 580
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->sendMessage()V

    goto :goto_0

    .line 583
    :pswitch_2
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->openContact()V

    goto :goto_0

    .line 586
    :pswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->sendMail()V

    goto :goto_0

    .line 589
    :pswitch_4
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->newContact()V

    goto :goto_0

    .line 592
    :pswitch_5
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->addToExistingContact()V

    goto :goto_0

    .line 595
    :pswitch_6
    invoke-direct {p0}, Lcom/android/mms/ui/ActionListActivity;->makeVTCall()V

    goto :goto_0

    .line 575
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
