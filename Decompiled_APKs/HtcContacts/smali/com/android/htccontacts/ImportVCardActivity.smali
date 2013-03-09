.class public Lcom/android/htccontacts/ImportVCardActivity;
.super Landroid/app/Activity;
.source "ImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;,
        Lcom/android/htccontacts/ImportVCardActivity$ListItemCache;,
        Lcom/android/htccontacts/ImportVCardActivity$MultiVCardSelectListener;,
        Lcom/android/htccontacts/ImportVCardActivity$OneVCardSelectListener;,
        Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;,
        Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;,
        Lcom/android/htccontacts/ImportVCardActivity$ImportTypeSelectedListener;,
        Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;,
        Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;,
        Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;,
        Lcom/android/htccontacts/ImportVCardActivity$CancelListener;,
        Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;
    }
.end annotation


# static fields
.field private static final DO_PERFORMANCE_PROFILE:Z = false

.field private static final LAUNCH_IMPORTVCARDACTIVITY2:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImportVCardActivity"


# instance fields
.field private mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

.field private mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mAllVCardFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/VCardFile;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelListener:Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCurrentIndex:I

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;

.field private mProgressDialogForScanVCard:Lcom/htc/app/HtcProgressDialog;

.field private mSearchDialogDissmissListener:Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;

.field private mSearchKeyListener:Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;

.field private mSelectedIndexSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/syncml/service/ISyncMLService;

.field private mUsePhoneStorage:Z

.field private mVCardReadThread:Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;

.field private mVCardScanThread:Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mUsePhoneStorage:Z

    .line 162
    iput-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity;->mIntent:Landroid/content/Intent;

    .line 166
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ImportVCardActivity$1;-><init>(Lcom/android/htccontacts/ImportVCardActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 206
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ImportVCardActivity$CancelListener;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/htccontacts/ImportVCardActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

    .line 230
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/htccontacts/ImportVCardActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;

    .line 233
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/htccontacts/ImportVCardActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;

    .line 1120
    return-void
.end method

.method static synthetic access$002(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/ImportVCardActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/htccontacts/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/ImportVCardActivity;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity;->importMultipleVCardFromSDCard(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/ImportVCardActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/htccontacts/ImportVCardActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/ImportVCardActivity;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSelectedIndexSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/htccontacts/ImportVCardActivity;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSelectedIndexSet:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/ImportVCardActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity;->importOneVCardFromSDCard(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/ImportVCardActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mUsePhoneStorage:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForScanVCard:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/htccontacts/ImportVCardActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForScanVCard:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/ImportVCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity;->startVCardSelectAndImport()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;)Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity;->mVCardReadThread:Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/htccontacts/ImportVCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity;->startImport()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/htccontacts/model/AccountWithDataSet;)Lcom/android/htccontacts/model/AccountWithDataSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ImportVCardActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/ImportVCardActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doScanExternalStorageAndImportVCard()V
    .locals 4

    .prologue
    .line 1387
    const/4 v0, 0x0

    .line 1388
    .local v0, file:Ljava/io/File;
    iget-boolean v2, p0, Lcom/android/htccontacts/ImportVCardActivity;->mUsePhoneStorage:Z

    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->getImportExportPath(Z)Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1391
    .restart local v0       #file:Ljava/io/File;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v2, v3, :cond_0

    .line 1392
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v2, "/sdcard/ct_backup"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1395
    .restart local v0       #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1396
    :cond_1
    const v2, 0x7f070008

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity;->showDialog(I)V

    .line 1401
    :goto_0
    return-void

    .line 1398
    :cond_2
    new-instance v2, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;

    invoke-direct {v2, p0, v0}, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity;->mVCardScanThread:Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;

    .line 1399
    const v2, 0x7f070007

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private getReadingVCardDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 999
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;

    if-nez v2, :cond_0

    .line 1000
    const v2, 0x7f0a02b6

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, title:Ljava/lang/String;
    const v2, 0x7f0a02b7

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, message:Ljava/lang/String;
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;

    .line 1003
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v0}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 1006
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;

    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mVCardReadThread:Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1007
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1008
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1009
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity;->mVCardReadThread:Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;

    if-eqz v2, :cond_0

    .line 1010
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity;->mVCardReadThread:Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->start()V

    .line 1013
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForReadVCard:Lcom/htc/app/HtcProgressDialog;

    return-object v2
.end method

.method private getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/Dialog;
    .locals 10
    .parameter "context"
    .parameter "resId"
    .parameter "onCancelListener"
    .parameter "withSim"

    .prologue
    const/4 v1, 0x1

    .line 1165
    invoke-static {p1}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v5

    .line 1166
    .local v5, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    if-eqz p4, :cond_2

    invoke-virtual {v5, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 1172
    .local v4, writableAccountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    :goto_0
    new-instance v7, Landroid/view/ContextThemeWrapper;

    const v1, 0x103000c

    invoke-direct {v7, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1173
    .local v7, dialogContext:Landroid/content/Context;
    const-string v1, "layout_inflater"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1175
    .local v8, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/htccontacts/ImportVCardActivity$4;

    const v3, 0x209004b

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/ImportVCardActivity$4;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Landroid/content/Context;ILjava/util/List;Lcom/android/htccontacts/model/AccountTypeManager;)V

    .line 1205
    .local v0, accountAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    const v9, 0x7f0a0051

    .line 1206
    .local v9, titleID:I
    const v1, 0x7f0a0293

    if-eq p2, v1, :cond_0

    const v1, 0x7f0a0294

    if-ne p2, v1, :cond_1

    .line 1208
    :cond_0
    const v9, 0x7f0a0053

    .line 1211
    :cond_1
    new-instance v6, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;

    invoke-direct {v6, p0, p1, v4, p2}, Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Landroid/content/Context;Ljava/util/List;I)V

    .line 1213
    .local v6, accountSelectedListener:Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1

    .line 1166
    .end local v0           #accountAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .end local v4           #writableAccountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .end local v6           #accountSelectedListener:Lcom/android/htccontacts/ImportVCardActivity$AccountSelectedListener;
    .end local v7           #dialogContext:Landroid/content/Context;
    .end local v8           #dialogInflater:Landroid/view/LayoutInflater;
    .end local v9           #titleID:I
    :cond_2
    invoke-virtual {v5, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsWithoutSim(Z)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0
.end method

.method private getSelectImportTypeDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 886
    new-instance v2, Lcom/android/htccontacts/ImportVCardActivity$ImportTypeSelectedListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/htccontacts/ImportVCardActivity$ImportTypeSelectedListener;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/htccontacts/ImportVCardActivity$1;)V

    .line 888
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a02b2

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 894
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    .line 895
    .local v1, items:[Ljava/lang/String;
    const v3, 0x7f0a02b3

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 897
    const/4 v3, 0x1

    const v4, 0x7f0a02b4

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 899
    const/4 v3, 0x2

    const v4, 0x7f0a02b5

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 901
    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 902
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private getVCardFileSelectDialog(Z)Landroid/app/Dialog;
    .locals 14
    .parameter "multipleSelect"

    .prologue
    .line 957
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .line 958
    .local v6, size:I
    new-instance v5, Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;

    invoke-direct {v5, p0, p1}, Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Z)V

    .line 959
    .local v5, listener:Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0a02b2

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    invoke-virtual {v10, v11, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x104

    iget-object v12, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 966
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    new-array v3, v6, [Ljava/lang/CharSequence;

    .line 967
    .local v3, filename_dates:[Ljava/lang/CharSequence;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 968
    .local v1, dateFormat:Ljava/text/DateFormat;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 969
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/VCardFile;

    .line 970
    .local v9, vcardFile:Lcom/android/htccontacts/VCardFile;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 971
    .local v7, stringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v9}, Lcom/android/htccontacts/VCardFile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/htccontacts/ImportVCardActivity;->replaceInvalidFileChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, filename:Ljava/lang/String;
    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 974
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 975
    .local v8, stringBuilder2:Landroid/text/SpannableStringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-virtual {v9}, Lcom/android/htccontacts/VCardFile;->getLastModified()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 978
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v4

    .line 968
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 981
    .end local v2           #filename:Ljava/lang/String;
    .end local v7           #stringBuilder:Landroid/text/SpannableStringBuilder;
    .end local v8           #stringBuilder2:Landroid/text/SpannableStringBuilder;
    .end local v9           #vcardFile:Lcom/android/htccontacts/VCardFile;
    :cond_0
    if-eqz p1, :cond_1

    .line 982
    new-array v10, v6, [Z

    new-instance v11, Lcom/android/htccontacts/ImportVCardActivity$MultiVCardSelectListener;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/htccontacts/ImportVCardActivity$MultiVCardSelectListener;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/htccontacts/ImportVCardActivity$1;)V

    invoke-virtual {v0, v3, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 987
    :goto_1
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    return-object v10

    .line 984
    :cond_1
    const/4 v10, 0x0

    new-instance v11, Lcom/android/htccontacts/ImportVCardActivity$OneVCardSelectListener;

    invoke-direct {v11, p0}, Lcom/android/htccontacts/ImportVCardActivity$OneVCardSelectListener;-><init>(Lcom/android/htccontacts/ImportVCardActivity;)V

    invoke-virtual {v0, v3, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1
.end method

.method private importMultipleVCardFromSDCard(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/VCardFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 862
    .local p1, selectedVCardFileList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/VCardFile;>;"
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity;->myPhonebookCancelSync()V

    .line 863
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/htccontacts/ImportVCardActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/android/htccontacts/ImportVCardActivity$2;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 871
    return-void
.end method

.method private importOneVCardFromSDCard(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity;->myPhonebookCancelSync()V

    .line 875
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/htccontacts/ImportVCardActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/android/htccontacts/ImportVCardActivity$3;-><init>(Lcom/android/htccontacts/ImportVCardActivity;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 883
    return-void
.end method

.method private replaceInvalidFileChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 928
    if-nez p1, :cond_0

    .line 929
    const/4 v3, 0x0

    .line 953
    :goto_0
    return-object v3

    .line 932
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 934
    .local v2, out:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 935
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 937
    .local v0, ch:C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    if-lt v1, v3, :cond_1

    .line 938
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 934
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 942
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 949
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 946
    :sswitch_0
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 953
    .end local v0           #ch:C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 942
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method private runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1365
    const-string v0, "ImportVCardActivity"

    const-string v1, "Handler object is null. No dialog is shown."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :goto_0
    return-void

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private startImport()V
    .locals 6

    .prologue
    .line 1095
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1096
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1098
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "ImportVCardActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    if-eqz v2, :cond_0

    .line 1101
    invoke-direct {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity;->importOneVCardFromSDCard(Landroid/net/Uri;)V

    .line 1105
    :goto_0
    return-void

    .line 1103
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity;->doScanExternalStorageAndImportVCard()V

    goto :goto_0
.end method

.method private startVCardSelectAndImport()V
    .locals 6

    .prologue
    .line 837
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 838
    .local v1, size:I
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 839
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/htccontacts/ImportVCardActivity;->importMultipleVCardFromSDCard(Ljava/util/List;)V

    .line 849
    :goto_0
    return-void

    .line 840
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 841
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/VCardFile;

    invoke-virtual {v3}, Lcom/android/htccontacts/VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, canonicalPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 843
    .local v2, uri:Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity;->importOneVCardFromSDCard(Landroid/net/Uri;)V

    goto :goto_0

    .line 844
    .end local v0           #canonicalPath:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 845
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;

    const v5, 0x7f07000a

    invoke-direct {v4, p0, v5}, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/htccontacts/ImportVCardActivity;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 847
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;

    const v5, 0x7f07000b

    invoke-direct {v4, p0, v5}, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/htccontacts/ImportVCardActivity;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mVCardReadThread:Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;

    if-eqz v0, :cond_0

    .line 1375
    const-string v0, "ImportVCardActivity"

    const-string v1, "VCardReadThread exists while this Activity is now being killed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mVCardReadThread:Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->cancel()V

    .line 1377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mVCardReadThread:Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;

    .line 1379
    :cond_0
    return-void
.end method

.method protected myPhonebookCancelSync()V
    .locals 1

    .prologue
    .line 852
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    if-eqz v0, :cond_0

    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    invoke-interface {v0}, Lcom/android/syncml/service/ISyncMLService;->cancelSync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1109
    packed-switch p1, :pswitch_data_0

    .line 1115
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1118
    :goto_0
    return-void

    .line 1111
    :pswitch_0
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/ImportVCardActivity;->setResult(ILandroid/content/Intent;)V

    .line 1112
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity;->finish()V

    goto :goto_0

    .line 1109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "bundle"

    .prologue
    const/4 v10, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1032
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1034
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0xd8

    if-ne v8, v9, :cond_0

    .line 1035
    new-instance v3, Ljava/io/File;

    const-string v8, "/sdcard/ct_backup"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1037
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1038
    const-string v8, "/sdcard/ct_backup"

    const/16 v9, 0x1ff

    invoke-static {v8, v9, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1043
    .end local v3           #file:Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1044
    .local v4, mIntent:Landroid/content/Intent;
    invoke-virtual {p0, v11, v4}, Lcom/android/htccontacts/ImportVCardActivity;->setResult(ILandroid/content/Intent;)V

    .line 1046
    if-eqz v4, :cond_5

    .line 1047
    const-string v8, "account_name"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1048
    .local v0, accountName:Ljava/lang/String;
    const-string v8, "account_type"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1049
    .local v1, accountType:Ljava/lang/String;
    const-string v8, "data_set"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1051
    .local v2, dataSet:Ljava/lang/String;
    const-string v8, "use_phone_storage"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/htccontacts/ImportVCardActivity;->mUsePhoneStorage:Z

    .line 1053
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1054
    new-instance v8, Lcom/android/htccontacts/model/AccountWithDataSet;

    invoke-direct {v8, v0, v1, v2}, Lcom/android/htccontacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 1060
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #dataSet:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->hasInternalFat()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1061
    iput-boolean v11, p0, Lcom/android/htccontacts/ImportVCardActivity;->mUsePhoneStorage:Z

    .line 1064
    :cond_2
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1065
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/syncml/service/ISyncMLService;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/htccontacts/ImportVCardActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v8, v9, v12}, Lcom/android/htccontacts/ImportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    .line 1067
    .local v5, result:Z
    const-string v8, "ImportVCardActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bind ISyncMLService result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    if-nez v5, :cond_3

    .line 1069
    iget-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1070
    const-string v8, "ImportVCardActivity"

    const-string v9, "unbindService..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    .end local v5           #result:Z
    :cond_3
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v7

    .line 1075
    .local v7, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v7, v12}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsWithoutSim(Z)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAccountList:Ljava/util/List;

    .line 1076
    iget-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAccountList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 1078
    .local v6, size:I
    iget-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    if-nez v8, :cond_4

    .line 1079
    if-ne v6, v12, :cond_6

    .line 1080
    iget-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAccountList:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/model/AccountWithDataSet;

    iput-object v8, p0, Lcom/android/htccontacts/ImportVCardActivity;->mAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 1091
    :cond_4
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity;->startImport()V

    .line 1092
    :goto_1
    return-void

    .line 1057
    .end local v6           #size:I
    .end local v7           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_5
    const-string v8, "ImportVCardActivity"

    const-string v9, "intent does not exist"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1081
    .restart local v6       #size:I
    .restart local v7       #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_6
    if-le v6, v12, :cond_4

    .line 1082
    iget-boolean v8, p0, Lcom/android/htccontacts/ImportVCardActivity;->mUsePhoneStorage:Z

    if-eqz v8, :cond_7

    .line 1083
    const v8, 0x7f0a0292

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ImportVCardActivity;->showDialog(I)V

    goto :goto_1

    .line 1085
    :cond_7
    const v8, 0x7f0a0291

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ImportVCardActivity;->showDialog(I)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "resId"

    .prologue
    const v9, 0x7f0a02bb

    const v8, 0x7f0a02af

    const v7, 0x104000a

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1219
    const/4 v2, 0x0

    .line 1220
    .local v2, rtn:Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_0

    .line 1335
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    .line 1336
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v3, v2

    .line 1337
    :goto_0
    return-object v3

    .line 1223
    :sswitch_0
    const/4 v3, 0x0

    invoke-direct {p0, p0, p1, v3, v6}, Lcom/android/htccontacts/ImportVCardActivity;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0

    .line 1226
    :sswitch_1
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForScanVCard:Lcom/htc/app/HtcProgressDialog;

    if-nez v3, :cond_1

    .line 1227
    const v3, 0x7f0a02b9

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1228
    .local v1, message:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mUsePhoneStorage:Z

    if-eqz v3, :cond_0

    .line 1229
    const v3, 0x7f0a02ba

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1231
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v5, v6}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForScanVCard:Lcom/htc/app/HtcProgressDialog;

    .line 1233
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForScanVCard:Lcom/htc/app/HtcProgressDialog;

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity;->mVCardScanThread:Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1234
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForScanVCard:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3, v6}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1235
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForScanVCard:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3, v6}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1236
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mVCardScanThread:Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v3}, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->start()V

    .line 1238
    .end local v1           #message:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForScanVCard:Lcom/htc/app/HtcProgressDialog;

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1239
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForScanVCard:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 1242
    :sswitch_2
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a02a2

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02a4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1249
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-boolean v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mUsePhoneStorage:Z

    if-eqz v3, :cond_2

    .line 1250
    const v3, 0x7f0a02a3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02a5

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1253
    :cond_2
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 1254
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v3, v2

    .line 1256
    goto :goto_0

    .line 1259
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :sswitch_3
    new-array v3, v5, [Ljava/lang/Object;

    const v4, 0x7f0a02c0

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v9, v3}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1261
    .restart local v1       #message:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mUsePhoneStorage:Z

    if-eqz v3, :cond_3

    .line 1262
    const v3, 0x7f0a02bc

    new-array v4, v5, [Ljava/lang/Object;

    const v5, 0x7f0a02c1

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1265
    :cond_3
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a02be

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1270
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-boolean v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mUsePhoneStorage:Z

    if-eqz v3, :cond_4

    .line 1271
    const v3, 0x7f0a02bf

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1273
    :cond_4
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 1274
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v3, v2

    .line 1275
    goto/16 :goto_0

    .line 1278
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #message:Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity;->getSelectImportTypeDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 1279
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v3, v2

    .line 1280
    goto/16 :goto_0

    .line 1283
    :sswitch_5
    invoke-direct {p0, v5}, Lcom/android/htccontacts/ImportVCardActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v2

    .line 1284
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v3, v2

    .line 1285
    goto/16 :goto_0

    .line 1288
    :sswitch_6
    invoke-direct {p0, v6}, Lcom/android/htccontacts/ImportVCardActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v2

    .line 1289
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v3, v2

    .line 1290
    goto/16 :goto_0

    .line 1293
    :sswitch_7
    invoke-direct {p0}, Lcom/android/htccontacts/ImportVCardActivity;->getReadingVCardDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 1294
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v3, v2

    .line 1295
    goto/16 :goto_0

    .line 1298
    :sswitch_8
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v9, v3}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1300
    .restart local v1       #message:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mUsePhoneStorage:Z

    if-eqz v3, :cond_5

    .line 1301
    const v3, 0x7f0a02bc

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1304
    :cond_5
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a02be

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1310
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-boolean v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mUsePhoneStorage:Z

    if-eqz v3, :cond_6

    .line 1311
    const v3, 0x7f0a02bf

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1313
    :cond_6
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 1314
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v3, v2

    .line 1315
    goto/16 :goto_0

    .line 1318
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #message:Ljava/lang/String;
    :sswitch_9
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    .line 1319
    .restart local v1       #message:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1320
    const-string v3, "ImportVCardActivity"

    const-string v4, "Error message is null while it must not."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    const v3, 0x7f0a02ab

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1323
    :cond_7
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a02bd

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity;->mCancelListener:Lcom/android/htccontacts/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1329
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 1330
    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity;->mSearchKeyListener:Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v3, v2

    .line 1331
    goto/16 :goto_0

    .line 1220
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070007 -> :sswitch_1
        0x7f070008 -> :sswitch_2
        0x7f070009 -> :sswitch_3
        0x7f07000a -> :sswitch_4
        0x7f07000b -> :sswitch_6
        0x7f07000c -> :sswitch_5
        0x7f07000d -> :sswitch_7
        0x7f07000e -> :sswitch_8
        0x7f07000f -> :sswitch_9
        0x7f0a0291 -> :sswitch_0
        0x7f0a0292 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1018
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1019
    const-string v0, "ImportVCardActivity"

    const-string v1, "onDestroy..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mVCardReadThread:Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;

    if-eqz v0, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mVCardReadThread:Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;->cancel()V

    .line 1026
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity;->mVCardReadThread:Lcom/android/htccontacts/ImportVCardActivity$VCardReadThread;

    .line 1028
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1342
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1343
    const-string v0, "ImportVCardActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    return-void
.end method
