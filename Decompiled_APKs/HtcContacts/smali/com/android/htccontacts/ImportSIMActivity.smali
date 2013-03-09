.class public Lcom/android/htccontacts/ImportSIMActivity;
.super Lcom/android/htccontacts/app/BaseActivity;
.source "ImportSIMActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;,
        Lcom/android/htccontacts/ImportSIMActivity$SearchDialogDismissListener;,
        Lcom/android/htccontacts/ImportSIMActivity$SearchKeyListener;
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String; = null

.field protected static final REQUEST_IMPORT_CONTACTS_FROM_SIM:I = 0xf000

.field private static final SAVE_TO_SIM_RESULT_CODE_EXISTED:I = 0x2

.field private static final SAVE_TO_SIM_RESULT_CODE_OK:I = 0x1

.field private static final SAVE_TO_SIM_RESULT_CODE_SIM_ERROR:I = 0x4

.field private static final SAVE_TO_SIM_RESULT_CODE_SIM_FULL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ImportSIMActivity"


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mImportSimText:Ljava/lang/String;

.field private mImportingThread:Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSearchDialogDissmissListener:Lcom/android/htccontacts/ImportSIMActivity$SearchDialogDismissListener;

.field private mSearchKeyListener:Lcom/android/htccontacts/ImportSIMActivity$SearchKeyListener;

.field private mSelectedId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedIsSND:[Z

.field private mSelectedRecordNumber:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/syncml/service/ISyncMLService;

.field private mStopImportSimText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/internal/telephony/IccContract$IccPhonebook;->COLUMN_NAMES:[Ljava/lang/String;

    sput-object v0, Lcom/android/htccontacts/ImportSIMActivity;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseActivity;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity;->mAccount:Landroid/accounts/Account;

    .line 48
    iput-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSelectedId:Ljava/util/ArrayList;

    .line 49
    iput-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSelectedIsSND:[Z

    .line 50
    iput-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSelectedRecordNumber:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Lcom/android/htccontacts/ImportSIMActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ImportSIMActivity$1;-><init>(Lcom/android/htccontacts/ImportSIMActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 161
    new-instance v0, Lcom/android/htccontacts/ImportSIMActivity$SearchDialogDismissListener;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ImportSIMActivity$SearchDialogDismissListener;-><init>(Lcom/android/htccontacts/ImportSIMActivity;Lcom/android/htccontacts/ImportSIMActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ImportSIMActivity$SearchDialogDismissListener;

    .line 163
    new-instance v0, Lcom/android/htccontacts/ImportSIMActivity$SearchKeyListener;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ImportSIMActivity$SearchKeyListener;-><init>(Lcom/android/htccontacts/ImportSIMActivity;Lcom/android/htccontacts/ImportSIMActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSearchKeyListener:Lcom/android/htccontacts/ImportSIMActivity$SearchKeyListener;

    .line 304
    return-void
.end method

.method static synthetic access$002(Lcom/android/htccontacts/ImportSIMActivity;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/htccontacts/ImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/ImportSIMActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/android/htccontacts/ImportSIMActivity;->saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/ImportSIMActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportSIMActivity;->getSaveToSimResultString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/ImportSIMActivity;)Landroid/app/SearchManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/htccontacts/ImportSIMActivity;->isSearchDialogActived()Landroid/app/SearchManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/ImportSIMActivity;)Lcom/android/htccontacts/ImportSIMActivity$SearchDialogDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSearchDialogDissmissListener:Lcom/android/htccontacts/ImportSIMActivity$SearchDialogDismissListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ImportSIMActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/htccontacts/ImportSIMActivity;->showSecondDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ImportSIMActivity;)Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mImportingThread:Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ImportSIMActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSelectedRecordNumber:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/htccontacts/ImportSIMActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSelectedRecordNumber:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ImportSIMActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSelectedId:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ImportSIMActivity;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSelectedIsSND:[Z

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/htccontacts/ImportSIMActivity;->COLUMN_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method private getSaveToSimResultString(I)Ljava/lang/String;
    .locals 3
    .parameter "saveToSimResultCode"

    .prologue
    .line 618
    const/4 v0, -0x1

    .line 619
    .local v0, resId:I
    packed-switch p1, :pswitch_data_0

    .line 631
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ImportSIMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, result:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 621
    .end local v1           #result:Ljava/lang/String;
    :pswitch_0
    const v0, 0x7f0a024e

    .line 622
    goto :goto_0

    .line 624
    :pswitch_1
    const v0, 0x7f0a024f

    .line 625
    goto :goto_0

    .line 627
    :pswitch_2
    const v0, 0x7f0a0250

    .line 628
    goto :goto_0

    .line 631
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 619
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleImportContactList(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportSIMActivity;->myPhonebookCancelSync()V

    .line 266
    iput-object p1, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSelectedId:Ljava/util/ArrayList;

    .line 268
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mImportingThread:Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v0, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;-><init>(Lcom/android/htccontacts/ImportSIMActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mImportingThread:Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;

    .line 274
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 275
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0a018f

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 276
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity;->mImportSimText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 278
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, -0x2

    const v2, 0x7f0a0191

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportSIMActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/ImportSIMActivity;->mImportingThread:Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/app/HtcProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 281
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSelectedId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 282
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSearchKeyListener:Lcom/android/htccontacts/ImportSIMActivity$SearchKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 283
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 287
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mImportingThread:Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->start()V

    goto :goto_0
.end method

.method private isSearchDialogActived()Landroid/app/SearchManager;
    .locals 4

    .prologue
    .line 292
    :try_start_0
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportSIMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 293
    .local v1, searchManager:Landroid/app/SearchManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SearchManager;->isVisible()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    .end local v1           #searchManager:Landroid/app/SearchManager;
    :goto_0
    return-object v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "ImportSIMActivity"

    const-string v3, "IllegalArgumentException when calling isSearchDialogActived()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 298
    :catch_1
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "ImportSIMActivity"

    const-string v3, "IllegalStateException when calling isSearchDialogActived()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private saveToSim(Ljava/lang/String;)I
    .locals 5
    .parameter "number"

    .prologue
    .line 598
    const/4 v0, 0x1

    .line 600
    .local v0, resultCode:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 601
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v3, "number1"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v3, "number2"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v3, "emails"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportSIMActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 608
    .local v1, resultUri:Landroid/net/Uri;
    sget-object v3, Landroid/provider/HtcUnionContact$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 609
    const/4 v0, 0x3

    .line 614
    :cond_0
    :goto_0
    return v0

    .line 610
    :cond_1
    sget-object v3, Landroid/provider/HtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "email"
    .parameter "name"

    .prologue
    .line 571
    const/4 v0, 0x1

    .line 572
    .local v0, resultCode:I
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    move-object p5, p1

    .line 578
    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 579
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 580
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v3, "number1"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v3, "number2"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v3, "emails"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportSIMActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 587
    .local v1, resultUri:Landroid/net/Uri;
    sget-object v3, Landroid/provider/HtcUnionContact$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 588
    const/4 v0, 0x3

    .line 594
    .end local v1           #resultUri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return v0

    .line 589
    .restart local v1       #resultUri:Landroid/net/Uri;
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_2
    sget-object v3, Landroid/provider/HtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 590
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportSIMActivity;->saveToSim(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private showSecondDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 115
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, progressDialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0a018f

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 117
    iget-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity;->mStopImportSimText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 119
    const/4 v1, -0x1

    const v2, 0x7f0a00eb

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ImportSIMActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/htccontacts/ImportSIMActivity$2;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/ImportSIMActivity$2;-><init>(Lcom/android/htccontacts/ImportSIMActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/app/HtcProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSelectedId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 133
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 134
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 135
    new-instance v1, Lcom/android/htccontacts/ImportSIMActivity$3;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ImportSIMActivity$3;-><init>(Lcom/android/htccontacts/ImportSIMActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 143
    new-instance v1, Lcom/android/htccontacts/ImportSIMActivity$4;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ImportSIMActivity$4;-><init>(Lcom/android/htccontacts/ImportSIMActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 149
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 150
    iget-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity;->mImportingThread:Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;

    iget v1, v1, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->doneCounts:I

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 151
    return-void
.end method


# virtual methods
.method protected myPhonebookCancelSync()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    invoke-interface {v0}, Lcom/android/syncml/service/ISyncMLService;->cancelSync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
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
    .line 246
    packed-switch p1, :pswitch_data_0

    .line 259
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 248
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 249
    if-eqz p3, :cond_0

    .line 250
    const-string v1, "SELECTED_ID"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 251
    .local v0, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "SELECTED_SIM_CONTACT_IS_SDN"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSelectedIsSND:[Z

    .line 252
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ImportSIMActivity;->handleImportContactList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 255
    .end local v0           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportSIMActivity;->finish()V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0xf000
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 185
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    if-eqz p1, :cond_0

    const-string v8, "skipLaunchPicker"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 187
    .local v5, isSkipLaunchPicker:Z
    :goto_0
    if-eqz v5, :cond_1

    .line 242
    :goto_1
    return-void

    .end local v5           #isSkipLaunchPicker:Z
    :cond_0
    move v5, v7

    .line 186
    goto :goto_0

    .line 191
    .restart local v5       #isSkipLaunchPicker:Z
    :cond_1
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 192
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/syncml/service/ISyncMLService;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/htccontacts/ImportSIMActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v8, v9, v11}, Lcom/android/htccontacts/ImportSIMActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v6

    .line 194
    .local v6, result:Z
    const-string v8, "ImportSIMActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bind ISyncMLService result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-nez v6, :cond_2

    .line 196
    iget-object v8, p0, Lcom/android/htccontacts/ImportSIMActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ImportSIMActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 197
    const-string v8, "ImportSIMActivity"

    const-string v9, "unbindService..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v6           #result:Z
    :cond_2
    const v8, 0x7f0a0190

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ImportSIMActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ImportSIMActivity;->mImportSimText:Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 205
    iget-object v8, p0, Lcom/android/htccontacts/ImportSIMActivity;->mImportSimText:Ljava/lang/String;

    const-string v9, "SIM"

    const-string v10, "UIM/SIM"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ImportSIMActivity;->mImportSimText:Ljava/lang/String;

    .line 210
    :cond_3
    :goto_2
    const v8, 0x7f0a038c

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ImportSIMActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ImportSIMActivity;->mStopImportSimText:Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 212
    iget-object v8, p0, Lcom/android/htccontacts/ImportSIMActivity;->mStopImportSimText:Ljava/lang/String;

    const-string v9, "SIM"

    const-string v10, "UIM/SIM"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ImportSIMActivity;->mStopImportSimText:Ljava/lang/String;

    .line 217
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportSIMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 218
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_8

    .line 219
    const-string v8, "account_name"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, accountName:Ljava/lang/String;
    const-string v8, "account_type"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 222
    new-instance v8, Landroid/accounts/Account;

    invoke-direct {v8, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/htccontacts/ImportSIMActivity;->mAccount:Landroid/accounts/Account;

    .line 226
    :cond_5
    const-string v8, "importSIMByIDList"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 227
    .local v3, importSIMByIDList:Z
    if-eqz v3, :cond_8

    .line 228
    const-string v7, "SELECTED_ID"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 229
    .local v2, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v7, "SELECTED_SIM_CONTACT_IS_SDN"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v7

    iput-object v7, p0, Lcom/android/htccontacts/ImportSIMActivity;->mSelectedIsSND:[Z

    .line 230
    invoke-direct {p0, v2}, Lcom/android/htccontacts/ImportSIMActivity;->handleImportContactList(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 206
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3           #importSIMByIDList:Z
    .end local v4           #intent:Landroid/content/Intent;
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 207
    iget-object v8, p0, Lcom/android/htccontacts/ImportSIMActivity;->mImportSimText:Ljava/lang/String;

    const-string v9, "SIM"

    const-string v10, "UIM"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ImportSIMActivity;->mImportSimText:Ljava/lang/String;

    goto :goto_2

    .line 213
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 214
    iget-object v8, p0, Lcom/android/htccontacts/ImportSIMActivity;->mStopImportSimText:Ljava/lang/String;

    const-string v9, "SIM"

    const-string v10, "UIM"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ImportSIMActivity;->mStopImportSimText:Ljava/lang/String;

    goto :goto_3

    .line 236
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_8
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v7, "com.android.htccontacts.ACTION_PICK_MULTIPLE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v7, "filter_account_mode"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    const-string v7, "REQUEST_OBTAIN_SIM_IS_SDN"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 240
    const v7, 0xf000

    invoke-virtual {p0, v4, v7}, Lcom/android/htccontacts/ImportSIMActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onDestroy()V

    .line 168
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ImportSIMActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity;->mService:Lcom/android/syncml/service/ISyncMLService;

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportSIMActivity;->cleanManagedDialog()V

    .line 173
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onResume()V

    .line 178
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/htccontacts/ImportSIMActivity;->myPhonebookCancelSync()V

    .line 181
    :cond_0
    return-void
.end method
