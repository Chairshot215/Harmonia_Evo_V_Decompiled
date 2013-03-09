.class public Lcom/htc/htccompressviewer/CompressViewer;
.super Landroid/app/Activity;
.source "CompressViewer.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;,
        Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;,
        Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;,
        Lcom/htc/htccompressviewer/CompressViewer$AccountSelectedListener;,
        Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;,
        Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;
    }
.end annotation


# instance fields
.field public final ARCHIVE_CORRUPTION_DIALOG:I

.field public final ARCHIVE_NO_LONGER_EXISTS_DIALOG:I

.field public final CONTEXT_MENU_GROUP:I

.field public final FILE_CORRUPTION_DIALOG:I

.field public final LOADING_COMPRESS_LIST_DIALOG:I

.field public final LOADING_ZIP_INZIPLIST_DIALOG:I

.field public final MENU_ID_UNCOMPRESS_ALL:I

.field public final OPEN_FILE_PROGRESS_DIALOG:I

.field public final OPEN_ZIP_PROGRESS_DIALOG:I

.field public final OPTION_MENU_GROUP:I

.field public final OUT_OF_STORAGE_DIALOG:I

.field public final UNCOMPRESS_ALL_PROGRESS_DIALOG:I

.field public final UNCOMPRESS_ONE_PROGRESS_DIALOG:I

.field private htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

.field private final loadCompressList:Landroid/os/Handler;

.field private mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

.field private mCurrentSrcPath:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsEnableOptionMenu:Z

.field private mIsUncompressing:Z

.field private mLongPressDialogItem_Zip:[Ljava/lang/CharSequence;

.field private mMediaScannerConnection:Lcom/htc/htccompressviewer/MediaScannerConnection;

.field private mPathCache:[Ljava/lang/String;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mReloadViewThread:Lcom/htc/htccompressviewer/ReloadViewThread;

.field private mSdcardListener:Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;

.field private mUnZipAllThread:Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;

.field private mUnZipOneThread:Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;

.field private mZipHeader:Landroid/view/View;

.field private mZipList:Lcom/htc/widget/HtcListView;

.field private mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

.field private final openOneHandler:Landroid/os/Handler;

.field private final openZipHandler:Landroid/os/Handler;

.field private final uncompressAllHandler:Landroid/os/Handler;

.field private final uncompressOneHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mPathCache:[Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mIsEnableOptionMenu:Z

    .line 84
    iput-boolean v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mIsUncompressing:Z

    .line 88
    iput v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->UNCOMPRESS_ALL_PROGRESS_DIALOG:I

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->UNCOMPRESS_ONE_PROGRESS_DIALOG:I

    .line 90
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->LOADING_COMPRESS_LIST_DIALOG:I

    .line 91
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->OPEN_ZIP_PROGRESS_DIALOG:I

    .line 92
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->OUT_OF_STORAGE_DIALOG:I

    .line 93
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->ARCHIVE_CORRUPTION_DIALOG:I

    .line 94
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->FILE_CORRUPTION_DIALOG:I

    .line 95
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->ARCHIVE_NO_LONGER_EXISTS_DIALOG:I

    .line 96
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->OPEN_FILE_PROGRESS_DIALOG:I

    .line 97
    const/16 v0, 0xb

    iput v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->LOADING_ZIP_INZIPLIST_DIALOG:I

    .line 99
    const/16 v0, 0x12e

    iput v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->MENU_ID_UNCOMPRESS_ALL:I

    .line 101
    iput v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->CONTEXT_MENU_GROUP:I

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->OPTION_MENU_GROUP:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mDisplayName:Ljava/lang/String;

    .line 883
    new-instance v0, Lcom/htc/htccompressviewer/CompressViewer$2;

    invoke-direct {v0, p0}, Lcom/htc/htccompressviewer/CompressViewer$2;-><init>(Lcom/htc/htccompressviewer/CompressViewer;)V

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->uncompressAllHandler:Landroid/os/Handler;

    .line 933
    new-instance v0, Lcom/htc/htccompressviewer/CompressViewer$3;

    invoke-direct {v0, p0}, Lcom/htc/htccompressviewer/CompressViewer$3;-><init>(Lcom/htc/htccompressviewer/CompressViewer;)V

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->openOneHandler:Landroid/os/Handler;

    .line 968
    new-instance v0, Lcom/htc/htccompressviewer/CompressViewer$4;

    invoke-direct {v0, p0}, Lcom/htc/htccompressviewer/CompressViewer$4;-><init>(Lcom/htc/htccompressviewer/CompressViewer;)V

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->openZipHandler:Landroid/os/Handler;

    .line 1026
    new-instance v0, Lcom/htc/htccompressviewer/CompressViewer$5;

    invoke-direct {v0, p0}, Lcom/htc/htccompressviewer/CompressViewer$5;-><init>(Lcom/htc/htccompressviewer/CompressViewer;)V

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->uncompressOneHandler:Landroid/os/Handler;

    .line 1081
    new-instance v0, Lcom/htc/htccompressviewer/CompressViewer$6;

    invoke-direct {v0, p0}, Lcom/htc/htccompressviewer/CompressViewer$6;-><init>(Lcom/htc/htccompressviewer/CompressViewer;)V

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->loadCompressList:Landroid/os/Handler;

    .line 1243
    return-void
.end method

.method static synthetic access$100(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/ZipListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/htccompressviewer/CompressViewer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/CompressViewer;->showNoSdCard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/htc/htccompressviewer/CompressViewer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mIsUncompressing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/htccompressviewer/CompressViewer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/htccompressviewer/CompressViewer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/htccompressviewer/CompressViewer;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mPathCache:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/htccompressviewer/CompressViewer;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/htccompressviewer/CompressViewer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/CompressViewer;->scanFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/htccompressviewer/CompressViewer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/CompressViewer;->handleFileOpen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/htccompressviewer/CompressViewer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/CompressViewer;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/htccompressviewer/CompressViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/htccompressviewer/CompressViewer;->hideNoSdCard()V

    return-void
.end method

.method private createErrorMessageDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 422
    const/4 v1, 0x0

    .line 423
    .local v1, stringId:I
    packed-switch p1, :pswitch_data_0

    .line 441
    :goto_0
    if-eqz v1, :cond_0

    .line 442
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c013c

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 447
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v2, Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;

    invoke-direct {v2, p0, p1}, Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;-><init>(Lcom/htc/htccompressviewer/CompressViewer;I)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 451
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_0
    return-object v0

    .line 425
    :pswitch_0
    const v1, 0x7f070001

    .line 426
    goto :goto_0

    .line 429
    :pswitch_1
    const v1, 0x7f070002

    .line 430
    goto :goto_0

    .line 433
    :pswitch_2
    const v1, 0x7f070003

    .line 434
    goto :goto_0

    .line 437
    :pswitch_3
    const v1, 0x7f070004

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createLoadFileListProgressDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 529
    const-string v1, ""

    const v2, 0x7f07000b

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 530
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v2, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;

    invoke-direct {v2, p0, p1}, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;-><init>(Lcom/htc/htccompressviewer/CompressViewer;I)V

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 532
    invoke-static {}, Lcom/htc/htccompressviewer/ReloadViewThread;->createSingleten()Lcom/htc/htccompressviewer/ReloadViewThread;

    move-result-object v0

    .line 533
    .local v0, reloadThread:Lcom/htc/htccompressviewer/ReloadViewThread;
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->loadCompressList:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htccompressviewer/ReloadViewThread;->addRequest(Ljava/lang/String;Landroid/os/Handler;Lcom/htc/htccompressviewer/zip/HtcZip;)V

    .line 534
    invoke-virtual {v0}, Lcom/htc/htccompressviewer/ReloadViewThread;->startThread()V

    .line 536
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v1
.end method

.method private createUncompressAllProgressDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 843
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 844
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 845
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f07000f

    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    invoke-virtual {v1}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipFilesCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 848
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 849
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v1, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;

    invoke-direct {v1, p0, p1}, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;-><init>(Lcom/htc/htccompressviewer/CompressViewer;I)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 850
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 852
    new-instance v0, Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;

    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->uncompressAllHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;-><init>(Lcom/htc/htccompressviewer/CompressViewer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mUnZipAllThread:Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;

    .line 853
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mUnZipAllThread:Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/CompressViewer$UnZipAllThread;->start()V

    .line 855
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method private createUncompressOneProgressDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 860
    const-string v0, ""

    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 861
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v1, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;

    invoke-direct {v1, p0, p1}, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;-><init>(Lcom/htc/htccompressviewer/CompressViewer;I)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 863
    sparse-switch p1, :sswitch_data_0

    .line 877
    :goto_0
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mUnZipOneThread:Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;->start()V

    .line 878
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0

    .line 865
    :sswitch_0
    new-instance v0, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;

    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->uncompressOneHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iget-object v2, v2, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->srcPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;-><init>(Lcom/htc/htccompressviewer/CompressViewer;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mUnZipOneThread:Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;

    goto :goto_0

    .line 869
    :sswitch_1
    new-instance v0, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;

    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->openOneHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iget-object v2, v2, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->srcPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;-><init>(Lcom/htc/htccompressviewer/CompressViewer;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mUnZipOneThread:Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;

    goto :goto_0

    .line 873
    :sswitch_2
    new-instance v0, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;

    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->openZipHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iget-object v2, v2, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->srcPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;-><init>(Lcom/htc/htccompressviewer/CompressViewer;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mUnZipOneThread:Lcom/htc/htccompressviewer/CompressViewer$UnZipThread;

    goto :goto_0

    .line 863
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method private getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 378
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 380
    .local v0, dot:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 381
    const-string v1, ""

    .line 386
    .local v1, ext:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 384
    .end local v1           #ext:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #ext:Ljava/lang/String;
    goto :goto_0
.end method

.method private handleFileOpen(Ljava/lang/String;)V
    .locals 9
    .parameter "zipPath"

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/CompressViewer;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, ext:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    .line 615
    .local v5, mime:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v5, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 617
    .local v6, mimeType:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 618
    const-string v8, "txt"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 619
    const-string v6, "text/plain"

    .line 621
    :cond_0
    const-string v8, "eml"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 622
    const-string v6, "message/rfc822"

    .line 625
    :cond_1
    if-eqz v6, :cond_5

    .line 626
    const-string v8, "audio/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "video/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 627
    :cond_2
    new-instance v0, Landroid/media/MediaInfo;

    invoke-direct {v0, p0}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 628
    .local v0, Info:Landroid/media/MediaInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaInfo;->getFileType(Ljava/lang/String;)I

    move-result v3

    .line 629
    .local v3, filetype:I
    const/4 v8, 0x1

    if-ne v8, v3, :cond_4

    .line 630
    const-string v6, "audio/*"

    .line 641
    .end local v0           #Info:Landroid/media/MediaInfo;
    .end local v3           #filetype:I
    :cond_3
    :goto_0
    const-string v8, "text/x-vcard"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 642
    invoke-virtual {p0, p0, p1}, Lcom/htc/htccompressviewer/CompressViewer;->getSelectAccountDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 660
    :goto_1
    return-void

    .line 634
    .restart local v0       #Info:Landroid/media/MediaInfo;
    .restart local v3       #filetype:I
    :cond_4
    const/4 v8, 0x2

    if-ne v8, v3, :cond_3

    .line 635
    const-string v6, "video/*"

    goto :goto_0

    .line 647
    .end local v0           #Info:Landroid/media/MediaInfo;
    .end local v3           #filetype:I
    :cond_5
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 648
    .local v7, path:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 649
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const/high16 v8, 0x400

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 654
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/CompressViewer;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 656
    :catch_0
    move-exception v1

    .line 657
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const/high16 v8, 0x7f07

    invoke-virtual {p0, v8}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/htccompressviewer/CompressViewer;->showToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private hideNoSdCard()V
    .locals 4

    .prologue
    .line 1150
    const v2, 0x7f090001

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/CompressViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1151
    .local v0, noSdcardView:Landroid/widget/LinearLayout;
    const v2, 0x7f090003

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/CompressViewer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1152
    .local v1, sdcardWarningMessage:Landroid/widget/TextView;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1153
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipList:Lcom/htc/widget/HtcListView;

    if-eqz v2, :cond_0

    .line 1154
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipList:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 1155
    :cond_0
    return-void
.end method

.method private openZipFile(Ljava/lang/String;)V
    .locals 5
    .parameter "zipPath"

    .prologue
    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    invoke-virtual {v2}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipFilePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    invoke-virtual {v4}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, unzipPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v1}, Lcom/htc/htccompressviewer/ZipListAdapter;->zipInZipLevelHandler()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;

    .line 600
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    .line 601
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mPathCache:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v2}, Lcom/htc/htccompressviewer/ZipListAdapter;->getZipInZipLevel()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    invoke-virtual {v3}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipFilePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    const v1, 0x7f07000a

    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private scanFile(Ljava/lang/String;)V
    .locals 7
    .parameter "fileName"

    .prologue
    .line 1063
    if-eqz p1, :cond_0

    .line 1065
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1067
    .local v0, dot:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 1068
    const-string v1, ""

    .line 1073
    .local v1, ext:Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 1074
    .local v2, mime:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1075
    .local v3, mimeType:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 1076
    .local v4, uriPath:Landroid/net/Uri;
    iget-object v5, p0, Lcom/htc/htccompressviewer/CompressViewer;->mMediaScannerConnection:Lcom/htc/htccompressviewer/MediaScannerConnection;

    if-eqz v5, :cond_0

    .line 1077
    iget-object v5, p0, Lcom/htc/htccompressviewer/CompressViewer;->mMediaScannerConnection:Lcom/htc/htccompressviewer/MediaScannerConnection;

    invoke-virtual {v5, v4, v3}, Lcom/htc/htccompressviewer/MediaScannerConnection;->scanFile(Landroid/net/Uri;Ljava/lang/String;)Z

    .line 1079
    .end local v0           #dot:I
    .end local v1           #ext:Ljava/lang/String;
    .end local v2           #mime:Landroid/webkit/MimeTypeMap;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v4           #uriPath:Landroid/net/Uri;
    :cond_0
    return-void

    .line 1071
    .restart local v0       #dot:I
    :cond_1
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #ext:Ljava/lang/String;
    goto :goto_0
.end method

.method private setHeader()V
    .locals 5

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, zipHeaderText:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 291
    .local v0, zipHeaderItemCount:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipHeader:Landroid/view/View;

    const v3, 0x2020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #zipHeaderText:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 292
    .restart local v1       #zipHeaderText:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipHeader:Landroid/view/View;

    const v3, 0x2020013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #zipHeaderItemCount:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 294
    .restart local v0       #zipHeaderItemCount:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    invoke-virtual {v2}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipFilesCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    invoke-virtual {v3}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipFilesCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/htccompressviewer/CompressViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0133

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :goto_0
    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    return-void

    .line 298
    :cond_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setNoSDcard()V
    .locals 3

    .prologue
    .line 190
    new-instance v1, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;-><init>(Lcom/htc/htccompressviewer/CompressViewer;Lcom/htc/htccompressviewer/CompressViewer$1;)V

    iput-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mSdcardListener:Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v0, sdFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mSdcardListener:Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;

    invoke-virtual {p0, v1, v0}, Lcom/htc/htccompressviewer/CompressViewer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    return-void
.end method

.method private setTitle()V
    .locals 4

    .prologue
    .line 270
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v3}, Lcom/htc/htccompressviewer/ZipListAdapter;->getZipInZipLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 271
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mDisplayName:Ljava/lang/String;

    .line 275
    .local v1, Title:Ljava/lang/String;
    :goto_0
    const v3, 0x7f090004

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/CompressViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarShort;

    .line 276
    .local v0, Headerbar:Lcom/htc/widget/HeaderBarShort;
    new-instance v2, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 277
    .local v2, headerText:Lcom/htc/widget/HeaderBarText;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarShort;->addCenterView(Landroid/view/View;)V

    .line 278
    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 279
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 284
    return-void

    .line 273
    .end local v0           #Headerbar:Lcom/htc/widget/HeaderBarShort;
    .end local v1           #Title:Ljava/lang/String;
    .end local v2           #headerText:Lcom/htc/widget/HeaderBarText;
    :cond_0
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    invoke-virtual {v3}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipName()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #Title:Ljava/lang/String;
    goto :goto_0
.end method

.method private setZipList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 217
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/CompressViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipList:Lcom/htc/widget/HtcListView;

    .line 218
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 219
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 220
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipHeader:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 222
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/CompressViewer;->registerForContextMenu(Landroid/view/View;)V

    .line 224
    return-void
.end method

.method private showNoSdCard(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 1138
    const v2, 0x7f090001

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/CompressViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1139
    .local v0, noSdcardView:Landroid/widget/LinearLayout;
    const v2, 0x7f090003

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/CompressViewer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1140
    .local v1, sdcardWarningMessage:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipList:Lcom/htc/widget/HtcListView;

    if-eqz v2, :cond_0

    .line 1142
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipList:Lcom/htc/widget/HtcListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 1143
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1144
    iput-boolean v4, p0, Lcom/htc/htccompressviewer/CompressViewer;->mIsEnableOptionMenu:Z

    .line 1146
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1130
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1131
    .local v0, toast:Landroid/widget/Toast;
    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1133
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccountTypeName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 16
    .parameter "accountType"

    .prologue
    .line 712
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 713
    .local v1, am:Landroid/accounts/AccountManager;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v6

    .line 714
    .local v6, cs:Landroid/content/IContentService;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccompressviewer/CompressViewer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 716
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 717
    .local v3, auth:Landroid/accounts/AuthenticatorDescription;
    const/4 v11, 0x0

    .line 720
    .local v11, type:Ljava/lang/CharSequence;
    :try_start_0
    invoke-interface {v6}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v10

    .line 721
    .local v10, syncs:[Landroid/content/SyncAdapterType;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    .line 723
    .local v5, auths:[Landroid/accounts/AuthenticatorDescription;
    move-object v2, v5

    .local v2, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v2, v7

    .line 724
    .local v4, authdpt:Landroid/accounts/AuthenticatorDescription;
    iget-object v13, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 725
    move-object v3, v4

    .line 730
    .end local v4           #authdpt:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    const-string v13, "com.google"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "com.android.exchange"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "com.htc.android.mail.eas"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "com.htc.sample.contacts.syncadapter"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "com.tmobile.nab"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "com.htc.android.mail.eas"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "com.htc.socialnetwork.flickr"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "com.htc.socialnetwork.flickr"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 738
    :cond_1
    iget-object v13, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget v14, v3, Landroid/accounts/AuthenticatorDescription;->labelId:I

    const/4 v15, 0x0

    invoke-virtual {v9, v13, v14, v15}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    :cond_2
    :goto_1
    move-object v12, v11

    .line 746
    .end local v2           #arr$:[Landroid/accounts/AuthenticatorDescription;
    .end local v5           #auths:[Landroid/accounts/AuthenticatorDescription;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #syncs:[Landroid/content/SyncAdapterType;
    .end local v11           #type:Ljava/lang/CharSequence;
    .local v12, type:Ljava/lang/CharSequence;
    :goto_2
    return-object v12

    .line 723
    .end local v12           #type:Ljava/lang/CharSequence;
    .restart local v2       #arr$:[Landroid/accounts/AuthenticatorDescription;
    .restart local v4       #authdpt:Landroid/accounts/AuthenticatorDescription;
    .restart local v5       #auths:[Landroid/accounts/AuthenticatorDescription;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v10       #syncs:[Landroid/content/SyncAdapterType;
    .restart local v11       #type:Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 739
    .end local v4           #authdpt:Landroid/accounts/AuthenticatorDescription;
    :cond_4
    const-string v13, "com.htc.android.pcsc"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 740
    const v13, 0x7f070009

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_1

    .line 742
    .end local v2           #arr$:[Landroid/accounts/AuthenticatorDescription;
    .end local v5           #auths:[Landroid/accounts/AuthenticatorDescription;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #syncs:[Landroid/content/SyncAdapterType;
    :catch_0
    move-exception v13

    move-object v12, v11

    .line 746
    .end local v11           #type:Ljava/lang/CharSequence;
    .restart local v12       #type:Ljava/lang/CharSequence;
    goto :goto_2

    .end local v12           #type:Ljava/lang/CharSequence;
    .restart local v11       #type:Ljava/lang/CharSequence;
    :catchall_0
    move-exception v13

    move-object v12, v11

    .end local v11           #type:Ljava/lang/CharSequence;
    .restart local v12       #type:Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method public getAccounts()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 669
    .local v3, am:Landroid/accounts/AccountManager;
    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 670
    .local v2, accounts:[Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 677
    .local v7, matching:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v4, v2

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v6, v4

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, v4, v5

    .line 678
    .local v0, account:Landroid/accounts/Account;
    iget-object v1, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 679
    .local v1, accountType:Ljava/lang/String;
    const-string v8, "com.google"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.android.exchange"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.htc.android.mail.eas"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.htc.sample.contacts.syncadapter"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.tmobile.nab"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.htc.android.mail.eas"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.htc.socialnetwork.flickr"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.htc.socialnetwork.flickr"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 687
    :cond_0
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 701
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountType:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 702
    .restart local v0       #account:Landroid/accounts/Account;
    new-instance v0, Landroid/accounts/Account;

    .end local v0           #account:Landroid/accounts/Account;
    const-string v8, "pcsc"

    const-string v9, "com.htc.android.pcsc"

    invoke-direct {v0, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .restart local v0       #account:Landroid/accounts/Account;
    if-eqz v0, :cond_3

    .line 704
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_3
    return-object v7
.end method

.method public getSelectAccountDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "unzipPath"

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/CompressViewer;->getAccounts()Ljava/util/ArrayList;

    move-result-object v4

    .line 757
    .local v4, writableAccountList:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 758
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 759
    .local v10, path:Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 760
    .local v9, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const-string v1, "text/x-vcard"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    invoke-virtual {p0, v9}, Lcom/htc/htccompressviewer/CompressViewer;->startActivity(Landroid/content/Intent;)V

    .line 802
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #path:Landroid/net/Uri;
    :goto_0
    return-void

    .line 768
    :cond_0
    new-instance v7, Landroid/view/ContextThemeWrapper;

    const v1, 0x103000c

    invoke-direct {v7, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 769
    .local v7, dialogContext:Landroid/content/Context;
    const-string v1, "layout_inflater"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 770
    .local v5, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/htc/htccompressviewer/CompressViewer$1;

    const v3, 0x1090004

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/htccompressviewer/CompressViewer$1;-><init>(Lcom/htc/htccompressviewer/CompressViewer;Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;)V

    .line 793
    .local v0, accountAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Landroid/accounts/Account;>;"
    const v11, 0x7f070006

    .line 795
    .local v11, titleID:I
    new-instance v6, Lcom/htc/htccompressviewer/CompressViewer$AccountSelectedListener;

    invoke-direct {v6, p0, p1, v4, p2}, Lcom/htc/htccompressviewer/CompressViewer$AccountSelectedListener;-><init>(Lcom/htc/htccompressviewer/CompressViewer;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 796
    .local v6, accountSelectedListener:Lcom/htc/htccompressviewer/CompressViewer$AccountSelectedListener;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 800
    .local v8, htcAD:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method public getZipTree()Lcom/htc/htccompressviewer/zip/ZipTree;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipTree()Lcom/htc/htccompressviewer/zip/ZipTree;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized loadView()V
    .locals 4

    .prologue
    .line 1110
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1111
    :try_start_1
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v1}, Lcom/htc/htccompressviewer/ZipListAdapter;->zipListAdapterIniTree()V

    .line 1112
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    invoke-virtual {v1}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipFilesCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1113
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->setContentView(I)V

    .line 1114
    invoke-direct {p0}, Lcom/htc/htccompressviewer/CompressViewer;->setTitle()V

    .line 1115
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1116
    .local v0, noFile:Landroid/widget/TextView;
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    .end local v0           #noFile:Landroid/widget/TextView;
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1126
    monitor-exit p0

    return-void

    .line 1118
    :cond_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mIsEnableOptionMenu:Z

    .line 1119
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->setContentView(I)V

    .line 1120
    invoke-direct {p0}, Lcom/htc/htccompressviewer/CompressViewer;->setZipList()V

    .line 1121
    invoke-direct {p0}, Lcom/htc/htccompressviewer/CompressViewer;->setTitle()V

    .line 1122
    invoke-direct {p0}, Lcom/htc/htccompressviewer/CompressViewer;->setHeader()V

    .line 1123
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1125
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1110
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/ZipListAdapter;->getZipInZipLevel()I

    move-result v0

    if-lez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/ZipListAdapter;->zipInZipLevelback()Z

    .line 311
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mPathCache:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v1}, Lcom/htc/htccompressviewer/ZipListAdapter;->getZipInZipLevel()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;

    .line 312
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 230
    const-string v1, "common_app_bkg"

    const v2, 0x20806b7

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 231
    .local v0, bkgId:I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/htccompressviewer/CompressViewer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 232
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 364
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 373
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 366
    :sswitch_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 370
    :sswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 364
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x0

    const/16 v11, 0x9

    const/4 v3, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/CompressViewer;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 118
    .local v7, intent:Landroid/content/Intent;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v12

    const/4 v4, 0x1

    const-string v5, "_display_name"

    aput-object v5, v2, v4

    .line 123
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 124
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 125
    invoke-virtual {p0, v11}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    .line 186
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 129
    .local v9, scheme:Ljava/lang/String;
    const-string v4, "content"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/CompressViewer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, cs:Landroid/content/ContentResolver;
    const-string v5, ""

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 132
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    const-string v4, "_data"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;

    .line 135
    const-string v4, "_display_name"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer;->mDisplayName:Ljava/lang/String;

    .line 137
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 147
    .end local v0           #cs:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 148
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/CompressViewer;->finish()V

    goto :goto_0

    .line 139
    :cond_3
    const-string v4, "file"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 140
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;

    .line 141
    iput-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 143
    :cond_4
    invoke-virtual {p0, v11}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 153
    :cond_5
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/CompressViewer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer;->mInflater:Landroid/view/LayoutInflater;

    .line 154
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/CompressViewer;->setContentView(I)V

    .line 155
    iget-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x2090026

    invoke-virtual {v4, v5, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipHeader:Landroid/view/View;

    .line 156
    invoke-direct {p0}, Lcom/htc/htccompressviewer/CompressViewer;->setNoSDcard()V

    .line 157
    new-instance v3, Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-direct {v3, p0}, Lcom/htc/htccompressviewer/ZipListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    .line 158
    new-instance v3, Lcom/htc/htccompressviewer/MediaScannerConnection;

    invoke-direct {v3, p0}, Lcom/htc/htccompressviewer/MediaScannerConnection;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mMediaScannerConnection:Lcom/htc/htccompressviewer/MediaScannerConnection;

    .line 159
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mMediaScannerConnection:Lcom/htc/htccompressviewer/MediaScannerConnection;

    invoke-virtual {v3}, Lcom/htc/htccompressviewer/MediaScannerConnection;->bindScannerService()Z

    .line 161
    new-instance v3, Lcom/htc/htccompressviewer/zip/HtcZip;

    iget-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/htc/htccompressviewer/zip/HtcZip;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    .line 163
    new-instance v10, Ljava/io/File;

    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v10, srcZipFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 165
    invoke-virtual {p0, v11}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto/16 :goto_0

    .line 169
    :cond_6
    :try_start_0
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    iget-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/htccompressviewer/zip/HtcZip;->isZipFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 170
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 180
    :catch_0
    move-exception v8

    .line 181
    .local v8, ioe:Ljava/io/IOException;
    invoke-virtual {p0, v13}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto/16 :goto_0

    .line 172
    .end local v8           #ioe:Ljava/io/IOException;
    :cond_7
    :try_start_1
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    iget-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/htccompressviewer/zip/HtcZip;->isEncrypt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 173
    const v3, 0x7f070008

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/htccompressviewer/CompressViewer;->showToast(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/CompressViewer;->finish()V

    goto/16 :goto_0

    .line 177
    :cond_8
    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    .line 341
    const/4 v1, 0x0

    .local v1, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    move-object v1, p3

    .line 342
    check-cast v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .line 344
    iget v2, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 345
    .local v2, position:I
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v3}, Lcom/htc/htccompressviewer/ZipListAdapter;->getIsRootNoFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v3}, Lcom/htc/htccompressviewer/ZipListAdapter;->getFileList()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iput-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    .line 351
    :goto_0
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iget-object v3, v3, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->srcPath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/htccompressviewer/CompressViewer;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, ext:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iget-boolean v3, v3, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-nez v3, :cond_0

    const-string v3, "zip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 354
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iget-object v3, v3, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->name:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 355
    const/16 v3, 0xa

    const v4, 0x7f07000c

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 356
    const/4 v3, 0x3

    const v4, 0x7f07000d

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 359
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 360
    return-void

    .line 348
    .end local v0           #ext:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v3}, Lcom/htc/htccompressviewer/ZipListAdapter;->getFileList()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iput-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 392
    packed-switch p1, :pswitch_data_0

    .line 418
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/CompressViewer;->createErrorMessageDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 394
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/CompressViewer;->createUncompressAllProgressDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 399
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/CompressViewer;->createUncompressOneProgressDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 403
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/CompressViewer;->createLoadFileListProgressDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 409
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/CompressViewer;->createErrorMessageDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    .line 542
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v1}, Lcom/htc/htccompressviewer/ZipListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mIsEnableOptionMenu:Z

    if-eqz v1, :cond_0

    .line 544
    const/4 v1, 0x1

    const/16 v2, 0x12e

    const v3, 0x7f07000e

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/htccompressviewer/CompressViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 546
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 549
    :cond_0
    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mSdcardListener:Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mSdcardListener:Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;

    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mMediaScannerConnection:Lcom/htc/htccompressviewer/MediaScannerConnection;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mMediaScannerConnection:Lcom/htc/htccompressviewer/MediaScannerConnection;

    invoke-virtual {v1}, Lcom/htc/htccompressviewer/MediaScannerConnection;->disconnectMediaScanner()V

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/htccompressviewer/zip/HtcZip;->setInterrupt(Z)V

    .line 250
    :cond_2
    invoke-static {}, Lcom/htc/htccompressviewer/ReloadViewThread;->getSingleten()Lcom/htc/htccompressviewer/ReloadViewThread;

    move-result-object v0

    .line 251
    .local v0, rvt:Lcom/htc/htccompressviewer/ReloadViewThread;
    if-eqz v0, :cond_3

    .line 252
    invoke-virtual {v0}, Lcom/htc/htccompressviewer/ReloadViewThread;->destroyThread()V

    .line 254
    :cond_3
    return-void
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v1}, Lcom/htc/htccompressviewer/ZipListAdapter;->getIsRootNoFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v1}, Lcom/htc/htccompressviewer/ZipListAdapter;->getFileList()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iput-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iget-object v1, v1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->srcPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, ext:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iget-boolean v1, v1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-nez v1, :cond_0

    .line 330
    const-string v1, "zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iget-object v1, v1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->srcPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->openZipFile(Ljava/lang/String;)V

    .line 337
    :cond_0
    :goto_1
    return-void

    .line 324
    .end local v0           #ext:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v1}, Lcom/htc/htccompressviewer/ZipListAdapter;->getFileList()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iput-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    goto :goto_0

    .line 334
    .restart local v0       #ext:Ljava/lang/String;
    :cond_2
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 568
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 570
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 588
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 572
    :pswitch_0
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;

    invoke-virtual {v2}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipFilesCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 573
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v2}, Lcom/htc/htccompressviewer/ZipListAdapter;->getFileList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iput-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    .line 574
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iget-boolean v2, v2, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-eqz v2, :cond_0

    .line 575
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v2}, Lcom/htc/htccompressviewer/ZipListAdapter;->getFileList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 576
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v2}, Lcom/htc/htccompressviewer/ZipListAdapter;->getFileList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iput-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    .line 577
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer;->mClickNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iget-boolean v2, v2, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-nez v2, :cond_1

    .line 582
    .end local v0           #i:I
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 575
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 584
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 260
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 555
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/ZipListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/htccompressviewer/CompressViewer;->mIsEnableOptionMenu:Z

    if-eqz v0, :cond_0

    .line 557
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 562
    :goto_0
    return v1

    .line 560
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 265
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 213
    return-void
.end method
