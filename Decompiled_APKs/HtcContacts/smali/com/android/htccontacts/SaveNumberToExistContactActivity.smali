.class public Lcom/android/htccontacts/SaveNumberToExistContactActivity;
.super Lcom/android/htccontacts/app/BaseActivity;
.source "SaveNumberToExistContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;,
        Lcom/android/htccontacts/SaveNumberToExistContactActivity$LaunchRawContactTask;,
        Lcom/android/htccontacts/SaveNumberToExistContactActivity$LoadRawContactTask;,
        Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;,
        Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;,
        Lcom/android/htccontacts/SaveNumberToExistContactActivity$PostalLabelPrinter;,
        Lcom/android/htccontacts/SaveNumberToExistContactActivity$EmailLabelPrinter;,
        Lcom/android/htccontacts/SaveNumberToExistContactActivity$PhoneLabelPrinter;,
        Lcom/android/htccontacts/SaveNumberToExistContactActivity$LabelPrinter;,
        Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;
    }
.end annotation


# static fields
.field protected static final DATA_DATAIdx:I = 0x3

.field protected static final DATA_IDIdx:I = 0x0

.field protected static final DATA_LABELIdx:I = 0x2

.field protected static DATA_PROJECTION:[Ljava/lang/String; = null

.field protected static final DATA_RWIdx:I = 0x4

.field protected static final DATA_TYPEIdx:I = 0x1

.field static final MAIL_ADDRESS_INDEX:I = 0x2

.field static final MAIL_ID_INDEX:I = 0x0

.field static final MAIL_TYPE_INDEX:I = 0x1

.field static final PHONE_ID_INDEX:I = 0x0

.field static final PHONE_NUMBER_INDEX:I = 0x2

.field static final PHONE_TYPE_INDEX:I = 0x1

.field protected static final RAWCONTACT_PROJECTION:[Ljava/lang/String; = null

.field protected static final RC_ANIdx:I = 0x1

.field protected static final RC_ATIdx:I = 0x2

.field protected static final RC_DELIdx:I = 0x4

.field protected static final RC_IDIdx:I = 0x0

.field protected static final RC_NMIdx:I = 0x3

.field static final REQUEST_PICK_JOINT_MEMBER:I = 0x65

.field private static final isDebug:Z


# instance fields
.field final FLAGS_EMAIL:I

.field final FLAGS_PHONE:I

.field final MAX_VALUE:I

.field private TAG:Ljava/lang/String;

.field dropDownItem:Landroid/view/View;

.field editTextItem:Landroid/view/View;

.field isNoPrimary:Z

.field private isReady:Z

.field isSIM:Z

.field isSetType:Z

.field label_0_format:Ljava/lang/String;

.field label_format:Ljava/lang/String;

.field mAccountType:Ljava/lang/String;

.field private mContentTextWatcher:Landroid/text/TextWatcher;

.field mCurrentContactsSource:Lcom/android/htccontacts/model/AccountType;

.field mCursor:Landroid/database/Cursor;

.field mCustomerLabel:Ljava/lang/String;

.field mDialog:Lcom/htc/widget/HtcAlertDialog;

.field mEntityDelta:Lcom/android/htccontacts/model/EntityDelta;

.field mInfoText:Landroid/widget/TextView;

.field mIntent:Landroid/content/Intent;

.field mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;",
            ">;"
        }
    .end annotation
.end field

.field mMailAddress:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mNumberButton:Landroid/widget/Button;

.field mNumberText:Landroid/widget/EditText;

.field mPhoneNumber:Ljava/lang/String;

.field mPreSelectedIndex:I

.field mRawContactId:J

.field mRecordNumber:I

.field mResolver:Landroid/content/ContentResolver;

.field private mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

.field mSaveTarget:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

.field mSelectedIndex:I

.field mSelectionDatas:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

.field mSelectionShowList:[Ljava/lang/String;

.field mTextDialog:Lcom/htc/widget/HtcAlertDialog;

.field mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const-string v1, "account_type"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "deleted"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->RAWCONTACT_PROJECTION:[Ljava/lang/String;

    .line 137
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "data2"

    aput-object v1, v0, v3

    const-string v1, "data3"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseActivity;-><init>()V

    .line 64
    const-string v0, "SaveNumberToExistContactActivity"

    iput-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->TAG:Ljava/lang/String;

    .line 66
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->FLAGS_PHONE:I

    .line 67
    const/16 v0, 0x21

    iput v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->FLAGS_EMAIL:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSIM:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mItemList:Ljava/util/ArrayList;

    .line 79
    iput-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionDatas:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    .line 80
    iput-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionShowList:[Ljava/lang/String;

    .line 83
    iput v2, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectedIndex:I

    .line 84
    iput v2, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPreSelectedIndex:I

    .line 98
    iput-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->label_0_format:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->label_format:Ljava/lang/String;

    .line 100
    iput v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mRecordNumber:I

    .line 107
    iput-boolean v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSetType:Z

    .line 108
    new-instance v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ContentTextWatcher;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mContentTextWatcher:Landroid/text/TextWatcher;

    .line 113
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->MAX_VALUE:I

    .line 120
    sget-object v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->PHONE_NUMBER:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    iput-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSaveTarget:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    .line 1270
    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isReady:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/SaveNumberToExistContactActivity;Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getShowText(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->enableOkButton()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->disableOkButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->createSelectionDialog()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->doSaveAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->doRevertAction()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/htccontacts/SaveNumberToExistContactActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getPhoneTypeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/SaveNumberToExistContactActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getMailTypeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/SaveNumberToExistContactActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getPostalTypeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/SaveNumberToExistContactActivity;Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;I)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->createAddNumberWarningDialog(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/SaveNumberToExistContactActivity;Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->createInputCustomDialog(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createAddNumberWarningDialog(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;I)Lcom/htc/widget/HtcAlertDialog;
    .locals 5
    .parameter "item"
    .parameter "which"

    .prologue
    .line 902
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->value:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 903
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 904
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a0257

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 905
    const v1, 0x7f0a025a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->label:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 906
    const v1, 0x7f0a014f

    new-instance v2, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;ILcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 919
    const v1, 0x7f0a0152

    new-instance v2, Lcom/android/htccontacts/SaveNumberToExistContactActivity$6;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$6;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 925
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 927
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createContactsDataItemList(Ljava/lang/String;Ljava/lang/String;Lcom/android/htccontacts/SaveNumberToExistContactActivity$LabelPrinter;)[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    .locals 36
    .parameter "mimetype"
    .parameter "defaultLabel"
    .parameter "printer"

    .prologue
    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 605
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v31, preUsedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mCurrentContactsSource:Lcom/android/htccontacts/model/AccountType;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v26

    .line 608
    .local v26, kind:Lcom/android/htccontacts/model/DataKind;
    if-nez v26, :cond_1

    .line 609
    const/16 v32, 0x0

    .line 763
    :cond_0
    return-object v32

    .line 613
    :cond_1
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v34, v0

    .line 616
    .local v34, types:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    const/16 v33, 0x0

    .line 618
    .local v33, sum:I
    if-eqz v34, :cond_6

    .line 619
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 620
    .local v3, type:Lcom/android/htccontacts/model/AccountType$EditType;
    iget v0, v3, Lcom/android/htccontacts/model/AccountType$EditType;->specificMax:I

    move/from16 v30, v0

    .line 621
    .local v30, max:I
    if-gez v30, :cond_4

    .line 622
    const v30, 0x7fffffff

    .line 627
    :cond_3
    const v2, 0x7fffffff

    move/from16 v0, v33

    if-eq v0, v2, :cond_2

    .line 628
    const v2, 0x7fffffff

    move/from16 v0, v30

    if-ne v0, v2, :cond_5

    .line 629
    move/from16 v33, v30

    goto :goto_0

    .line 624
    :cond_4
    if-nez v30, :cond_3

    goto :goto_0

    .line 631
    :cond_5
    add-int v33, v33, v30

    goto :goto_0

    .line 639
    .end local v3           #type:Lcom/android/htccontacts/model/AccountType$EditType;
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v30           #max:I
    :cond_6
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    move/from16 v27, v0

    .line 641
    .local v27, kindMax:I
    if-nez v34, :cond_9

    .line 642
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/htccontacts/model/DataKind;->typeOverallMax:I

    move/from16 v27, v0

    .line 649
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mEntityDelta:Lcom/android/htccontacts/model/EntityDelta;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 651
    .local v17, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 652
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 653
    .local v18, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v2, "data2"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v8}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 654
    .local v3, type:I
    const-string v2, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 655
    .local v5, data:Ljava/lang/String;
    const-string v2, "_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 656
    .local v6, dataId:J
    const-string v2, "data3"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, label:Ljava/lang/String;
    const-string v2, "is_primary"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v8}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 658
    .local v23, isPrimary:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isNoPrimary:Z

    if-nez v2, :cond_7

    .line 659
    if-nez v23, :cond_a

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isNoPrimary:Z

    .line 661
    :cond_7
    if-nez v34, :cond_8

    .line 662
    const/4 v3, -0x1

    .line 664
    :cond_8
    new-instance v2, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    invoke-direct/range {v2 .. v7}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->insertToPreList(Ljava/util/ArrayList;Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)V

    goto :goto_2

    .line 645
    .end local v3           #type:I
    .end local v4           #label:Ljava/lang/String;
    .end local v5           #data:Ljava/lang/String;
    .end local v6           #dataId:J
    .end local v17           #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v18           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v23           #isPrimary:I
    :cond_9
    move/from16 v27, v33

    goto :goto_1

    .line 659
    .restart local v3       #type:I
    .restart local v4       #label:Ljava/lang/String;
    .restart local v5       #data:Ljava/lang/String;
    .restart local v6       #dataId:J
    .restart local v17       #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v18       #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v23       #isPrimary:I
    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 678
    .end local v3           #type:I
    .end local v4           #label:Ljava/lang/String;
    .end local v5           #data:Ljava/lang/String;
    .end local v6           #dataId:J
    .end local v18           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v23           #isPrimary:I
    :cond_b
    const/16 v32, 0x0

    .line 680
    .local v32, selectionList:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    const v2, 0x7fffffff

    move/from16 v0, v27

    if-ge v0, v2, :cond_10

    .line 681
    move/from16 v0, v27

    new-array v0, v0, [Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    move-object/from16 v32, v0

    .line 689
    :goto_4
    const/16 v29, 0x0

    .line 690
    .local v29, loopsize:I
    const v2, 0x7fffffff

    move/from16 v0, v27

    if-eq v0, v2, :cond_c

    if-gez v27, :cond_11

    :cond_c
    const/16 v24, 0x1

    .line 691
    .local v24, isUnlimit:Z
    :goto_5
    if-nez v34, :cond_12

    if-eqz v24, :cond_12

    .line 692
    move/from16 v29, v27

    .line 704
    :cond_d
    :goto_6
    const-string v14, "%s %d"

    .line 705
    .local v14, LabelFormat:Ljava/lang/String;
    const-string v35, "%s"

    .line 709
    .local v35, unlimitLabelFormat:Ljava/lang/String;
    const/4 v10, 0x0

    .line 710
    .local v10, baselabel:Ljava/lang/String;
    if-nez v34, :cond_15

    .line 712
    const/16 v20, 0x0

    .local v20, i:I
    :goto_7
    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 713
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v2, v8

    const/4 v8, 0x1

    add-int/lit8 v9, v20, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    invoke-static {v14, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 714
    const/16 v16, 0x0

    .line 715
    .local v16, daList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;"
    const/16 v19, 0x0

    .line 716
    .local v19, hasData:Z
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 717
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #daList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;"
    check-cast v16, Ljava/util/ArrayList;

    .line 718
    .restart local v16       #daList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;"
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 719
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    aput-object v2, v32, v20

    .line 720
    const/16 v19, 0x1

    .line 723
    :cond_e
    if-nez v19, :cond_f

    .line 724
    new-instance v8, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    const/4 v9, -0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    aput-object v8, v32, v20

    .line 712
    :cond_f
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 684
    .end local v10           #baselabel:Ljava/lang/String;
    .end local v14           #LabelFormat:Ljava/lang/String;
    .end local v16           #daList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;"
    .end local v19           #hasData:Z
    .end local v20           #i:I
    .end local v24           #isUnlimit:Z
    .end local v29           #loopsize:I
    .end local v35           #unlimitLabelFormat:Ljava/lang/String;
    :cond_10
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    move-object/from16 v32, v0

    goto :goto_4

    .line 690
    .restart local v29       #loopsize:I
    :cond_11
    const/16 v24, 0x0

    goto :goto_5

    .line 694
    .restart local v24       #isUnlimit:Z
    :cond_12
    if-nez v34, :cond_13

    if-nez v24, :cond_13

    .line 695
    move/from16 v29, v27

    goto :goto_6

    .line 697
    :cond_13
    if-eqz v34, :cond_14

    if-eqz v24, :cond_14

    .line 698
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v29

    goto :goto_6

    .line 700
    :cond_14
    if-eqz v34, :cond_d

    if-nez v24, :cond_d

    .line 701
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v29

    goto :goto_6

    .line 730
    .restart local v10       #baselabel:Ljava/lang/String;
    .restart local v14       #LabelFormat:Ljava/lang/String;
    .restart local v35       #unlimitLabelFormat:Ljava/lang/String;
    :cond_15
    const/16 v22, 0x0

    .line 731
    .local v22, index:I
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_16
    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 732
    .local v3, type:Lcom/android/htccontacts/model/AccountType$EditType;
    iget v15, v3, Lcom/android/htccontacts/model/AccountType$EditType;->specificMax:I

    .line 733
    .local v15, counts:I
    iget v2, v3, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$LabelPrinter;->printLabel(I)Ljava/lang/String;

    move-result-object v4

    .line 734
    .restart local v4       #label:Ljava/lang/String;
    if-gez v15, :cond_17

    .line 735
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v2, v8

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 736
    new-instance v8, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    iget v9, v3, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    aput-object v8, v32, v22

    .line 737
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 740
    :cond_17
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_9
    move/from16 v0, v20

    if-ge v0, v15, :cond_16

    .line 741
    if-lez v20, :cond_18

    .line 742
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v2, v8

    const/4 v8, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    invoke-static {v14, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 747
    :goto_a
    const/16 v25, 0x0

    .line 748
    .local v25, item:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    iget v2, v3, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getListFromPreList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v28

    .line 749
    .local v28, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;"
    if-eqz v28, :cond_19

    .line 750
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #item:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    check-cast v25, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    .line 751
    .restart local v25       #item:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    move-object/from16 v0, v25

    iput-object v4, v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->label:Ljava/lang/String;

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 754
    aput-object v25, v32, v22

    .line 758
    :goto_b
    add-int/lit8 v22, v22, 0x1

    .line 740
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 745
    .end local v25           #item:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    .end local v28           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;"
    :cond_18
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v2, v8

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    .line 756
    .restart local v25       #item:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    .restart local v28       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;"
    :cond_19
    new-instance v8, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    iget v9, v3, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    aput-object v8, v32, v22

    goto :goto_b
.end method

.method private createInputCustomDialog(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Lcom/htc/widget/HtcAlertDialog;
    .locals 5
    .parameter "data"

    .prologue
    .line 960
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 961
    .local v1, label:Landroid/widget/EditText;
    const/4 v2, 0x0

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v2, v3}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 963
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 964
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0163

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0160

    new-instance v4, Lcom/android/htccontacts/SaveNumberToExistContactActivity$8;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$8;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;Landroid/widget/EditText;Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0161

    new-instance v4, Lcom/android/htccontacts/SaveNumberToExistContactActivity$7;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$7;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 990
    .local v0, d:Lcom/htc/widget/HtcAlertDialog;
    return-object v0
.end method

.method private createLists()V
    .locals 9

    .prologue
    const v8, 0x7f0a005f

    .line 769
    const v6, 0x2020010

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 770
    .local v5, view:Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 771
    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    :cond_0
    iget-boolean v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSIM:Z

    if-eqz v6, :cond_1

    .line 775
    invoke-direct {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->fillSimData()V

    .line 778
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSaveTarget:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    sget-object v7, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->PHONE_NUMBER:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    if-ne v6, v7, :cond_2

    .line 779
    const-string v6, "vnd.android.cursor.item/phone_v2"

    const v7, 0x7f0a005e

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/htccontacts/SaveNumberToExistContactActivity$PhoneLabelPrinter;

    invoke-direct {v8, p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$PhoneLabelPrinter;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    invoke-direct {p0, v6, v7, v8}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->createContactsDataItemList(Ljava/lang/String;Ljava/lang/String;Lcom/android/htccontacts/SaveNumberToExistContactActivity$LabelPrinter;)[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionDatas:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    .line 792
    :goto_0
    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionDatas:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    if-eqz v6, :cond_4

    .line 793
    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionDatas:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionShowList:[Ljava/lang/String;

    .line 794
    const/4 v2, 0x0

    .line 796
    .local v2, i:I
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionDatas:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    .local v0, arr$:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .line 798
    .local v1, data:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionShowList:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getShowText(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 799
    add-int/lit8 v2, v2, 0x1

    .line 796
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 782
    .end local v0           #arr$:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    .end local v1           #data:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSaveTarget:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    sget-object v7, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->MAIL:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    if-ne v6, v7, :cond_3

    .line 783
    const-string v6, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/htccontacts/SaveNumberToExistContactActivity$EmailLabelPrinter;

    invoke-direct {v8, p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$EmailLabelPrinter;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    invoke-direct {p0, v6, v7, v8}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->createContactsDataItemList(Ljava/lang/String;Ljava/lang/String;Lcom/android/htccontacts/SaveNumberToExistContactActivity$LabelPrinter;)[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionDatas:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    goto :goto_0

    .line 787
    :cond_3
    const-string v6, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/htccontacts/SaveNumberToExistContactActivity$PostalLabelPrinter;

    invoke-direct {v8, p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$PostalLabelPrinter;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    invoke-direct {p0, v6, v7, v8}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->createContactsDataItemList(Ljava/lang/String;Ljava/lang/String;Lcom/android/htccontacts/SaveNumberToExistContactActivity$LabelPrinter;)[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionDatas:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    goto :goto_0

    .line 803
    :cond_4
    invoke-virtual {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->finish()V

    .line 806
    :cond_5
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isReady:Z

    .line 808
    return-void
.end method

.method private createSelectionDialog()Lcom/htc/widget/HtcAlertDialog;
    .locals 6

    .prologue
    .line 835
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionShowList:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 836
    const/4 v1, 0x0

    .line 894
    :goto_0
    return-object v1

    .line 839
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionShowList:[Ljava/lang/String;

    .line 840
    .local v3, mSelection:[Ljava/lang/String;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 841
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    new-instance v4, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 880
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mCurrentContactsSource:Lcom/android/htccontacts/model/AccountType;

    invoke-direct {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v2

    .line 881
    .local v2, kind:Lcom/android/htccontacts/model/DataKind;
    iget-object v4, v2, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 882
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSaveTarget:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    sget-object v5, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->PHONE_NUMBER:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    if-ne v4, v5, :cond_2

    .line 883
    const v4, 0x7f0a0159

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 892
    :goto_1
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 894
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 885
    .end local v1           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_2
    const v4, 0x7f0a015a

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 889
    :cond_3
    const v4, 0x7f0a0259

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1
.end method

.method private disableOkButton()V
    .locals 3

    .prologue
    .line 999
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 1000
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1001
    return-void
.end method

.method private doRevertAction()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->setResult(I)V

    .line 426
    invoke-virtual {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->finish()V

    .line 427
    return-void
.end method

.method private doSaveAction()V
    .locals 8

    .prologue
    .line 278
    iget-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionDatas:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    if-eqz v5, :cond_1

    .line 280
    iget v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectedIndex:I

    if-gez v5, :cond_0

    .line 311
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionDatas:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    iget v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectedIndex:I

    aget-object v3, v5, v6

    .line 285
    .local v3, item:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    iget-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSaveTarget:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    sget-object v6, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->PHONE_NUMBER:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    if-ne v5, v6, :cond_2

    .line 286
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->savePhoneHandleThrow(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)V

    .line 295
    .end local v3           #item:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    :cond_1
    :goto_1
    :try_start_0
    iget-boolean v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSIM:Z

    if-nez v5, :cond_3

    .line 296
    iget-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mUri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 297
    .local v0, contactId:J
    iget-object v5, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v5, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v0           #contactId:J
    :goto_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v4, newIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 309
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v4}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->setResult(ILandroid/content/Intent;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->finish()V

    goto :goto_0

    .line 288
    .end local v4           #newIntent:Landroid/content/Intent;
    .restart local v3       #item:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    :cond_2
    iget-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSaveTarget:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    sget-object v6, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->MAIL:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    if-ne v5, v6, :cond_1

    .line 289
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->saveMailHandleThrow(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)V

    goto :goto_1

    .line 300
    .end local v3           #item:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteSIMContactChangeIntent(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 303
    :catch_0
    move-exception v2

    .line 304
    .local v2, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->TAG:Ljava/lang/String;

    const-string v6, "error "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private enableOkButton()V
    .locals 3

    .prologue
    .line 994
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 995
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 996
    return-void
.end method

.method private fillSimData()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1215
    iget-object v12, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mEntityDelta:Lcom/android/htccontacts/model/EntityDelta;

    const-string v13, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v12, v13}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1216
    .local v7, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    new-instance v12, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    invoke-direct {v12, v10}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;)V

    iput-object v12, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    .line 1217
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1219
    .local v9, size:I
    :goto_0
    const/4 v0, 0x0

    .line 1220
    .local v0, counts:I
    if-eqz v7, :cond_4

    .line 1221
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v9, :cond_4

    .line 1222
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 1223
    .local v1, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v1, :cond_2

    const-string v12, "data1"

    invoke-virtual {v1, v12}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1224
    .local v6, number:Ljava/lang/String;
    :goto_2
    if-nez v0, :cond_3

    .line 1225
    if-eqz v6, :cond_0

    .line 1226
    iget-object v12, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    iput-object v6, v12, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->number:Ljava/lang/String;

    .line 1227
    add-int/lit8 v0, v0, 0x1

    .line 1221
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #counts:I
    .end local v1           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i:I
    .end local v6           #number:Ljava/lang/String;
    .end local v9           #size:I
    :cond_1
    move v9, v11

    .line 1217
    goto :goto_0

    .restart local v0       #counts:I
    .restart local v1       #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .restart local v2       #i:I
    .restart local v9       #size:I
    :cond_2
    move-object v6, v10

    .line 1223
    goto :goto_2

    .line 1230
    .restart local v6       #number:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x1

    if-ne v0, v12, :cond_0

    .line 1231
    if-eqz v6, :cond_0

    .line 1232
    iget-object v12, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    iput-object v6, v12, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->number1:Ljava/lang/String;

    .line 1233
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1238
    .end local v1           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i:I
    .end local v6           #number:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mEntityDelta:Lcom/android/htccontacts/model/EntityDelta;

    const-string v12, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v12}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1239
    .local v3, mailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v3, :cond_5

    .line 1240
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1241
    if-lez v9, :cond_5

    .line 1242
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 1243
    .restart local v1       #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v1, :cond_5

    .line 1244
    iget-object v12, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    const-string v10, "data1"

    invoke-virtual {v1, v10}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    const-string v10, "data1"

    invoke-virtual {v1, v10}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_4
    iput-object v10, v12, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->email:Ljava/lang/String;

    .line 1249
    .end local v1           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_5
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mEntityDelta:Lcom/android/htccontacts/model/EntityDelta;

    const-string v12, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v12}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1250
    .local v5, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v5, :cond_6

    .line 1251
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1252
    if-lez v9, :cond_6

    .line 1253
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 1254
    .restart local v1       #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v1, :cond_6

    .line 1255
    iget-object v11, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    const-string v10, "data1"

    invoke-virtual {v1, v10}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    const-string v10, "data1"

    invoke-virtual {v1, v10}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_5
    iput-object v10, v11, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->name:Ljava/lang/String;

    .line 1261
    .end local v1           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_6
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mEntityDelta:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {v10}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    .line 1263
    .local v4, main:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v10, "sourceid"

    invoke-virtual {v4, v10}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1264
    .local v8, recordnumber:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    iput-object v8, v10, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->recordnumber:Ljava/lang/String;

    .line 1267
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "main.getAsString(Contacts.DISPLAY_NAME):   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "display_name"

    invoke-virtual {v4, v12}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return-void

    .line 1244
    .end local v4           #main:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v5           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v8           #recordnumber:Ljava/lang/String;
    .restart local v1       #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_7
    const-string v10, ""

    goto :goto_4

    .line 1255
    .restart local v5       #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :cond_8
    const-string v10, ""

    goto :goto_5
.end method

.method private getListFromPreList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;",
            ">;>;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 946
    .local p1, preUsedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;>;"
    const/4 v2, 0x0

    .line 947
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 948
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 950
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    iget v3, v3, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->type:I

    if-ne v3, p2, :cond_0

    .line 951
    move-object v2, v1

    .line 955
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;"
    :cond_1
    return-object v2
.end method

.method private getMailTypeString(I)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 564
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 565
    const v1, 0x7f0a005f

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 568
    :cond_0
    :goto_0
    return-object v1

    .line 567
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 568
    .local v0, seq:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSaveTarget:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    sget-object v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->PHONE_NUMBER:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    if-ne v0, v1, :cond_0

    .line 505
    const-string v0, "vnd.android.cursor.item/phone_v2"

    .line 508
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "vnd.android.cursor.item/email_v2"

    goto :goto_0
.end method

.method private getPhoneTypeString(I)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 558
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v0

    .line 559
    .local v0, resId:I
    const/4 v1, 0x0

    .line 560
    .local v1, seq:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getPostalTypeString(I)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 572
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 573
    const v1, 0x7f0a0061

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 576
    :cond_0
    :goto_0
    return-object v1

    .line 575
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 576
    .local v0, seq:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getShowText(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 931
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 932
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v3, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->label:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 933
    iget-object v3, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->label:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 934
    .local v1, label:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 938
    .end local v1           #label:Ljava/lang/String;
    :cond_0
    iget-object v3, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->value:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 939
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 940
    iget-object v3, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 941
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 943
    .end local v2           #text:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private insertToPreList(Ljava/util/ArrayList;Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)V
    .locals 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;",
            ">;>;",
            "Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 813
    .local p1, preUsedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;>;"
    const/4 v1, 0x0

    .line 814
    .local v1, isInsert:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 815
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 817
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    iget v4, v4, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->type:I

    iget v5, p2, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->type:I

    if-ne v4, v5, :cond_0

    .line 818
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    const/4 v1, 0x1

    .line 824
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;"
    :cond_1
    if-nez v1, :cond_2

    .line 825
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v3, newlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;"
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    .end local v3           #newlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;>;"
    :cond_2
    return-void
.end method

.method private launchSelfActivity()V
    .locals 4

    .prologue
    .line 1041
    new-instance v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$LaunchRawContactTask;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$LaunchRawContactTask;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    .line 1042
    .local v0, task:Lcom/android/htccontacts/SaveNumberToExistContactActivity$LaunchRawContactTask;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$LaunchRawContactTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1043
    return-void
.end method

.method private resolveIntent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 431
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mIntent:Landroid/content/Intent;

    if-nez v4, :cond_0

    .line 495
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mIntent:Landroid/content/Intent;

    .line 434
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mUri:Landroid/net/Uri;

    .line 436
    const-string v4, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mMailAddress:Ljava/lang/String;

    .line 437
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mMailAddress:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 438
    const-string v4, "email"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mMailAddress:Ljava/lang/String;

    .line 441
    :cond_1
    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPhoneNumber:Ljava/lang/String;

    .line 442
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPhoneNumber:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 443
    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPhoneNumber:Ljava/lang/String;

    .line 446
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_3

    .line 447
    invoke-virtual {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->finish()V

    goto :goto_0

    .line 452
    :cond_3
    const-string v4, "isSim"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSIM:Z

    .line 455
    const v4, 0x7f070017

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 456
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSIM:Z

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 457
    iget-boolean v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSIM:Z

    iput-boolean v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSetType:Z

    .line 459
    const/4 v3, 0x0

    .line 460
    .local v3, resId:I
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPhoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 461
    sget-object v4, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->PHONE_NUMBER:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    iput-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSaveTarget:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    .line 462
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mInfoText:Landroid/widget/TextView;

    const v5, 0x7f0a00d3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 464
    const v3, 0x7f0a0257

    .line 466
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberText:Landroid/widget/EditText;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 467
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberText:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-static {v6, v6, v5}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 468
    iget-boolean v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSIM:Z

    if-eqz v4, :cond_4

    .line 469
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberText:Landroid/widget/EditText;

    const/16 v5, 0x28

    invoke-static {v4, v5}, Lcom/android/htccontacts/util/ContactsUtils;->restrainTextViewLength(Landroid/widget/TextView;I)V

    .line 490
    :cond_4
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->setTitleBar(I)V

    .line 492
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->dropDownItem:Landroid/view/View;

    const v5, 0x7f0700d5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 493
    .local v2, labeltitle:Landroid/widget/TextView;
    const v4, 0x7f0a0259

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 473
    .end local v2           #labeltitle:Landroid/widget/TextView;
    :cond_5
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mMailAddress:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 474
    sget-object v4, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->MAIL:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    iput-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSaveTarget:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    .line 475
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mMailAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mInfoText:Landroid/widget/TextView;

    const v5, 0x7f0a017e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 477
    const v3, 0x7f0a0258

    .line 478
    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberText:Landroid/widget/EditText;

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 479
    iget-boolean v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSIM:Z

    if-eqz v4, :cond_4

    .line 481
    invoke-virtual {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->finish()V

    goto :goto_1

    .line 485
    :cond_6
    invoke-virtual {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->finish()V

    goto :goto_1
.end method

.method private saveMail(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)V
    .locals 11
    .parameter "item"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 387
    const/4 v0, 0x1

    .line 388
    .local v0, isInsert:Z
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 390
    .local v4, values:Landroid/content/ContentValues;
    iget-wide v5, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->dataId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    iget-object v5, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->value:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 391
    :cond_0
    const/4 v0, 0x0

    .line 393
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mRawContactId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 394
    .local v3, uri:Landroid/net/Uri;
    const-string v5, "data"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 396
    .local v1, modifyUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mMailAddress:Ljava/lang/String;

    .line 397
    iget-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mMailAddress:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mMailAddress:Ljava/lang/String;

    .line 399
    const-string v5, "data1"

    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mMailAddress:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v5, "data2"

    iget v6, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget v5, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->type:I

    if-nez v5, :cond_2

    .line 404
    const-string v5, "data3"

    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mCustomerLabel:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_2
    if-eqz v0, :cond_5

    .line 408
    iget-boolean v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isNoPrimary:Z

    if-eqz v5, :cond_3

    .line 409
    const-string v5, "is_primary"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    :cond_3
    iget-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 412
    .local v2, result:Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 413
    const v5, 0x7f0a016b

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 421
    .end local v2           #result:Landroid/net/Uri;
    :cond_4
    :goto_0
    return-void

    .line 417
    :cond_5
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->dataId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 418
    iget-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v1, v4, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 419
    const v5, 0x7f0a016d

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private savePhone(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)V
    .locals 14
    .parameter "item"

    .prologue
    .line 315
    const/4 v3, 0x1

    .line 316
    .local v3, isInsert:Z
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .local v9, values:Landroid/content/ContentValues;
    iget-wide v10, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->dataId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_0

    iget-object v10, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->value:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 319
    :cond_0
    const/4 v3, 0x0

    .line 321
    :cond_1
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPhoneNumber:Ljava/lang/String;

    .line 322
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPhoneNumber:Ljava/lang/String;

    .line 323
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 384
    :cond_2
    :goto_0
    return-void

    .line 325
    :cond_3
    iget-boolean v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSIM:Z

    if-eqz v10, :cond_5

    .line 326
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    iget-object v10, v10, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->recordnumber:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 329
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 330
    .local v7, simvalues:Landroid/content/ContentValues;
    const-string v10, "name"

    iget-object v11, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    iget-object v11, v11, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->name:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v10, "number"

    iget-object v11, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    iget-object v11, v11, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->number:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v10, "number1"

    iget-object v11, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    iget-object v11, v11, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->number1:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v10, "emails"

    iget-object v11, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    iget-object v11, v11, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->email:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 336
    const-string v10, "number"

    iget-object v11, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_4
    const-string v10, "recordNumber"

    iget-object v11, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    iget-object v11, v11, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->recordnumber:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v10, "content://icc/phonebook"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 340
    .local v6, simUri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSIMDATA:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;

    iget-object v10, v10, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SIMDATA;->recordnumber:Ljava/lang/String;

    invoke-static {v6, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 341
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mResolver:Landroid/content/ContentResolver;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v6, v7, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 342
    .local v1, counts:I
    if-gtz v1, :cond_2

    .line 343
    const v10, 0x7f0a023c

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 349
    .end local v1           #counts:I
    .end local v6           #simUri:Landroid/net/Uri;
    .end local v7           #simvalues:Landroid/content/ContentValues;
    :cond_5
    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mRawContactId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 350
    .local v8, uri:Landroid/net/Uri;
    const-string v10, "data"

    invoke-static {v8, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 352
    .local v4, modifyUri:Landroid/net/Uri;
    const-string v10, "data1"

    iget-object v11, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v10, "data2"

    iget v11, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->type:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget v10, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->type:I

    if-nez v10, :cond_6

    .line 357
    const-string v10, "data3"

    iget-object v11, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mCustomerLabel:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_6
    if-eqz v3, :cond_9

    .line 361
    iget-boolean v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isNoPrimary:Z

    if-eqz v10, :cond_7

    .line 362
    const-string v10, "is_primary"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    :cond_7
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v10, v4, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 365
    .local v5, result:Landroid/net/Uri;
    if-eqz v5, :cond_8

    .line 366
    const v10, 0x7f0a016d

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 370
    :cond_8
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mEntityDelta:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {v10}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    .line 371
    .local v2, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v10, "account_type"

    invoke-virtual {v2, v10}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, accountType:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v10, "com.htc.android.mail.eas"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 373
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->triggerExchangeSyc(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 378
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v5           #result:Landroid/net/Uri;
    :cond_9
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->dataId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 379
    iget-object v10, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mResolver:Landroid/content/ContentResolver;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v9, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 380
    const v10, 0x7f0a016d

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method public assignEntity(Lcom/android/htccontacts/model/EntityDelta;)V
    .locals 9
    .parameter "state"

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v6

    .line 516
    .local v6, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    .line 517
    .local v2, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v7, "account_type"

    invoke-virtual {v2, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, accountType:Ljava/lang/String;
    const-string v7, "data_set"

    invoke-virtual {v2, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, dataSet:Ljava/lang/String;
    iput-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mAccountType:Ljava/lang/String;

    .line 520
    const-string v7, "_id"

    invoke-virtual {v2, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mRawContactId:J

    .line 521
    invoke-virtual {v6, v0, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v5

    .line 524
    .local v5, source:Lcom/android/htccontacts/model/AccountType;
    iput-object v5, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mCurrentContactsSource:Lcom/android/htccontacts/model/AccountType;

    .line 526
    iget-object v7, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mCurrentContactsSource:Lcom/android/htccontacts/model/AccountType;

    invoke-direct {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v3

    .line 527
    .local v3, kind:Lcom/android/htccontacts/model/DataKind;
    iput-object p1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mEntityDelta:Lcom/android/htccontacts/model/EntityDelta;

    .line 529
    invoke-direct {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->createLists()V

    .line 531
    const v7, 0x7f0700d5

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 533
    .local v4, labeltitle:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, v3, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 534
    :cond_0
    iget-object v7, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSaveTarget:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    sget-object v8, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->PHONE_NUMBER:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    if-ne v7, v8, :cond_1

    .line 535
    const v7, 0x7f0a0159

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 544
    :goto_0
    return-void

    .line 537
    :cond_1
    const v7, 0x7f0a015a

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 541
    :cond_2
    const v7, 0x7f0a0259

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public loadRawContact(J)V
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 1046
    new-instance v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$LoadRawContactTask;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$LoadRawContactTask;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    .line 1047
    .local v0, loasTask:Lcom/android/htccontacts/SaveNumberToExistContactActivity$LoadRawContactTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$LoadRawContactTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1048
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1193
    const/16 v3, 0x65

    if-ne v3, p1, :cond_3

    .line 1194
    invoke-virtual {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    if-nez p2, :cond_2

    .line 1198
    invoke-virtual {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->finish()V

    goto :goto_0

    .line 1202
    :cond_2
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1203
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1204
    .local v2, uri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1205
    .local v0, rawContactId:J
    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->loadRawContact(J)V

    goto :goto_0

    .line 1210
    .end local v0           #rawContactId:J
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 155
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    iput-boolean v8, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSIM:Z

    .line 157
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->requestWindowFeature(I)Z

    .line 159
    const v6, 0x7f030039

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->setContentView(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mResolver:Landroid/content/ContentResolver;

    .line 162
    const v6, 0x7f070049

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, blankView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, v8}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 167
    :cond_0
    const v6, 0x7f07007b

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 168
    .local v4, topArea:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 169
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_1
    const v6, 0x7f07007a

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, bottomArea:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_2
    const v6, 0x7f0700d9

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->editTextItem:Landroid/view/View;

    .line 177
    const v6, 0x7f0700d4

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->dropDownItem:Landroid/view/View;

    .line 179
    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->editTextItem:Landroid/view/View;

    const v7, 0x7f0700db

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberText:Landroid/widget/EditText;

    .line 180
    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mContentTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->editTextItem:Landroid/view/View;

    const v7, 0x7f0700da

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mInfoText:Landroid/widget/TextView;

    .line 182
    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->editTextItem:Landroid/view/View;

    const v7, 0x7f0700d8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 183
    .local v5, topRound:Landroid/view/View;
    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->editTextItem:Landroid/view/View;

    const v7, 0x7f0700d7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 185
    .local v2, bottomRound:Landroid/view/View;
    if-eqz v5, :cond_3

    .line 186
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_3
    if-eqz v2, :cond_4

    .line 189
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_4
    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->dropDownItem:Landroid/view/View;

    const v7, 0x7f0700d6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberButton:Landroid/widget/Button;

    .line 193
    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/htccontacts/customize/CustomizeResource;->getDrapdownButtonResoureceId(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 194
    iget-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;

    invoke-direct {v7, p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$1;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v6, 0x7f070017

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 212
    .local v3, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v3}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v6

    new-instance v7, Lcom/android/htccontacts/SaveNumberToExistContactActivity$2;

    invoke-direct {v7, p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$2;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {v3}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 219
    invoke-virtual {v3}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v6

    new-instance v7, Lcom/android/htccontacts/SaveNumberToExistContactActivity$3;

    invoke-direct {v7, p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$3;-><init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mIntent:Landroid/content/Intent;

    .line 226
    invoke-direct {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->resolveIntent()V

    .line 227
    invoke-direct {p0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->launchSelfActivity()V

    .line 228
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onPause()V

    .line 238
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onPostResume()V

    .line 233
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 256
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mIntent:Landroid/content/Intent;

    .line 257
    const-string v0, "entity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta;

    iput-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mEntityDelta:Lcom/android/htccontacts/model/EntityDelta;

    .line 258
    const-string v0, "rawContactId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mRawContactId:J

    .line 259
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mEntityDelta:Lcom/android/htccontacts/model/EntityDelta;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mEntityDelta:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->assignEntity(Lcom/android/htccontacts/model/EntityDelta;)V

    .line 262
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 248
    const-string v0, "intent"

    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 249
    const-string v0, "rawContactId"

    iget-wide v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mRawContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 250
    const-string v0, "entity"

    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mEntityDelta:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 251
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mTextDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mTextDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mTextDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 269
    :cond_0
    iput-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mTextDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 270
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 273
    :cond_1
    iput-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 274
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onStop()V

    .line 275
    return-void
.end method

.method public saveMailHandleThrow(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 1033
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->saveMail(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    :goto_0
    return-void

    .line 1034
    :catch_0
    move-exception v0

    .line 1036
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-static {p0, v0}, Lcom/android/htccontacts/util/ContactsUtils;->handleSQLiteFullException(Landroid/content/Context;Landroid/database/sqlite/SQLiteFullException;)V

    goto :goto_0
.end method

.method public savePhoneHandleThrow(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 1023
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->savePhone(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_0
    return-void

    .line 1024
    :catch_0
    move-exception v0

    .line 1026
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-static {p0, v0}, Lcom/android/htccontacts/util/ContactsUtils;->handleSQLiteFullException(Landroid/content/Context;Landroid/database/sqlite/SQLiteFullException;)V

    goto :goto_0
.end method

.method protected setTitleBar(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 498
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 499
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->buildHeaderBar(I)V

    .line 500
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setHeaderText(I)V

    .line 501
    return-void
.end method
