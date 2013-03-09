.class public Lcom/android/mms/push/PushMessagesActivity;
.super Landroid/app/Activity;
.source "PushMessagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/push/PushMessagesActivity$ExpiredMessagesLoop;
    }
.end annotation


# static fields
.field private static final MAX_TEXT_WIDTH_BEFORE_ELLIPSIZE:I = 0x258

.field private static mThis:Lcom/android/mms/push/PushMessagesActivity;


# instance fields
.field private mCancelButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mExpiredMessageChecker:Ljava/lang/Thread;

.field private mLastSelectedPosition:I

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

.field private mTimerKeepRunning:Z

.field private mVisitWebsiteButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/push/PushMessagesActivity;->mThis:Lcom/android/mms/push/PushMessagesActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Lcom/android/mms/push/PushMessagesActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/push/PushMessagesActivity$1;-><init>(Lcom/android/mms/push/PushMessagesActivity;)V

    iput-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mVisitWebsiteButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    new-instance v0, Lcom/android/mms/push/PushMessagesActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/push/PushMessagesActivity$2;-><init>(Lcom/android/mms/push/PushMessagesActivity;)V

    iput-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mCancelButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 77
    new-instance v0, Lcom/android/mms/push/PushMessagesActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/push/PushMessagesActivity$3;-><init>(Lcom/android/mms/push/PushMessagesActivity;)V

    iput-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 453
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/push/PushMessagesActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mms/push/PushMessagesActivity;->visit()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/mms/push/PushMessagesActivity;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/mms/push/PushMessagesActivity;->mThis:Lcom/android/mms/push/PushMessagesActivity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/push/PushMessagesActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/mms/push/PushMessagesActivity;->mLastSelectedPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/push/PushMessagesActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mms/push/PushMessagesActivity;->displayMessage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/push/PushMessagesActivity;)Lcom/android/mms/push/PushMessageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/push/PushMessagesActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mms/push/PushMessagesActivity;->deletePushMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/push/PushMessagesActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mTimerKeepRunning:Z

    return v0
.end method

.method private deleteAll()V
    .locals 3

    .prologue
    .line 325
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901cc

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901cd

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c015f

    new-instance v2, Lcom/android/mms/push/PushMessagesActivity$7;

    invoke-direct {v2, p0}, Lcom/android/mms/push/PushMessagesActivity$7;-><init>(Lcom/android/mms/push/PushMessagesActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 338
    return-void
.end method

.method private deletePushMessage()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    iget v1, p0, Lcom/android/mms/push/PushMessagesActivity;->mLastSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/push/PushMessageAdapter;->deleteRow(I)V

    .line 383
    return-void
.end method

.method private displayMessage()V
    .locals 12

    .prologue
    const v11, 0x7f0c0008

    const/16 v10, 0x11

    const/16 v9, 0xa

    .line 207
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03002d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 210
    .local v5, messageInfoView:Landroid/view/View;
    const/16 v2, 0xa

    .line 212
    .local v2, color:I
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const v6, 0x7f0901c8

    invoke-virtual {p0, v6}, Lcom/android/mms/push/PushMessagesActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 214
    .local v1, buffer:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 215
    .local v0, before:I
    iget-object v6, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    iget v7, p0, Lcom/android/mms/push/PushMessagesActivity;->mLastSelectedPosition:I

    invoke-virtual {v6, v7}, Lcom/android/mms/push/PushMessageAdapter;->getHref(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, href:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 224
    :cond_0
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v6, p0, v11, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v6, v0, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 228
    const v6, 0x7f0e00a6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const v6, 0x7f0e00a7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    iget v8, p0, Lcom/android/mms/push/PushMessagesActivity;->mLastSelectedPosition:I

    invoke-virtual {v7, v8}, Lcom/android/mms/push/PushMessageAdapter;->getContent(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .end local v1           #buffer:Landroid/text/SpannableStringBuilder;
    const v6, 0x7f0901ca

    invoke-virtual {p0, v6}, Lcom/android/mms/push/PushMessagesActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 234
    .restart local v1       #buffer:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 235
    iget-object v6, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    iget v7, p0, Lcom/android/mms/push/PushMessagesActivity;->mLastSelectedPosition:I

    invoke-virtual {v6, v7}, Lcom/android/mms/push/PushMessageAdapter;->getReceivedTime(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 236
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    const v7, 0x1030046

    invoke-direct {v6, p0, v7, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v6, v0, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 240
    const v6, 0x7f0e00a8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .end local v1           #buffer:Landroid/text/SpannableStringBuilder;
    const v6, 0x7f0901c9

    invoke-virtual {p0, v6}, Lcom/android/mms/push/PushMessagesActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 245
    .restart local v1       #buffer:Landroid/text/SpannableStringBuilder;
    iget-object v6, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    iget v7, p0, Lcom/android/mms/push/PushMessagesActivity;->mLastSelectedPosition:I

    invoke-virtual {v6, v7}, Lcom/android/mms/push/PushMessageAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 250
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v6, p0, v11, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v6, v0, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 254
    const v6, 0x7f0e00a5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0200d0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/mms/push/PushMessagesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0901c6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0901cb

    iget-object v8, p0, Lcom/android/mms/push/PushMessagesActivity;->mVisitWebsiteButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x20c0164

    iget-object v8, p0, Lcom/android/mms/push/PushMessagesActivity;->mCancelButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/push/PushMessagesActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 264
    .local v4, mPushMsgInfo:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 265
    return-void
.end method

.method private showDeleteWarning()V
    .locals 7

    .prologue
    .line 357
    iget-object v2, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    iget v3, p0, Lcom/android/mms/push/PushMessagesActivity;->mLastSelectedPosition:I

    invoke-virtual {v2, v3}, Lcom/android/mms/push/PushMessageAdapter;->getContent(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, content:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 359
    const-string v0, ""

    .line 362
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    const/high16 v3, 0x4416

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 365
    .local v1, truncatedInfo:Ljava/lang/CharSequence;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x20c01fc

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0200d1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/push/PushMessagesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901d1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c015f

    new-instance v4, Lcom/android/mms/push/PushMessagesActivity$8;

    invoke-direct {v4, p0}, Lcom/android/mms/push/PushMessagesActivity$8;-><init>(Lcom/android/mms/push/PushMessagesActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c0164

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 379
    return-void
.end method

.method private startDeleteExpiredMessages()V
    .locals 2

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mTimerKeepRunning:Z

    .line 393
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/push/PushMessagesActivity$ExpiredMessagesLoop;

    invoke-direct {v1, p0}, Lcom/android/mms/push/PushMessagesActivity$ExpiredMessagesLoop;-><init>(Lcom/android/mms/push/PushMessagesActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mExpiredMessageChecker:Ljava/lang/Thread;

    .line 394
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mExpiredMessageChecker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 395
    return-void
.end method

.method private stopDeleteExpiredMessages()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mTimerKeepRunning:Z

    .line 399
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mExpiredMessageChecker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 400
    return-void
.end method

.method private visit()V
    .locals 5

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/mms/push/PushMessagesActivity;->updateReadStatus()V

    .line 344
    iget-object v3, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    iget v4, p0, Lcom/android/mms/push/PushMessagesActivity;->mLastSelectedPosition:I

    invoke-virtual {v3, v4}, Lcom/android/mms/push/PushMessageAdapter;->getHref(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, href:Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 348
    .local v2, uri:Landroid/net/Uri;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 349
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/push/PushMessagesActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/ui/MessageUtils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    invoke-virtual {p0, v1}, Lcom/android/mms/push/PushMessagesActivity;->startActivity(Landroid/content/Intent;)V

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/push/PushMessagesActivity;->finish()V

    .line 354
    return-void

    .line 346
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/push/PushMessagesActivity;->setResult(I)V

    .line 316
    invoke-virtual {p0}, Lcom/android/mms/push/PushMessagesActivity;->finish()V

    .line 318
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 415
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/mms/push/PushMessagesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/push/PushMessagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 420
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 182
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 203
    :goto_0
    return v0

    .line 184
    :pswitch_0
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/push/PushMessagesActivity;->displayMessage()V

    goto :goto_0

    .line 191
    :pswitch_1
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/push/PushMessagesActivity;->showDeleteWarning()V

    goto :goto_0

    .line 198
    :pswitch_2
    invoke-direct {p0}, Lcom/android/mms/push/PushMessagesActivity;->visit()V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x7f0e00d3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sput-object p0, Lcom/android/mms/push/PushMessagesActivity;->mThis:Lcom/android/mms/push/PushMessagesActivity;

    .line 95
    invoke-static {p0}, Lcom/android/mms/push/PushUtil;->deleteExpiredSi(Landroid/content/Context;)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/push/PushMessagesActivity;->requestWindowFeature(I)Z

    .line 101
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    const v2, 0x7f0901d3

    const/4 v4, -0x1

    invoke-static {p0, v0, v2, v4}, Lcom/android/mms/util/CommonActivityLayout;->createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II)Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v7

    .line 104
    .local v7, controller:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v7}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/push/PushMessagesActivity;->setContentView(Landroid/view/View;)V

    .line 106
    new-instance v0, Lcom/android/mms/push/PushMessageAdapter;

    invoke-direct {v0, p0}, Lcom/android/mms/push/PushMessageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    .line 108
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/push/PushMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 110
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/android/mms/push/PushMessagesActivity$4;

    invoke-direct {v2, p0}, Lcom/android/mms/push/PushMessagesActivity$4;-><init>(Lcom/android/mms/push/PushMessagesActivity;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/android/mms/push/PushMessagesActivity$5;

    invoke-direct {v2, p0}, Lcom/android/mms/push/PushMessagesActivity$5;-><init>(Lcom/android/mms/push/PushMessagesActivity;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 132
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/mms/push/PushMessagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 135
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/android/mms/push/PushMessagesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/push/PushMessageAdapter;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/mms/push/PushMessageAdapter;->getPosition(I)I

    move-result v8

    .line 141
    .local v8, pos:I
    if-ltz v8, :cond_1

    .line 142
    iput v8, p0, Lcom/android/mms/push/PushMessagesActivity;->mLastSelectedPosition:I

    .line 143
    invoke-direct {p0}, Lcom/android/mms/push/PushMessagesActivity;->displayMessage()V

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 169
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #pos:I
    :cond_0
    :goto_0
    return-void

    .line 148
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_2
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0901c6

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0200d1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0901c7

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x20c015f

    new-instance v3, Lcom/android/mms/push/PushMessagesActivity$6;

    invoke-direct {v3, p0}, Lcom/android/mms/push/PushMessagesActivity$6;-><init>(Lcom/android/mms/push/PushMessagesActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 164
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/mms/push/PushMessagesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/push/PushMessagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 271
    check-cast p3, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v0, p3, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    iput v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mLastSelectedPosition:I

    .line 274
    const v0, 0x7f090036

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 275
    invoke-virtual {p0}, Lcom/android/mms/push/PushMessagesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 276
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/mms/push/PushMessagesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 175
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    invoke-virtual {v0}, Lcom/android/mms/push/PushMessageAdapter;->close()V

    .line 178
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 299
    :goto_0
    return v0

    .line 289
    :pswitch_0
    const-string v0, "ANALYTIC_Mms"

    const-string v1, "[PushMessagesActivity]Delete all"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 299
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/push/PushMessagesActivity;->deleteAll()V

    goto :goto_1

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00d1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    invoke-virtual {v1}, Lcom/android/mms/push/PushMessageAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 306
    .local v0, isVisible:Z
    :goto_0
    const v1, 0x7f0e00d1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 308
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 304
    .end local v0           #isVisible:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 404
    invoke-static {p0}, Lcom/android/mms/push/PushUtil;->cancelNotification(Landroid/content/Context;)V

    .line 405
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    invoke-virtual {v0}, Lcom/android/mms/push/PushMessageAdapter;->registerContentObserver()V

    .line 407
    invoke-direct {p0}, Lcom/android/mms/push/PushMessagesActivity;->startDeleteExpiredMessages()V

    .line 409
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 410
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    invoke-virtual {v0}, Lcom/android/mms/push/PushMessageAdapter;->unregisterContentObserver()V

    .line 448
    invoke-direct {p0}, Lcom/android/mms/push/PushMessagesActivity;->stopDeleteExpiredMessages()V

    .line 450
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 451
    return-void
.end method

.method updateReadStatus()V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    iget v1, p0, Lcom/android/mms/push/PushMessagesActivity;->mLastSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/push/PushMessageAdapter;->isRead(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;

    iget v1, p0, Lcom/android/mms/push/PushMessagesActivity;->mLastSelectedPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/push/PushMessageAdapter;->setRead(IZ)V

    .line 389
    :cond_0
    return-void
.end method
