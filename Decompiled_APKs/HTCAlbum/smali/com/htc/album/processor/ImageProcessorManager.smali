.class public Lcom/htc/album/processor/ImageProcessorManager;
.super Ljava/lang/Object;
.source "ImageProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;,
        Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;,
        Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;
    }
.end annotation


# static fields
.field public static final DLG_STYLE_MULTIPLE_BASE:I = 0xc8

.field public static final DLG_STYLE_MULTIPLE_PICKER_3D2D_SELECTIONS:I = 0xc9

.field public static final DLG_STYLE_MULTIPLE_PICKER_FORCE_2D_ONLY:I = 0xca

.field public static final DLG_STYLE_MULTIPLE_SHARE_3D2D_SELECTIONS:I = 0xcb

.field public static final DLG_STYLE_MULTIPLE_SHARE_FORCE_2D_ONLY:I = 0xcc

.field static final DLG_STYLE_PROCESSING:I = 0x12e

.field public static final DLG_STYLE_SINGLE_PICKER_3D2D_SELECTIONS:I = 0x65

.field public static final DLG_STYLE_SINGLE_PICKER_FORCE_2D_ONLY:I = 0x66

.field public static final DLG_STYLE_SINGLE_SHARE_3D2D_SELECTIONS:I = 0x67

.field public static final DLG_STYLE_SINGLE_SHARE_FORCE_2D_ONLY:I = 0x68

.field static final DLG_STYLE_STORAGE_FULL:I = 0x12d

.field private static final DLG_STYLE_UNKNOWN:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

.field private mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

.field private mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

.field private mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

.field private mRunningDlgId:I

.field private mSourceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/processor/ImageProcessorManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;)V
    .locals 2
    .parameter "activity"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mActivity:Landroid/app/Activity;

    .line 65
    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    .line 66
    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    .line 67
    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    .line 69
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    .line 71
    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    .line 86
    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mActivity:Landroid/app/Activity;

    .line 87
    iput-object p2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    .line 88
    new-instance v0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Lcom/htc/album/processor/ImageProcessorManager$1;)V

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    .line 89
    new-instance v0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Lcom/htc/album/processor/ImageProcessorManager$1;)V

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    .line 90
    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/processor/ImageProcessorManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/album/processor/ImageProcessorManager;)Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    return-object v0
.end method

.method private getDlgStringIds(I)[I
    .locals 7
    .parameter "dlgId"

    .prologue
    .line 263
    const/4 v4, 0x0

    .line 264
    .local v4, title:I
    const/4 v1, 0x0

    .line 265
    .local v1, msg:I
    const/4 v3, 0x0

    .line 266
    .local v3, positive:I
    const/4 v2, 0x0

    .line 268
    .local v2, negative:I
    sparse-switch p1, :sswitch_data_0

    .line 330
    const/4 v0, 0x0

    .line 339
    :goto_0
    return-object v0

    .line 272
    :sswitch_0
    const v4, 0x7f0b00df

    .line 273
    const v1, 0x7f0b00e0

    .line 274
    const v3, 0x7f0b00e2

    .line 275
    const v2, 0x7f0b00e3

    .line 334
    :goto_1
    const/4 v5, 0x4

    new-array v0, v5, [I

    .line 335
    .local v0, dlgIds:[I
    const/4 v5, 0x0

    aput v4, v0, v5

    .line 336
    const/4 v5, 0x1

    aput v1, v0, v5

    .line 337
    const/4 v5, 0x2

    aput v3, v0, v5

    .line 338
    const/4 v5, 0x3

    aput v2, v0, v5

    goto :goto_0

    .line 280
    .end local v0           #dlgIds:[I
    :sswitch_1
    const v4, 0x7f0b00ce

    .line 281
    const v1, 0x7f0b00cf

    .line 282
    const v3, 0x7f0b00d2

    .line 283
    const v2, 0x7f0b00d1

    .line 284
    goto :goto_1

    .line 288
    :sswitch_2
    const v4, 0x7f0b00df

    .line 289
    const v1, 0x7f0b00e1

    .line 290
    const v3, 0x7f0b00e2

    .line 291
    const v2, 0x7f0b00e3

    .line 292
    goto :goto_1

    .line 296
    :sswitch_3
    const v4, 0x7f0b00ce

    .line 297
    const v1, 0x7f0b00d0

    .line 298
    const v3, 0x7f0b00d2

    .line 299
    const v2, 0x7f0b00d1

    .line 300
    goto :goto_1

    .line 305
    :sswitch_4
    const v4, 0x7f0b00d6

    .line 306
    const/16 v5, 0x94

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v6, :cond_0

    .line 309
    const v1, 0x7f0b00d8

    .line 315
    :goto_2
    const v3, 0x20c013c

    .line 316
    const v2, 0x20c013d

    .line 317
    goto :goto_1

    .line 313
    :cond_0
    const v1, 0x7f0b00d7

    goto :goto_2

    .line 322
    :sswitch_5
    const v4, 0x7f0b00d6

    .line 323
    const v1, 0x7f0b00d9

    .line 324
    const v3, 0x20c013c

    .line 325
    const v2, 0x20c013d

    .line 326
    goto :goto_1

    .line 268
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_4
        0x67 -> :sswitch_1
        0x68 -> :sswitch_4
        0xc9 -> :sswitch_2
        0xca -> :sswitch_5
        0xcb -> :sswitch_3
        0xcc -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method protected OnCancelPirorProcess(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    .line 385
    .local v0, listener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;
    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0}, Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;->OnCancelPirorProcess()V

    .line 387
    :cond_0
    if-eqz p1, :cond_1

    .line 388
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 389
    :cond_1
    return-void
.end method

.method protected OnCancelProcessing(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    .line 394
    .local v0, listener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;
    if-eqz v0, :cond_0

    .line 395
    invoke-interface {v0}, Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;->OnCancelProcessing()V

    .line 396
    :cond_0
    if-eqz p1, :cond_1

    .line 397
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 398
    :cond_1
    return-void
.end method

.method protected OnProcessEnd(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    .line 403
    .local v0, listener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;
    if-eqz v0, :cond_0

    .line 404
    invoke-interface {v0, p0}, Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;->OnProcessEnd(Lcom/htc/album/processor/ImageProcessorManager;)V

    .line 405
    :cond_0
    if-eqz p1, :cond_1

    .line 406
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 407
    :cond_1
    return-void
.end method

.method public getFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/processor/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->getFileList()Ljava/util/ArrayList;

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResult()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 419
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->getResultCode()I

    move-result v0

    .line 427
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSource()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method protected handleProcessedResult()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 454
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    .line 455
    .local v1, processor:Lcom/htc/album/processor/FlattenBaseProcessor;
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mActivity:Landroid/app/Activity;

    .line 456
    .local v0, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 486
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 459
    :cond_1
    invoke-virtual {v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->getResultCode()I

    move-result v2

    .line 460
    .local v2, resultCode:I
    sget-object v3, Lcom/htc/album/processor/ImageProcessorManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleProcessedResult] Result Code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 482
    :pswitch_1
    const/16 v3, 0x12d

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 470
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/htc/album/processor/ImageProcessorManager;->OnCancelPirorProcess(Landroid/app/Dialog;)V

    goto :goto_0

    .line 477
    :pswitch_3
    invoke-virtual {p0, v6}, Lcom/htc/album/processor/ImageProcessorManager;->OnCancelProcessing(Landroid/app/Dialog;)V

    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "dialogId"
    .parameter "extra"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 94
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mActivity:Landroid/app/Activity;

    .line 95
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 96
    const/4 v2, 0x0

    .line 258
    :goto_0
    return-object v2

    .line 98
    :cond_0
    const/4 v2, 0x0

    .line 99
    .local v2, dialog:Landroid/app/Dialog;
    const/16 v8, 0xc8

    if-ge p1, v8, :cond_1

    move v5, v6

    .line 100
    .local v5, runSingle:Z
    :goto_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 107
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/album/processor/ImageProcessorManager;->getDlgStringIds(I)[I

    move-result-object v3

    .line 108
    .local v3, ids:[I
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    aget v7, v3, v7

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    aget v8, v3, v6

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    aget v7, v3, v9

    new-instance v8, Lcom/htc/album/processor/ImageProcessorManager$3;

    invoke-direct {v8, p0}, Lcom/htc/album/processor/ImageProcessorManager$3;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    aget v7, v3, v10

    new-instance v8, Lcom/htc/album/processor/ImageProcessorManager$2;

    invoke-direct {v8, p0, v5}, Lcom/htc/album/processor/ImageProcessorManager$2;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Z)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/htc/album/processor/ImageProcessorManager$1;

    invoke-direct {v7, p0}, Lcom/htc/album/processor/ImageProcessorManager$1;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 149
    .local v1, altDlg:Lcom/htc/widget/HtcAlertDialog;
    move-object v2, v1

    .line 150
    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto :goto_0

    .end local v1           #altDlg:Lcom/htc/widget/HtcAlertDialog;
    .end local v3           #ids:[I
    .end local v5           #runSingle:Z
    :cond_1
    move v5, v7

    .line 99
    goto :goto_1

    .line 158
    .restart local v5       #runSingle:Z
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/htc/album/processor/ImageProcessorManager;->getDlgStringIds(I)[I

    move-result-object v3

    .line 159
    .restart local v3       #ids:[I
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    aget v7, v3, v7

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    aget v8, v3, v6

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    aget v7, v3, v9

    new-instance v8, Lcom/htc/album/processor/ImageProcessorManager$6;

    invoke-direct {v8, p0, v5}, Lcom/htc/album/processor/ImageProcessorManager$6;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Z)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    aget v7, v3, v10

    new-instance v8, Lcom/htc/album/processor/ImageProcessorManager$5;

    invoke-direct {v8, p0}, Lcom/htc/album/processor/ImageProcessorManager$5;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/htc/album/processor/ImageProcessorManager$4;

    invoke-direct {v7, p0}, Lcom/htc/album/processor/ImageProcessorManager$4;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 200
    .restart local v1       #altDlg:Lcom/htc/widget/HtcAlertDialog;
    move-object v2, v1

    .line 201
    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto/16 :goto_0

    .line 206
    .end local v1           #altDlg:Lcom/htc/widget/HtcAlertDialog;
    .end local v3           #ids:[I
    :sswitch_2
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0b0034

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v8, 0x7f0b0035

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x20c013c

    new-instance v8, Lcom/htc/album/processor/ImageProcessorManager$7;

    invoke-direct {v8, p0}, Lcom/htc/album/processor/ImageProcessorManager$7;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 221
    .restart local v1       #altDlg:Lcom/htc/widget/HtcAlertDialog;
    move-object v2, v1

    .line 222
    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto/16 :goto_0

    .line 227
    .end local v1           #altDlg:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_3
    new-instance v4, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v4, v0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 228
    .local v4, proDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00da

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v4, v6}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 230
    new-instance v6, Lcom/htc/album/processor/ImageProcessorManager$8;

    invoke-direct {v6, p0}, Lcom/htc/album/processor/ImageProcessorManager$8;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v4, v6}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 241
    new-instance v6, Lcom/htc/album/processor/ImageProcessorManager$9;

    invoke-direct {v6, p0}, Lcom/htc/album/processor/ImageProcessorManager$9;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v4, v6}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 252
    move-object v2, v4

    .line 253
    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto/16 :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_0
        0x68 -> :sswitch_1
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_0
        0xcc -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_3
    .end sparse-switch
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 440
    sget-object v0, Lcom/htc/album/processor/ImageProcessorManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[release] +++"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/htc/album/processor/ImageProcessorManager;->stopProcessing()V

    .line 442
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 443
    iput-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    .line 444
    iput-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    .line 445
    iput-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    .line 446
    iput-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    .line 447
    iput-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mActivity:Landroid/app/Activity;

    .line 448
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    .line 449
    sget-object v0, Lcom/htc/album/processor/ImageProcessorManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[release] ---"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method protected runMultipleProcessor()V
    .locals 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->cancel()V

    .line 377
    :cond_0
    new-instance v0, Lcom/htc/album/processor/MultipleFlattenProcessor;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/processor/MultipleFlattenProcessor;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    .line 378
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->setOnProcessListener(Lcom/htc/album/processor/BaseProcessor$OnProcessListener;)V

    .line 379
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->start()V

    .line 380
    return-void
.end method

.method protected runSingleProcessor()V
    .locals 4

    .prologue
    .line 364
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->cancel()V

    .line 367
    :cond_0
    new-instance v0, Lcom/htc/album/processor/SingleFlattenProcessor;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/processor/SingleFlattenProcessor;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    .line 368
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->setOnProcessListener(Lcom/htc/album/processor/BaseProcessor$OnProcessListener;)V

    .line 369
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->start()V

    .line 370
    return-void
.end method

.method public startProcessing(ILandroid/content/Intent;)V
    .locals 2
    .parameter "style"
    .parameter "input"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 347
    :cond_0
    iput-object p2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    .line 349
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public stopProcessing()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->cancel()V

    .line 357
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->release()V

    .line 359
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    .line 360
    return-void
.end method
