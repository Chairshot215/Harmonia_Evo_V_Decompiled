.class public Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "BluetoothOppTransferActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field public static final DIALOG_RECEIVE_COMPLETE_FAIL:I = 0x2

.field public static final DIALOG_RECEIVE_COMPLETE_SUCCESS:I = 0x1

.field public static final DIALOG_RECEIVE_ONGOING:I = 0x0

.field public static final DIALOG_SEND_COMPLETE_FAIL:I = 0x5

.field public static final DIALOG_SEND_COMPLETE_SUCCESS:I = 0x4

.field public static final DIALOG_SEND_ONGOING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothOppTransferActivity"

.field private static final V:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mIsComplete:Z

.field private mLine1View:Landroid/widget/TextView;

.field private mLine2View:Landroid/widget/TextView;

.field private mLine3View:Landroid/widget/TextView;

.field private mLine5View:Landroid/widget/TextView;

.field private mNeedUpdateButton:Z

.field private mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

.field private mPara:Lcom/htc/app/HtcAlertController$AlertParams;

.field private mPercentView:Landroid/widget/TextView;

.field private mProgressTransfer:Landroid/widget/ProgressBar;

.field private mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

.field private mUri:Landroid/net/Uri;

.field private mView:Landroid/view/View;

.field private mWhichDialog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    .line 121
    return-void
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateProgressbar()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    .line 249
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    .line 251
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->customizeViewContent()V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    .line 255
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateProgressbar()V

    .line 257
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private customizeViewContent()V
    .locals 8

    .prologue
    const v7, 0x7f07000e

    const v4, 0x7f07000d

    const v3, 0x7f07000c

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 266
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v1, v5, :cond_5

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 269
    const v1, 0x7f04001d

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 272
    const v1, 0x7f04001e

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 275
    const v1, 0x7f04001f

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v3, v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 279
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-nez v1, :cond_4

    .line 280
    const v1, 0x7f040021

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    .end local v0           #tmp:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 346
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 347
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    :cond_3
    return-void

    .line 281
    .restart local v0       #tmp:Ljava/lang/String;
    :cond_4
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v1, v5, :cond_1

    .line 282
    const v1, 0x7f040028

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 285
    .end local v0           #tmp:Ljava/lang/String;
    :cond_5
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    .line 287
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 288
    const v1, 0x7f04002a

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .restart local v0       #tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 291
    const v1, 0x7f04001e

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 294
    const v1, 0x7f04002b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v3, v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 298
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 299
    const v1, 0x7f04002c

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 300
    :cond_8
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 301
    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 304
    .end local v0           #tmp:Ljava/lang/String;
    :cond_9
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 305
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    const/16 v2, 0x1ee

    if-ne v1, v2, :cond_a

    .line 306
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 307
    const v1, 0x7f040040

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .restart local v0       #tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 310
    const v1, 0x7f040025

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 313
    const v1, 0x7f040041

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v3, v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :goto_3
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 329
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 317
    .end local v0           #tmp:Ljava/lang/String;
    :cond_a
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 318
    const v1, 0x7f040024

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .restart local v0       #tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 321
    const v1, 0x7f040025

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 324
    const v1, 0x7f040026

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 330
    .end local v0           #tmp:Ljava/lang/String;
    :cond_b
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 331
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 332
    const v1, 0x7f04002f

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .restart local v0       #tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 335
    const v1, 0x7f040030

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 338
    const v1, 0x7f040026

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 342
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private displayWhichDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 181
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    .line 182
    .local v0, direction:I
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    .line 183
    .local v2, isSuccess:Z
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    .line 185
    .local v1, isComplete:Z
    if-ne v0, v4, :cond_3

    .line 186
    if-eqz v1, :cond_2

    .line 187
    if-eqz v2, :cond_1

    .line 189
    iput v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 194
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 196
    :cond_3
    if-nez v0, :cond_0

    .line 197
    if-eqz v1, :cond_5

    .line 198
    if-eqz v2, :cond_4

    .line 199
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 201
    :cond_4
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 204
    :cond_5
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0
.end method

.method private setUpDialog()V
    .locals 4

    .prologue
    const v3, 0x1080027

    const v2, 0x104000a

    .line 214
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 215
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    const v1, 0x108009b

    iput v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    const v1, 0x7f04001c

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 218
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    const v1, 0x7f040023

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 221
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    const v1, 0x7f040022

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 222
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 240
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 241
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->setupAlert()V

    .line 242
    return-void

    .line 223
    :cond_2
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    const v1, 0x7f040029

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 226
    :cond_3
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    iput v3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 228
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 230
    :cond_4
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 231
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 232
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 233
    :cond_5
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    iput v3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 235
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    const v1, 0x7f040031

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 236
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 237
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    const v1, 0x7f040032

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 238
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method private updateButton()V
    .locals 7

    .prologue
    const v6, 0x104000a

    const/high16 v5, 0x104

    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 457
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 458
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v3}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 492
    :cond_0
    :goto_1
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 466
    :cond_2
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 467
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcAlertController;->setIcon(I)V

    .line 468
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_3

    .line 469
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :goto_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v3}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 476
    :cond_4
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 477
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_5

    .line 478
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 483
    :goto_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v3}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 481
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 485
    :cond_6
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcAlertController;->setIcon(I)V

    .line 487
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v3}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f040031

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f040032

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private updateProgressbar()V
    .locals 5

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 423
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    if-nez v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    if-nez v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 436
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCurrentBytes:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 438
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCurrentBytes:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    if-eqz v0, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->displayWhichDialog()V

    .line 448
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateButton()V

    .line 449
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->customizeViewContent()V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x5

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 352
    packed-switch p2, :pswitch_data_0

    .line 415
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->finish()V

    .line 416
    return-void

    .line 354
    :pswitch_0
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v4, :cond_1

    .line 356
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    .line 360
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 363
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 365
    :cond_1
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v3, :cond_2

    .line 369
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 372
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 376
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->retryTransfer(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;)V

    .line 378
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 381
    .local v1, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    const v2, 0x7f04003d

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 387
    .end local v1           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 388
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 389
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 395
    :pswitch_1
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v6, :cond_6

    .line 397
    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 399
    const-string v0, ""

    .line 400
    .local v0, msg:Ljava/lang/String;
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-nez v2, :cond_5

    .line 401
    const v2, 0x7f04003c

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 405
    :cond_4
    :goto_1
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 407
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 402
    :cond_5
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v6, :cond_4

    .line 403
    const v2, 0x7f04003f

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 409
    .end local v0           #msg:Ljava/lang/String;
    :cond_6
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v3, :cond_0

    .line 411
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    .line 140
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 141
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 142
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    if-nez v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->finish()V

    .line 168
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    .line 150
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->displayWhichDialog()V

    .line 153
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    if-nez v1, :cond_1

    .line 154
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    .line 155
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 159
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 164
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 167
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->setUpDialog()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 177
    :cond_0
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onDestroy()V

    .line 178
    return-void
.end method
