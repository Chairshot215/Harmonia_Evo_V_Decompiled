.class public Lcom/android/htccontacts/DeDuplicationActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "DeDuplicationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;,
        Lcom/android/htccontacts/DeDuplicationActivity$DeleteDuplicatedThread;,
        Lcom/android/htccontacts/DeDuplicationActivity$DupSet;,
        Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;,
        Lcom/android/htccontacts/DeDuplicationActivity$ScanContactsThread;,
        Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;,
        Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeDuplicationActivity"


# instance fields
.field private final COMPARE_A_SUBSET_OF_B:I

.field private final COMPARE_B_SUBSET_OF_A:I

.field private final COMPARE_DIFF:I

.field private final COMPARE_MATCH:I

.field private final MSG_ALL_CONTACTS_CHECKED:I

.field private final MSG_ALL_CONTACTS_DELETED:I

.field private final MSG_CHECKING_CONTACT:I

.field private final MSG_DELETE_ONE_CONTACT:I

.field private final MSG_TOTAL_CONTACTS_NUMBER:I

.field private final VIEW_TYPE_MAJOR:I

.field private final VIEW_TYPE_SUBSET:I

.field private mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;

.field private mButtonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

.field private mCancel:Z

.field mDeleteButton:Lcom/htc/widget/HtcFooterButton;

.field mHandler:Landroid/os/Handler;

.field private mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

.field private mListItemDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mPorcessIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;

.field private mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;

.field private mScanContactsThread:Lcom/android/htccontacts/DeDuplicationActivity$ScanContactsThread;

.field private mSelectedAccountIdx:I

.field private mSelectedCount:I

.field private mSubsetItemCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 91
    iput v1, p0, Lcom/android/htccontacts/DeDuplicationActivity;->COMPARE_DIFF:I

    .line 92
    iput v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->COMPARE_MATCH:I

    .line 93
    iput v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->COMPARE_A_SUBSET_OF_B:I

    .line 94
    iput v3, p0, Lcom/android/htccontacts/DeDuplicationActivity;->COMPARE_B_SUBSET_OF_A:I

    .line 95
    iput v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->MSG_CHECKING_CONTACT:I

    .line 96
    iput v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->MSG_ALL_CONTACTS_CHECKED:I

    .line 97
    iput v3, p0, Lcom/android/htccontacts/DeDuplicationActivity;->MSG_TOTAL_CONTACTS_NUMBER:I

    .line 98
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->MSG_DELETE_ONE_CONTACT:I

    .line 99
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->MSG_ALL_CONTACTS_DELETED:I

    .line 100
    iput v1, p0, Lcom/android/htccontacts/DeDuplicationActivity;->VIEW_TYPE_MAJOR:I

    .line 101
    iput v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->VIEW_TYPE_SUBSET:I

    .line 105
    iput-boolean v1, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mCancel:Z

    .line 107
    iput v1, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mPorcessIds:Ljava/util/ArrayList;

    .line 113
    iput v1, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSubsetItemCount:I

    .line 132
    new-instance v0, Lcom/android/htccontacts/DeDuplicationActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/DeDuplicationActivity$1;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 302
    new-instance v0, Lcom/android/htccontacts/DeDuplicationActivity$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/DeDuplicationActivity$2;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mHandler:Landroid/os/Handler;

    .line 685
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/DeDuplicationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/htccontacts/DeDuplicationActivity;->displayDeleteFinishDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/DeDuplicationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/htccontacts/DeDuplicationActivity;->startWithMajorAccount()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/DeDuplicationActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mCancel:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/DeDuplicationActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/DeDuplicationActivity;->getAccountTypeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/htccontacts/DeDuplicationActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedAccountIdx:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/DeDuplicationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/htccontacts/DeDuplicationActivity;->startScanningThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/DeDuplicationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/htccontacts/DeDuplicationActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/htccontacts/DeDuplicationActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/DeDuplicationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/htccontacts/DeDuplicationActivity;->updateDeleteButtonState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mButtonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mAdapter:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/htccontacts/DeDuplicationActivity;Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;)Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mAdapter:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/DeDuplicationActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/htccontacts/DeDuplicationActivity;->setAllItemChecked(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/htccontacts/DeDuplicationActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method private compare(Landroid/content/EntityIterator;Landroid/content/EntityIterator;)I
    .locals 3
    .parameter "A"
    .parameter "B"

    .prologue
    .line 948
    const/4 v2, 0x0

    .line 949
    .local v2, rtn:I
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/DeDuplicationActivity;->is_A_subset_of_B(Landroid/content/EntityIterator;Landroid/content/EntityIterator;)Z

    move-result v0

    .line 950
    .local v0, A_is_subset_of_B:Z
    invoke-direct {p0, p2, p1}, Lcom/android/htccontacts/DeDuplicationActivity;->is_A_subset_of_B(Landroid/content/EntityIterator;Landroid/content/EntityIterator;)Z

    move-result v1

    .line 952
    .local v1, B_is_subset_of_A:Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 953
    const/4 v2, 0x1

    .line 960
    :cond_0
    :goto_0
    return v2

    .line 954
    :cond_1
    if-eqz v0, :cond_2

    .line 955
    const/4 v2, 0x2

    goto :goto_0

    .line 956
    :cond_2
    if-eqz v1, :cond_0

    .line 957
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private displayDeleteFinishDialog()V
    .locals 4

    .prologue
    .line 523
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 524
    .local v0, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0a03d5

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 525
    const v2, 0x7f0a03d6

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 527
    const v2, 0x7f0a0160

    new-instance v3, Lcom/android/htccontacts/DeDuplicationActivity$5;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/DeDuplicationActivity$5;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 533
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 535
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 536
    .local v1, d:Lcom/htc/widget/HtcAlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 537
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 538
    return-void
.end method

.method private getAccountTypeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "acc_type"
    .parameter "dataSet"

    .prologue
    const v3, 0x7f0a00f8

    .line 644
    const/4 v0, 0x0

    .line 646
    .local v0, rtn:Ljava/lang/String;
    const-string v2, "com.htc.android.pcsc"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 647
    const v2, 0x7f0a0029

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 671
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 672
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v1

    .line 673
    .local v1, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    if-eqz v1, :cond_1

    .line 674
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    .end local v1           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_1
    if-nez v0, :cond_b

    .line 681
    .end local p1
    :goto_1
    return-object p1

    .line 648
    .restart local p1
    :cond_2
    const-string v2, "com.htc.android.myphonebook"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 649
    const v2, 0x7f0a00ff

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 650
    :cond_3
    const-string v2, "com.htc.android.mail.eas"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 651
    const v2, 0x7f0a00fe

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 652
    :cond_4
    const-string v2, "com.google"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 653
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v1

    .line 654
    .restart local v1       #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    goto :goto_0

    .end local v1           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_5
    const-string v2, "com.htc.socialnetwork.facebook"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 658
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 659
    :cond_6
    const-string v2, "com.facebook.auth.login"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 661
    :cond_7
    const-string v2, "com.htc.socialnetwork.flickr"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 662
    const v2, 0x7f0a00f9

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 663
    :cond_8
    const-string v2, "com.htc.socialnetwork.plurk"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 664
    const v2, 0x7f0a00fc

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 665
    :cond_9
    const-string v2, "com.htc.htctwitter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 666
    const v2, 0x7f0a00fa

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 667
    :cond_a
    const-string v2, "com.skype.contacts.sync"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    const v2, 0x7f0a00fb

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    move-object p1, v0

    .line 681
    goto/16 :goto_1
.end method

.method private initListHeaderView()V
    .locals 2

    .prologue
    .line 542
    new-instance v0, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;-><init>(Lcom/android/htccontacts/widget/HeaderSelectedControlLayout$IHeaderSelectedControlLayout;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    .line 543
    invoke-virtual {p0}, Lcom/android/htccontacts/DeDuplicationActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 544
    return-void
.end method

.method private isContentValuesExactlyTheSame(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 6
    .parameter "A"
    .parameter "B"

    .prologue
    .line 1037
    const/4 v3, 0x1

    .line 1038
    .local v3, rtn:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0xf

    if-ge v2, v4, :cond_2

    .line 1039
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, Adata:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1042
    .local v1, Bdata:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1043
    const-string v0, ""

    .line 1046
    :cond_0
    if-nez v1, :cond_1

    .line 1047
    const-string v1, ""

    .line 1050
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1051
    const/4 v3, 0x0

    .line 1056
    .end local v0           #Adata:Ljava/lang/String;
    .end local v1           #Bdata:Ljava/lang/String;
    :cond_2
    return v3

    .line 1038
    .restart local v0       #Adata:Ljava/lang/String;
    .restart local v1       #Bdata:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private is_A_subset_of_B(Landroid/content/EntityIterator;Landroid/content/EntityIterator;)Z
    .locals 13
    .parameter "A"
    .parameter "B"

    .prologue
    .line 964
    const/4 v0, 0x1

    .line 965
    .local v0, A_is_subset_of_B:Z
    invoke-interface {p1}, Landroid/content/EntityIterator;->reset()V

    .line 966
    :cond_0
    invoke-interface {p1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 967
    invoke-interface {p1}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .line 968
    .local v2, Aentity:Landroid/content/Entity;
    invoke-virtual {v2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity$NamedContentValues;

    .line 969
    .local v4, AnamedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v1, v4, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 970
    .local v1, AcontentValues:Landroid/content/ContentValues;
    const-string v12, "mimetype"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 971
    .local v3, Akey:Ljava/lang/String;
    const-string v12, "vnd.android.cursor.item/name"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 975
    const-string v12, "vnd.android.cursor.item/photo"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 979
    const-string v12, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 983
    const-string v12, "vnd.android.cursor.item/htc_event_v2"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 987
    invoke-interface {p2}, Landroid/content/EntityIterator;->reset()V

    .line 988
    const/4 v11, 0x0

    .line 989
    .local v11, isKeyAndValueMatch:Z
    :cond_2
    invoke-interface {p2}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 990
    invoke-interface {p2}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Entity;

    .line 991
    .local v6, Bentity:Landroid/content/Entity;
    invoke-virtual {v6}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Entity$NamedContentValues;

    .line 992
    .local v8, BnamedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v5, v8, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 993
    .local v5, BcontentValues:Landroid/content/ContentValues;
    const-string v12, "mimetype"

    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 994
    .local v7, Bkey:Ljava/lang/String;
    const-string v12, "vnd.android.cursor.item/name"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 998
    const-string v12, "vnd.android.cursor.item/photo"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1002
    const-string v12, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1006
    const-string v12, "vnd.android.cursor.item/htc_event_v2"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1010
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1011
    invoke-direct {p0, v1, v5}, Lcom/android/htccontacts/DeDuplicationActivity;->isContentValuesExactlyTheSame(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1012
    const/4 v11, 0x1

    goto :goto_0

    .line 1021
    .end local v5           #BcontentValues:Landroid/content/ContentValues;
    .end local v6           #Bentity:Landroid/content/Entity;
    .end local v7           #Bkey:Ljava/lang/String;
    .end local v8           #BnamedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_4
    if-nez v11, :cond_1

    .line 1023
    const/4 v0, 0x0

    .line 1028
    .end local v1           #AcontentValues:Landroid/content/ContentValues;
    .end local v3           #Akey:Ljava/lang/String;
    .end local v4           #AnamedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v11           #isKeyAndValueMatch:Z
    :cond_5
    if-nez v0, :cond_0

    .line 1032
    .end local v2           #Aentity:Landroid/content/Entity;
    :cond_6
    return v0
.end method

.method private pickAccountTypeAndName()Lcom/htc/widget/HtcAlertDialog;
    .locals 6

    .prologue
    .line 757
    const/4 v1, 0x0

    .line 759
    .local v1, adbName:Lcom/htc/widget/HtcAlertDialog;
    new-instance v2, Lcom/android/htccontacts/DeDuplicationActivity$10;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/DeDuplicationActivity$10;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    .line 767
    .local v2, clPickName:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;Landroid/content/Context;)V

    .line 769
    .local v0, adapter:Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a03cc

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0191

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/htccontacts/DeDuplicationActivity$11;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/DeDuplicationActivity$11;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 774
    return-object v1
.end method

.method private setAllItemChecked(Z)V
    .locals 4
    .parameter "check"

    .prologue
    const/4 v3, 0x0

    .line 1077
    iput v3, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I

    .line 1078
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1079
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    .line 1080
    .local v1, itemdata:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;
    iget-boolean v2, v1, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isMajor:Z

    if-nez v2, :cond_0

    .line 1081
    iput-boolean p1, v1, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isChecked:Z

    .line 1082
    if-eqz p1, :cond_0

    .line 1083
    iget v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I

    .line 1078
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1087
    .end local v1           #itemdata:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 1088
    invoke-virtual {p0}, Lcom/android/htccontacts/DeDuplicationActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1089
    return-void
.end method

.method private startScanningThread()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 441
    const-string v3, "DeDuplicationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected account: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;

    iget v5, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedAccountIdx:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;

    iget-object v2, v2, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;

    iget v5, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedAccountIdx:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;

    iget-object v2, v2, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->accountName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v2, Lcom/android/htccontacts/DeDuplicationActivity$ScanContactsThread;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/DeDuplicationActivity$ScanContactsThread;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    iput-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mScanContactsThread:Lcom/android/htccontacts/DeDuplicationActivity$ScanContactsThread;

    .line 445
    const v2, 0x7f0a03cd

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, title:Ljava/lang/String;
    const v2, 0x7f0a03d0

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, message:Ljava/lang/String;
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;

    .line 448
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v0}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 451
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, p0}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 452
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;

    const v3, 0x7f0a03d2

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 453
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v6}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 454
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v6}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 455
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 457
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mScanContactsThread:Lcom/android/htccontacts/DeDuplicationActivity$ScanContactsThread;

    invoke-virtual {v2}, Lcom/android/htccontacts/DeDuplicationActivity$ScanContactsThread;->start()V

    .line 458
    return-void
.end method

.method private startWithMajorAccount()V
    .locals 51

    .prologue
    .line 796
    const-string v3, "DeDuplicationActivity"

    const-string v4, "startWithMajorAccount_check_display_name_first..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedAccountIdx:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;

    iget-object v3, v3, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->accountName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedAccountIdx:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;

    iget-object v3, v3, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <> \'1\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 799
    .local v6, major_selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedAccountIdx:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;

    iget-object v3, v3, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->accountType:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/htccontacts/DeDuplicationActivity;->getAccountTypeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 801
    .local v23, major_account_type_str:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/DeDuplicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "display_name"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const-string v8, "display_name"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 803
    .local v39, major_cursor:Landroid/database/Cursor;
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->getCount()I

    move-result v41

    .line 804
    .local v41, major_total:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 807
    move-object v10, v6

    .line 809
    .local v10, sub_selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/DeDuplicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v9, v3

    const/4 v3, 0x1

    const-string v4, "account_type"

    aput-object v4, v9, v3

    const/4 v3, 0x2

    const-string v4, "display_name"

    aput-object v4, v9, v3

    const/4 v11, 0x0

    const-string v12, "display_name"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v45

    .line 812
    .local v45, sub_cursor:Landroid/database/Cursor;
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v48, sub_ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v44, sub_account_type_strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v47, sub_display_names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v39, :cond_c

    if-eqz v45, :cond_c

    .line 818
    :goto_0
    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 819
    const/4 v3, 0x0

    move-object/from16 v0, v45

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 820
    .local v29, sub_id:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v45

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 821
    .local v43, sub_account_type:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v3}, Lcom/android/htccontacts/DeDuplicationActivity;->getAccountTypeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 822
    .local v30, sub_account_type_str:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v45

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 823
    .local v46, sub_display_name:Ljava/lang/String;
    move-object/from16 v0, v48

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    move-object/from16 v0, v44

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 828
    .end local v29           #sub_id:Ljava/lang/String;
    .end local v30           #sub_account_type_str:Ljava/lang/String;
    .end local v43           #sub_account_type:Ljava/lang/String;
    .end local v46           #sub_display_name:Ljava/lang/String;
    :cond_0
    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->close()V

    .line 830
    const/16 v40, 0x0

    .line 831
    .local v40, major_process_cnt:I
    :cond_1
    :goto_1
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mCancel:Z

    if-nez v3, :cond_b

    .line 833
    add-int/lit8 v40, v40, 0x1

    .line 834
    const/16 v34, 0x0

    .line 835
    .local v34, ds:Lcom/android/htccontacts/DeDuplicationActivity$DupSet;
    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 836
    .local v22, major_id:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 838
    .local v24, major_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 840
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mPorcessIds:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 844
    move-object/from16 v0, v47

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v49

    .line 845
    .local v49, sub_idx:I
    if-eqz v24, :cond_1

    if-ltz v49, :cond_1

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 851
    .local v14, major_entity_selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/DeDuplicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v25

    .line 854
    .local v25, major_entityIterator:Landroid/content/EntityIterator;
    const/16 v35, 0x1

    .line 855
    .local v35, has_match_display_name:Z
    :cond_2
    :goto_2
    if-eqz v35, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mCancel:Z

    if-nez v3, :cond_4

    .line 856
    invoke-virtual/range {v48 .. v49}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 857
    .restart local v29       #sub_id:Ljava/lang/String;
    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 858
    .restart local v30       #sub_account_type_str:Ljava/lang/String;
    move-object/from16 v0, v47

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 859
    .local v31, sub_name:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mPorcessIds:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_5

    .line 860
    :cond_3
    add-int/lit8 v49, v49, 0x1

    .line 861
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v49

    if-ge v0, v3, :cond_4

    move-object/from16 v0, v47

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 920
    .end local v29           #sub_id:Ljava/lang/String;
    .end local v30           #sub_account_type_str:Ljava/lang/String;
    .end local v31           #sub_name:Ljava/lang/String;
    :cond_4
    if-eqz v34, :cond_a

    .line 921
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->major_item:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->sub_items:Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    .local v33, arr$:[Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v38, v0

    .local v38, len$:I
    const/16 v36, 0x0

    .local v36, i$:I
    :goto_3
    move/from16 v0, v36

    move/from16 v1, v38

    if-ge v0, v1, :cond_a

    aget-object v37, v33, v36

    .line 923
    .local v37, item:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mSubsetItemCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mSubsetItemCount:I

    .line 922
    add-int/lit8 v36, v36, 0x1

    goto :goto_3

    .line 868
    .end local v33           #arr$:[Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;
    .end local v36           #i$:I
    .end local v37           #item:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;
    .end local v38           #len$:I
    .restart local v29       #sub_id:Ljava/lang/String;
    .restart local v30       #sub_account_type_str:Ljava/lang/String;
    .restart local v31       #sub_name:Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 869
    .local v18, sub_entity_selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/DeDuplicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v32

    .line 872
    .local v32, sub_entityIterator:Landroid/content/EntityIterator;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->compare(Landroid/content/EntityIterator;Landroid/content/EntityIterator;)I

    move-result v42

    .line 874
    .local v42, result:I
    if-eqz v42, :cond_6

    if-nez v34, :cond_6

    .line 875
    new-instance v34, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;

    .end local v34           #ds:Lcom/android/htccontacts/DeDuplicationActivity$DupSet;
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    .line 878
    .restart local v34       #ds:Lcom/android/htccontacts/DeDuplicationActivity$DupSet;
    :cond_6
    packed-switch v42, :pswitch_data_0

    .line 910
    :goto_4
    invoke-interface/range {v32 .. v32}, Landroid/content/EntityIterator;->close()V

    .line 912
    add-int/lit8 v49, v49, 0x1

    .line 913
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v49

    if-ge v0, v3, :cond_9

    move-object/from16 v0, v47

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 914
    const/16 v35, 0x1

    goto/16 :goto_2

    .line 881
    :pswitch_0
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->major_item:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    if-nez v3, :cond_7

    .line 882
    new-instance v19, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    const/16 v21, 0x1

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v25}, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/EntityIterator;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->major_item:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    .line 883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mPorcessIds:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->sub_items:Ljava/util/ArrayList;

    new-instance v26, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    const/16 v28, 0x0

    move-object/from16 v27, p0

    invoke-direct/range {v26 .. v32}, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/EntityIterator;)V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mPorcessIds:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 887
    :cond_7
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->sub_items:Ljava/util/ArrayList;

    new-instance v26, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    const/16 v28, 0x0

    move-object/from16 v27, p0

    invoke-direct/range {v26 .. v32}, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/EntityIterator;)V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mPorcessIds:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 892
    :pswitch_1
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->major_item:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    if-nez v3, :cond_8

    .line 893
    new-instance v26, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    const/16 v28, 0x1

    move-object/from16 v27, p0

    invoke-direct/range {v26 .. v32}, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/EntityIterator;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->major_item:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    .line 894
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mPorcessIds:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->sub_items:Ljava/util/ArrayList;

    new-instance v19, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    const/16 v21, 0x0

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v25}, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/EntityIterator;)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mPorcessIds:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    :goto_5
    move-object/from16 v50, v25

    .line 905
    .local v50, tmp:Landroid/content/EntityIterator;
    move-object/from16 v25, v32

    .line 906
    move-object/from16 v32, v50

    goto/16 :goto_4

    .line 898
    .end local v50           #tmp:Landroid/content/EntityIterator;
    :cond_8
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->major_item:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isMajor:Z

    .line 899
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->sub_items:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->major_item:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    new-instance v26, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    const/16 v28, 0x1

    move-object/from16 v27, p0

    invoke-direct/range {v26 .. v32}, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/EntityIterator;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->major_item:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mPorcessIds:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 916
    :cond_9
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 928
    .end local v18           #sub_entity_selection:Ljava/lang/String;
    .end local v29           #sub_id:Ljava/lang/String;
    .end local v30           #sub_account_type_str:Ljava/lang/String;
    .end local v31           #sub_name:Ljava/lang/String;
    .end local v32           #sub_entityIterator:Landroid/content/EntityIterator;
    .end local v42           #result:I
    :cond_a
    invoke-interface/range {v25 .. v25}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_1

    .line 932
    .end local v14           #major_entity_selection:Ljava/lang/String;
    .end local v22           #major_id:Ljava/lang/String;
    .end local v24           #major_name:Ljava/lang/String;
    .end local v25           #major_entityIterator:Landroid/content/EntityIterator;
    .end local v34           #ds:Lcom/android/htccontacts/DeDuplicationActivity$DupSet;
    .end local v35           #has_match_display_name:Z
    .end local v49           #sub_idx:I
    :cond_b
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 945
    .end local v40           #major_process_cnt:I
    :cond_c
    return-void

    .line 878
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateDeleteButtonState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1060
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mDeleteButton:Lcom/htc/widget/HtcFooterButton;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mDeleteButton:Lcom/htc/widget/HtcFooterButton;

    .line 1062
    .local v1, textview:Landroid/widget/TextView;
    const v2, 0x7f0a03d3

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1063
    .local v0, text:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSubsetItemCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1064
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I

    if-nez v2, :cond_1

    .line 1066
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mDeleteButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1072
    .end local v0           #text:Ljava/lang/String;
    .end local v1           #textview:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 1074
    return-void

    .line 1068
    .restart local v0       #text:Ljava/lang/String;
    .restart local v1       #textview:Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mDeleteButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method displayDialogConfirmDeleteContacts()V
    .locals 5

    .prologue
    .line 492
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    .local v0, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a03e9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 494
    const v1, 0x7f0a03d5

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 495
    const v1, 0x7f0a0160

    new-instance v2, Lcom/android/htccontacts/DeDuplicationActivity$3;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/DeDuplicationActivity$3;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 513
    const v1, 0x7f0a0161

    new-instance v2, Lcom/android/htccontacts/DeDuplicationActivity$4;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/DeDuplicationActivity$4;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 519
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 520
    return-void
.end method

.method displayDialogNoDuplicateContacts()V
    .locals 5

    .prologue
    .line 778
    new-instance v1, Lcom/android/htccontacts/DeDuplicationActivity$12;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/DeDuplicationActivity$12;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    .line 783
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/htccontacts/DeDuplicationActivity$13;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/DeDuplicationActivity$13;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    .line 789
    .local v2, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a03ce

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0160

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a03d1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 790
    .local v0, alertDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 791
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 792
    return-void
.end method

.method displayDialogNumbersOfAllContactTypesAreLessThanTwo()V
    .locals 5

    .prologue
    .line 627
    new-instance v1, Lcom/android/htccontacts/DeDuplicationActivity$8;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/DeDuplicationActivity$8;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    .line 632
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/htccontacts/DeDuplicationActivity$9;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/DeDuplicationActivity$9;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    .line 637
    .local v2, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a03d5

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0160

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a03e8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 639
    .local v0, alertDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 640
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 641
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 417
    const-string v0, "DeDuplicationActivity"

    const-string v1, "onCancel is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mCancel:Z

    .line 420
    invoke-virtual {p0}, Lcom/android/htccontacts/DeDuplicationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/htccontacts/DeDuplicationActivity;->finish()V

    .line 423
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "icicle"

    .prologue
    .line 548
    invoke-super/range {p0 .. p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 550
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->requestWindowFeature(I)Z

    .line 551
    const v2, 0x7f030027

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->setContentView(I)V

    .line 552
    const v2, 0x7f0a03cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->setGenericTitleBar(I)V

    .line 553
    const v2, 0x7f07002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mButtonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mButtonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mDeleteButton:Lcom/htc/widget/HtcFooterButton;

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mDeleteButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v4, Lcom/android/htccontacts/DeDuplicationActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/htccontacts/DeDuplicationActivity$6;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mButtonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v18

    .line 562
    .local v18, cancelButton:Landroid/view/View;
    new-instance v2, Lcom/android/htccontacts/DeDuplicationActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/htccontacts/DeDuplicationActivity$7;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mButtonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->setVisibility(I)V

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/DeDuplicationActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 570
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/DeDuplicationActivity;->initListHeaderView()V

    .line 572
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v23

    .line 573
    .local v23, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsWithoutSim(Z)Ljava/util/ArrayList;

    move-result-object v17

    .line 577
    .local v17, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;

    .line 578
    const/16 v19, 0x0

    .line 580
    .local v19, contact_number_more_than_two:Z
    const-string v2, "content://com.android.contacts/rawcontact/counts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 581
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/DeDuplicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 582
    .local v20, cursor:Landroid/database/Cursor;
    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 584
    :cond_0
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 585
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 586
    const/4 v2, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 587
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;

    new-instance v4, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v6, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v7, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v8, v2, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    const/4 v2, 0x2

    if-lt v9, v2, :cond_1

    .line 591
    const/16 v19, 0x1

    .line 593
    :cond_1
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 597
    .end local v9           #count:I
    :cond_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 600
    .end local v21           #i:I
    :cond_3
    if-eqz v20, :cond_4

    .line 601
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 604
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 605
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_6

    .line 606
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 607
    .local v16, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;

    new-instance v10, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;

    move-object/from16 v0, v16

    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v13, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 584
    .end local v16           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 611
    .end local v21           #i:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v22

    .line 612
    .local v22, size:I
    const/4 v2, 0x1

    move/from16 v0, v22

    if-le v0, v2, :cond_7

    if-eqz v19, :cond_7

    .line 613
    const v2, 0x7f0a03cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->showDialog(I)V

    .line 624
    :goto_2
    return-void

    .line 617
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_8

    if-eqz v19, :cond_8

    .line 618
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedAccountIdx:I

    .line 619
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/DeDuplicationActivity;->startScanningThread()V

    goto :goto_2

    .line 623
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/DeDuplicationActivity;->displayDialogNumbersOfAllContactTypesAreLessThanTwo()V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "resId"

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, rtn:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 753
    :goto_0
    return-object v0

    .line 749
    :pswitch_0
    invoke-direct {p0}, Lcom/android/htccontacts/DeDuplicationActivity;->pickAccountTypeAndName()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x7f0a03cc
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 427
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mCancel:Z

    .line 429
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForScan:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 437
    :cond_1
    const-string v0, "DeDuplicationActivity"

    const-string v1, "onDestroy..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method public onHeaderViewClicked(Z)V
    .locals 0
    .parameter "IsChecked"

    .prologue
    .line 1094
    invoke-direct {p0, p1}, Lcom/android/htccontacts/DeDuplicationActivity;->setAllItemChecked(Z)V

    .line 1095
    invoke-direct {p0}, Lcom/android/htccontacts/DeDuplicationActivity;->updateDeleteButtonState()V

    .line 1096
    return-void
.end method

.method public updateHeaderCheckedBox()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1100
    iget v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I

    if-nez v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    .line 1107
    :goto_0
    return-void

    .line 1102
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I

    iget v1, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mSubsetItemCount:I

    if-ne v0, v1, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    goto :goto_0

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->setCheckBox(Z)V

    goto :goto_0
.end method
