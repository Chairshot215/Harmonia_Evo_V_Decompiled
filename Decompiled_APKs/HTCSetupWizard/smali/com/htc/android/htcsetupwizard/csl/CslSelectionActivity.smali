.class public Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;
.super Landroid/app/ListActivity;
.source "CslSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;
    }
.end annotation


# static fields
.field private static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field private static final BROADCAST_INTENT_ACTION_CSL:Ljava/lang/String; = "com.htc.action.CSL"

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final CSLPROFILE_1:Ljava/lang/String; = "45400_1"

.field private static final CSLPROFILE_2:Ljava/lang/String; = "45400_2"

.field private static final CSLPROFILE_3:Ljava/lang/String; = "45400_3"

.field private static final CSLPROFILE_4:Ljava/lang/String; = "45400_4"

.field private static final CSLPROFILE_5:Ljava/lang/String; = "45400_5"

.field private static final CSLPROFILE_DISPLAY_NAME_1:I = 0x7f0a011d

.field private static final CSLPROFILE_DISPLAY_NAME_2:I = 0x7f0a011e

.field private static final CSLPROFILE_DISPLAY_NAME_3:I = 0x7f0a011f

.field private static final CSLPROFILE_DISPLAY_NAME_4:I = 0x7f0a0120

.field private static final CSLPROFILE_DISPLAY_NAME_5:I = 0x7f0a0121

.field private static final ID_INDEX:I = 0x0

.field private static final INSERT_BY_INDEX:I = 0x4

.field private static final INTENT_STRING_PROGRESS_BAR_DOT_INTERSPACE:Ljava/lang/String; = "ProgressBarDotInterspace"

.field private static final INTENT_STRING_PROGRESS_BAR_DOT_MAX_NUMBER:Ljava/lang/String; = "ProgressBarDotMaxNumber"

.field private static final INTENT_STRING_PROGRESS_BAR_MAX_NUMBER:Ljava/lang/String; = "ProgressBarMaxNumber"

.field private static final INTENT_STRING_PROGRESS_BAR_NUMBER:Ljava/lang/String; = "ProgressBarNumber"

.field private static final NAME_INDEX:I = 0x1

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field private static final PROFILE_DB_NAME_1:Ljava/lang/String; = "1O1O"

.field private static final PROFILE_DB_NAME_2:Ljava/lang/String; = "one2free"

.field private static final PROFILE_DB_NAME_3:Ljava/lang/String; = "New World Mobility"

.field private static final SELECTED_CSL_PROFILE:Ljava/lang/String; = "SelectedCslProfile"

.field private static final TAG:Ljava/lang/String; = "OOBE_CslSelectionActivity"

.field private static final TYPES_INDEX:I = 0x3


# instance fields
.field private isReceiverRegistered:Z

.field private mAdapter:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialPosition:I

.field private mLaunchByIcon:Z

.field private mLoadingProgressDialog:Landroid/app/ProgressDialog;

.field private mOperator:Ljava/lang/String;

.field private mProfileDisplayNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileItemNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfilePathNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressBarDotInterspace:I

.field private mProgressBarDotMaxNumber:I

.field private mProgressBarMaxNumber:I

.field private mProgressBarNumber:I

.field private mProgressImage:Landroid/widget/ImageView;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedDbName:Ljava/lang/String;

.field private mSelectedPath:Ljava/lang/String;

.field private mSelectedPosition:I

.field private mbBackFinish:Z

.field private mbPressNextBtn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 72
    iput v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProgressBarNumber:I

    .line 73
    iput v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProgressBarMaxNumber:I

    .line 74
    iput v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProgressBarDotMaxNumber:I

    .line 75
    iput v2, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProgressBarDotInterspace:I

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mbBackFinish:Z

    .line 79
    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLaunchByIcon:Z

    .line 80
    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->isReceiverRegistered:Z

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPath:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedDbName:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileDisplayNames:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfilePathNames:Ljava/util/ArrayList;

    .line 87
    iput v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPosition:I

    .line 88
    iput v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mInitialPosition:I

    .line 89
    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mbPressNextBtn:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mOperator:Ljava/lang/String;

    .line 373
    new-instance v0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfilePathNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedDbName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mOperator:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->handleCustomizationFinish()V

    return-void
.end method

.method private getLoadingProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 403
    const-string v0, "OOBE_CslSelectionActivity"

    const-string v1, "get loading progress dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    .line 406
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0a011b

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 409
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 410
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getResultIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 326
    const-string v1, "OOBE_CslSelectionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DbName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedDbName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Operator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedDbName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->setSelectedApnKey(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SelectedCslProfile"

    iget v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPosition:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mvno_operator"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mOperator:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 332
    .local v0, resultIntent:Landroid/content/Intent;
    const-string v1, "MnsProfilePath"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v1, "LaunchByIcon"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    return-object v0
.end method

.method private handleCustomizationFinish()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->setResult(I)V

    .line 391
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->finish()V

    .line 392
    return-void
.end method

.method private initialize()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 169
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 170
    :cond_0
    const-string v0, "OOBE_CslSelectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProfileItemNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->setContentView(I)V

    .line 175
    new-instance v0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;

    const v3, 0x7f030008

    const v4, 0x7f0d0013

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileDisplayNames:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;-><init>(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mAdapter:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;

    .line 177
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mAdapter:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SelectedCslProfile"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mInitialPosition:I

    .line 180
    iget v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mInitialPosition:I

    if-eq v0, v8, :cond_3

    iget v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mInitialPosition:I

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 181
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mAdapter:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;

    iget v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mInitialPosition:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->setSelect(I)V

    .line 187
    :goto_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->isProgressBarShowable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    const v0, 0x7f0d003f

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 189
    .local v7, layout:Landroid/widget/LinearLayout;
    const/16 v0, 0x12d

    invoke-static {p0, v7, v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 195
    .end local v7           #layout:Landroid/widget/LinearLayout;
    :goto_2
    const v0, 0x7f0d0009

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 196
    .local v6, btnNext:Landroid/widget/Button;
    if-eqz v6, :cond_1

    .line 197
    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 184
    .end local v6           #btnNext:Landroid/widget/Button;
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mAdapter:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->setSelect(I)V

    goto :goto_1

    .line 191
    :cond_4
    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 192
    .local v7, layout:Landroid/view/View;
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private isProgressBarShowable()Z
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProgressBarNumber:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProgressBarMaxNumber:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProgressBarDotMaxNumber:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseProfile()V
    .locals 5

    .prologue
    .line 138
    const-string v1, "/system/customize/csl_mns_map.xml"

    .line 139
    .local v1, mnsMapPath:Ljava/lang/String;
    new-instance v2, Lcom/htc/android/htcsetupwizard/csl/ParseMap;

    invoke-direct {v2, v1}, Lcom/htc/android/htcsetupwizard/csl/ParseMap;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, parseMap:Lcom/htc/android/htcsetupwizard/csl/ParseMap;
    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->getProfileDisplayName()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/csl/ParseMap;->getProfilePathName()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfilePathNames:Ljava/util/ArrayList;

    .line 143
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 145
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "45400_1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileDisplayNames:Ljava/util/ArrayList;

    const v4, 0x7f0a011d

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "45400_2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileDisplayNames:Ljava/util/ArrayList;

    const v4, 0x7f0a011e

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "45400_3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileDisplayNames:Ljava/util/ArrayList;

    const v4, 0x7f0a011f

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "45400_4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 152
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileDisplayNames:Ljava/util/ArrayList;

    const v4, 0x7f0a0120

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    :cond_4
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "45400_5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileDisplayNames:Ljava/util/ArrayList;

    const v4, 0x7f0a0121

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    .end local v0           #i:I
    :cond_5
    const-string v3, "OOBE_CslSelectionActivity"

    const-string v4, "No CSL profile"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->finish()V

    .line 165
    :cond_6
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 395
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->isReceiverRegistered:Z

    .line 396
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 397
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v1, "com.htc.action.CSL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 400
    return-void
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 14
    .parameter "selectedDbName"

    .prologue
    .line 338
    const/4 v6, 0x0

    .line 339
    .local v6, selectedKey:Ljava/lang/String;
    const/4 v9, 0x0

    .line 340
    .local v9, where:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "numeric = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "gsm.sim.operator.numeric"

    const-string v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' AND apn <> \'\' AND name <> \'\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 343
    sget-object v10, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "_id"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "name"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "apn"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "type"

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "insert_by"

    aput-object v13, v11, v12

    const-string v12, "name ASC"

    invoke-virtual {p0, v10, v11, v9, v12}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 347
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 348
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_0

    .line 349
    const/4 v10, 0x1

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, name:Ljava/lang/String;
    const/4 v10, 0x2

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, apn:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, key:Ljava/lang/String;
    const/4 v10, 0x3

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 353
    .local v7, type:Ljava/lang/String;
    const/4 v10, 0x4

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, insertBy:Ljava/lang/String;
    const-string v10, "OOBE_CslSelectionActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "key = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", apn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", insertBy + "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 357
    move-object v6, v3

    .line 362
    .end local v0           #apn:Ljava/lang/String;
    .end local v2           #insertBy:Ljava/lang/String;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 364
    const-string v10, "OOBE_CslSelectionActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "selectedKey = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz v6, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 367
    .local v5, resolver:Landroid/content/ContentResolver;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 368
    .local v8, values:Landroid/content/ContentValues;
    const-string v10, "apn_id"

    invoke-virtual {v8, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    sget-object v10, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v10, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 371
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_1
    return-void

    .line 360
    .restart local v0       #apn:Ljava/lang/String;
    .restart local v2       #insertBy:Ljava/lang/String;
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v7       #type:Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    .line 294
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, -0x1

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 299
    :pswitch_0
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLaunchByIcon:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mInitialPosition:I

    if-eq v1, v2, :cond_1

    .line 300
    iget v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPosition:I

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getLoadingProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 302
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v0

    .line 303
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.CustomizationSetup"

    const-string v2, "com.htc.CustomizationSetup.SetupService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 305
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mbPressNextBtn:Z

    goto :goto_0

    .line 308
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 309
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->finish()V

    goto :goto_0

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 314
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->finish()V

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x7f0d0009
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mbPressNextBtn:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    const-string v0, "OOBE_CslSelectionActivity"

    const-string v1, "prepare to finish ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->setResult(I)V

    .line 127
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->finish()V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->initialize()V

    .line 133
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 100
    const-string v1, "OOBE_CslSelectionActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 104
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 106
    const-string v1, "LaunchByIcon"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLaunchByIcon:Z

    .line 107
    const-string v1, "OOBE_CslSelectionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLaunchByIcon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLaunchByIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mbBackFinish = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mbBackFinish:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v1, "ProgressBarNumber"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProgressBarNumber:I

    .line 111
    const-string v1, "ProgressBarMaxNumber"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProgressBarMaxNumber:I

    .line 112
    const-string v1, "ProgressBarDotMaxNumber"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProgressBarDotMaxNumber:I

    .line 113
    const-string v1, "ProgressBarDotInterspace"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProgressBarDotInterspace:I

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->parseProfile()V

    .line 117
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->initialize()V

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 286
    const-string v0, "OOBE_CslSelectionActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 289
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 421
    const-string v1, "OOBE_CslSelectionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sparse-switch p1, :sswitch_data_0

    .line 442
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 425
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mbBackFinish:Z

    if-nez v1, :cond_1

    .line 426
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->setResult(I)V

    .line 427
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 429
    :cond_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mLaunchByIcon:Z

    if-ne v1, v0, :cond_0

    .line 430
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->setResult(I)V

    .line 431
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 423
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 248
    const-string v1, "OOBE_CslSelectionActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", position = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mAdapter:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mAdapter:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;

    invoke-virtual {v0, p3}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->setSelect(I)V

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    .line 252
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 270
    const-string v0, "OOBE_CslSelectionActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->isReceiverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->isReceiverRegistered:Z

    .line 273
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 257
    const-string v0, "OOBE_CslSelectionActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->registerReceiver()V

    .line 259
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 265
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 281
    return-void
.end method
