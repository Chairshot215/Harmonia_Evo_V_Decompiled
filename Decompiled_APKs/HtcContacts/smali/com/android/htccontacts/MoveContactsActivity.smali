.class public Lcom/android/htccontacts/MoveContactsActivity;
.super Landroid/app/Activity;
.source "MoveContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/MoveContactsActivity$MovingfirmationListener;,
        Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;,
        Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;,
        Lcom/android/htccontacts/MoveContactsActivity$PickAccountListener;,
        Lcom/android/htccontacts/MoveContactsActivity$AccountCount;,
        Lcom/android/htccontacts/MoveContactsActivity$SearchKeyListener;,
        Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;,
        Lcom/android/htccontacts/MoveContactsActivity$CancelListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MoveContactsActivity"


# instance fields
.field private final MSG_MOVING_DONE:I

.field private final MSG_PICK_FROM_ACCOUNT:I

.field private final MSG_PICK_TO_ACCOUNT:I

.field private final MSG_START_MOVING:I

.field private final MSG_UPDATE_PROGRESS_MESSAGE:I

.field private mActualMovingThread:Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;

.field mCacheMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelListener:Lcom/android/htccontacts/MoveContactsActivity$CancelListener;

.field private mFromAccountIndex:I

.field private mFromAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/MoveContactsActivity$AccountCount;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSearchDialogDissmissListener:Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;

.field private mSearchKeyListener:Lcom/android/htccontacts/MoveContactsActivity$SearchKeyListener;

.field private mToAccountIndex:I

.field private mToAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/MoveContactsActivity$AccountCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->MSG_PICK_FROM_ACCOUNT:I

    .line 84
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->MSG_PICK_TO_ACCOUNT:I

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->MSG_START_MOVING:I

    .line 86
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->MSG_UPDATE_PROGRESS_MESSAGE:I

    .line 87
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->MSG_MOVING_DONE:I

    .line 91
    iput v1, p0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountIndex:I

    .line 92
    iput v1, p0, Lcom/android/htccontacts/MoveContactsActivity;->mToAccountIndex:I

    .line 94
    new-instance v0, Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;

    invoke-direct {v0, p0, v2}, Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;-><init>(Lcom/android/htccontacts/MoveContactsActivity;Lcom/android/htccontacts/MoveContactsActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;

    .line 95
    new-instance v0, Lcom/android/htccontacts/MoveContactsActivity$SearchKeyListener;

    invoke-direct {v0, p0, v2}, Lcom/android/htccontacts/MoveContactsActivity$SearchKeyListener;-><init>(Lcom/android/htccontacts/MoveContactsActivity;Lcom/android/htccontacts/MoveContactsActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->mSearchKeyListener:Lcom/android/htccontacts/MoveContactsActivity$SearchKeyListener;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->mCacheMessage:Ljava/util/HashMap;

    .line 162
    new-instance v0, Lcom/android/htccontacts/MoveContactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/MoveContactsActivity$1;-><init>(Lcom/android/htccontacts/MoveContactsActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->mHandler:Landroid/os/Handler;

    .line 728
    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/MoveContactsActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/MoveContactsActivity;->getAccountTypeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/MoveContactsActivity;JJIJLandroid/content/ContentResolver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p8}, Lcom/android/htccontacts/MoveContactsActivity;->setAggregationException(JJIJLandroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->mActualMovingThread:Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/htccontacts/MoveContactsActivity;Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;)Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/htccontacts/MoveContactsActivity;->mActualMovingThread:Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/htccontacts/MoveContactsActivity;Z)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/htccontacts/MoveContactsActivity;->pickAccountTypeAndName(Z)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/MoveContactsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/htccontacts/MoveContactsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/MoveContactsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->mToAccountIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/htccontacts/MoveContactsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/htccontacts/MoveContactsActivity;->mToAccountIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/htccontacts/MoveContactsActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/htccontacts/MoveContactsActivity;->getMovingMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/MoveContactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/htccontacts/MoveContactsActivity;->showMoveContactFinishDialog()V

    return-void
.end method

.method private getAccountTypeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "acc_type"
    .parameter "dataSet"

    .prologue
    const v3, 0x7f0a00f8

    .line 276
    const/4 v0, 0x0

    .line 278
    .local v0, rtn:Ljava/lang/String;
    const-string v2, "com.htc.android.pcsc"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    const v2, 0x7f0a0029

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/MoveContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 303
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v1

    .line 304
    .local v1, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .end local v1           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_1
    if-nez v0, :cond_b

    .line 312
    .end local p1
    :goto_1
    return-object p1

    .line 280
    .restart local p1
    :cond_2
    const-string v2, "com.htc.android.myphonebook"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    const v2, 0x7f0a00ff

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/MoveContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_3
    const-string v2, "com.htc.android.mail.eas"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 283
    const v2, 0x7f0a00fe

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/MoveContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_4
    const-string v2, "com.google"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v1

    .line 286
    .restart local v1       #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    goto :goto_0

    .end local v1           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_5
    const-string v2, "com.htc.socialnetwork.facebook"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 289
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/MoveContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_6
    const-string v2, "com.facebook.auth.login"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/MoveContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_7
    const-string v2, "com.htc.socialnetwork.flickr"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 293
    const v2, 0x7f0a00f9

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/MoveContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 294
    :cond_8
    const-string v2, "com.htc.socialnetwork.plurk"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 295
    const v2, 0x7f0a00fc

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/MoveContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 296
    :cond_9
    const-string v2, "com.htc.htctwitter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 297
    const v2, 0x7f0a00fa

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/MoveContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 298
    :cond_a
    const-string v2, "com.skype.contacts.sync"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    const v2, 0x7f0a00fb

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/MoveContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    move-object p1, v0

    .line 312
    goto/16 :goto_1
.end method

.method private getMovingContactDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 671
    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v2, :cond_0

    .line 672
    const v2, 0x7f0a03df

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/MoveContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 673
    .local v1, title:Ljava/lang/String;
    const v2, 0x7f0a03e0

    invoke-direct {p0, v2}, Lcom/android/htccontacts/MoveContactsActivity;->getMovingMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, message:Ljava/lang/String;
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 675
    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v0}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 678
    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v3, 0x7f0a03e1

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/MoveContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 679
    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v3, p0, Lcom/android/htccontacts/MoveContactsActivity;->mActualMovingThread:Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 681
    iget-object v3, p0, Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget v2, v2, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->mCount:I

    invoke-virtual {v3, v2}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 682
    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v3, p0, Lcom/android/htccontacts/MoveContactsActivity;->mActualMovingThread:Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 683
    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v3, p0, Lcom/android/htccontacts/MoveContactsActivity;->mSearchKeyListener:Lcom/android/htccontacts/MoveContactsActivity$SearchKeyListener;

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 684
    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v5}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 685
    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v5}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 687
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v2
.end method

.method private getMovingMessage(I)Ljava/lang/String;
    .locals 8
    .parameter "resId"

    .prologue
    .line 703
    iget-object v5, p0, Lcom/android/htccontacts/MoveContactsActivity;->mCacheMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 704
    iget-object v5, p0, Lcom/android/htccontacts/MoveContactsActivity;->mCacheMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 725
    :goto_0
    return-object v5

    .line 707
    :cond_0
    iget-object v5, p0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v0, v5, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->type:Ljava/lang/String;

    .line 708
    .local v0, accountType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v1, v5, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->dataSet:Ljava/lang/String;

    .line 709
    .local v1, dataSet:Ljava/lang/String;
    const-string v5, "com.htc.android.pcsc"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 710
    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/MoveContactsActivity;->getAccountTypeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, fromAccount:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/htccontacts/MoveContactsActivity;->mToAccountIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v0, v5, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->type:Ljava/lang/String;

    .line 716
    iget-object v5, p0, Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/htccontacts/MoveContactsActivity;->mToAccountIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v1, v5, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->dataSet:Ljava/lang/String;

    .line 717
    const-string v5, "com.htc.android.pcsc"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 718
    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/MoveContactsActivity;->getAccountTypeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 723
    .local v4, toAccount:Ljava/lang/String;
    :goto_2
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {p0, p1, v5}, Lcom/android/htccontacts/MoveContactsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 724
    .local v3, message:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htccontacts/MoveContactsActivity;->mCacheMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 725
    goto :goto_0

    .line 712
    .end local v2           #fromAccount:Ljava/lang/String;
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #toAccount:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/MoveContactsActivity;->getAccountTypeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountIndex:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v5, v5, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #fromAccount:Ljava/lang/String;
    goto :goto_1

    .line 720
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/MoveContactsActivity;->getAccountTypeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/htccontacts/MoveContactsActivity;->mToAccountIndex:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v5, v5, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #toAccount:Ljava/lang/String;
    goto :goto_2
.end method

.method private pickAccountTypeAndName(Z)Lcom/htc/widget/HtcAlertDialog;
    .locals 7
    .parameter "isPickFromAccount"

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 419
    .local v1, adbName:Lcom/htc/widget/HtcAlertDialog;
    new-instance v2, Lcom/android/htccontacts/MoveContactsActivity$PickAccountListener;

    invoke-direct {v2, p0, p1}, Lcom/android/htccontacts/MoveContactsActivity$PickAccountListener;-><init>(Lcom/android/htccontacts/MoveContactsActivity;Z)V

    .line 421
    .local v2, clPickName:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;-><init>(Lcom/android/htccontacts/MoveContactsActivity;Landroid/content/Context;Z)V

    .line 424
    .local v0, adapter:Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;
    if-eqz p1, :cond_0

    .line 425
    const v3, 0x7f0a03dc

    .line 430
    .local v3, titleRes:I
    :goto_0
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0191

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/MoveContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/htccontacts/MoveContactsActivity$4;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/MoveContactsActivity$4;-><init>(Lcom/android/htccontacts/MoveContactsActivity;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 436
    return-object v1

    .line 427
    .end local v3           #titleRes:I
    :cond_0
    const v3, 0x7f0a03dd

    .restart local v3       #titleRes:I
    goto :goto_0
.end method

.method private setAggregationException(JJIJLandroid/content/ContentResolver;)V
    .locals 11
    .parameter "pid"
    .parameter "cid"
    .parameter "exceptionType"
    .parameter "method_id"
    .parameter "contentResolver"

    .prologue
    .line 781
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v4, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v7, "aggregation_exceptions_manual"

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-wide/from16 v0, p6

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 783
    .local v5, updateUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 785
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "type"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 786
    const-string v6, "raw_contact_id1"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 787
    const-string v6, "raw_contact_id2"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 788
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    :try_start_0
    const-string v6, "com.android.contacts"

    move-object/from16 v0, p8

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 800
    const-string v6, "MoveContactsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--------link suggestion raw pair: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :goto_0
    return-void

    .line 792
    :catch_0
    move-exception v3

    .line 793
    .local v3, e:Landroid/os/RemoteException;
    const-string v6, "MoveContactsActivity"

    const-string v7, "%s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 795
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 796
    .local v3, e:Landroid/content/OperationApplicationException;
    const-string v6, "MoveContactsActivity"

    const-string v7, "%s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showMoveContactFinishDialog()V
    .locals 4

    .prologue
    .line 764
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 765
    .local v0, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0a03e4

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a03db

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 768
    const v2, 0x7f0a00eb

    new-instance v3, Lcom/android/htccontacts/MoveContactsActivity$5;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/MoveContactsActivity$5;-><init>(Lcom/android/htccontacts/MoveContactsActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 773
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 774
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 775
    .local v1, d:Lcom/htc/widget/HtcAlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 777
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 778
    return-void
.end method


# virtual methods
.method displayDialogOnlyOneContactType()V
    .locals 5

    .prologue
    .line 259
    new-instance v1, Lcom/android/htccontacts/MoveContactsActivity$2;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/MoveContactsActivity$2;-><init>(Lcom/android/htccontacts/MoveContactsActivity;)V

    .line 264
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/htccontacts/MoveContactsActivity$3;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/MoveContactsActivity$3;-><init>(Lcom/android/htccontacts/MoveContactsActivity;)V

    .line 269
    .local v2, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a03db

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0160

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/MoveContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a03de

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 271
    .local v0, alertDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 272
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 273
    return-void
.end method

.method public getMovingConfirmationDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 692
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a03e2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a03e3

    invoke-direct {p0, v1}, Lcom/android/htccontacts/MoveContactsActivity;->getMovingMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/htccontacts/MoveContactsActivity$MovingfirmationListener;

    invoke-virtual {p0}, Lcom/android/htccontacts/MoveContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/htccontacts/MoveContactsActivity$MovingfirmationListener;-><init>(Lcom/android/htccontacts/MoveContactsActivity;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mCancelListener:Lcom/android/htccontacts/MoveContactsActivity$CancelListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/MoveContactsActivity;->mCancelListener:Lcom/android/htccontacts/MoveContactsActivity$CancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 190
    const-string v0, "MoveContactsActivity"

    const-string v1, "onCancel is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/android/htccontacts/MoveContactsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/htccontacts/MoveContactsActivity;->finish()V

    .line 195
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "icicle"

    .prologue
    .line 205
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    const-string v2, "MoveContactsActivity"

    const-string v4, "onCreate..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v2, Lcom/android/htccontacts/MoveContactsActivity$CancelListener;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/htccontacts/MoveContactsActivity$CancelListener;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity;->mCancelListener:Lcom/android/htccontacts/MoveContactsActivity$CancelListener;

    .line 210
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v21

    .line 211
    .local v21, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsWithoutSim(Z)Ljava/util/ArrayList;

    move-result-object v17

    .line 213
    .local v17, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;

    .line 216
    const-string v2, "content://com.android.contacts/rawcontact/counts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 217
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/MoveContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 218
    .local v18, cursor:Landroid/database/Cursor;
    if-eqz v18, :cond_2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    :cond_0
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_1

    .line 221
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 222
    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 224
    .local v9, count:I
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 225
    .local v16, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;-><init>(Lcom/android/htccontacts/MoveContactsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;-><init>(Lcom/android/htccontacts/MoveContactsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 231
    .end local v9           #count:I
    .end local v16           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    .end local v19           #i:I
    :cond_2
    if-eqz v18, :cond_3

    .line 235
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 239
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_5

    .line 240
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 241
    .restart local v16       #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    move-object/from16 v0, v16

    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v13, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;-><init>(Lcom/android/htccontacts/MoveContactsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    move-object/from16 v0, v16

    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v13, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;-><init>(Lcom/android/htccontacts/MoveContactsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 220
    .end local v16           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 246
    .end local v19           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 247
    .local v20, size:I
    const/4 v2, 0x1

    move/from16 v0, v20

    if-le v0, v2, :cond_7

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/MoveContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 256
    :cond_6
    :goto_2
    return-void

    .line 252
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_6

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/MoveContactsActivity;->displayDialogOnlyOneContactType()V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, rtn:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    move-object v1, v0

    .line 760
    .end local v0           #rtn:Landroid/app/Dialog;
    .local v1, rtn:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 749
    .end local v1           #rtn:Landroid/app/Dialog;
    .restart local v0       #rtn:Landroid/app/Dialog;
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/htccontacts/MoveContactsActivity;->getMovingConfirmationDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 750
    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mSearchKeyListener:Lcom/android/htccontacts/MoveContactsActivity$SearchKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v1, v0

    .line 751
    .end local v0           #rtn:Landroid/app/Dialog;
    .restart local v1       #rtn:Landroid/app/Dialog;
    goto :goto_0

    .line 755
    .end local v1           #rtn:Landroid/app/Dialog;
    .restart local v0       #rtn:Landroid/app/Dialog;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/htccontacts/MoveContactsActivity;->getMovingContactDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 756
    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity;->mSearchKeyListener:Lcom/android/htccontacts/MoveContactsActivity$SearchKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v1, v0

    .line 757
    .end local v0           #rtn:Landroid/app/Dialog;
    .restart local v1       #rtn:Landroid/app/Dialog;
    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x7f070010
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 200
    const-string v0, "MoveContactsActivity"

    const-string v1, "onDestroy..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method
