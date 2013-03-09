.class public Lcom/android/updater/ui/AcuConfirmActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "AcuConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;
    }
.end annotation


# static fields
.field private static final ACU_VAR_ANY:Ljava/lang/String; = "any"

.field private static final ACU_VAR_WIFI:Ljava/lang/String; = "wifi"

.field private static final LOCAL_LOG:Z = false

.field private static final OPTIONS_NOT_ALLOW_3G_ID:[I = null

.field private static final OPTIONS_RES_ID:[I = null

.field private static final OPTION_DOWNLOAD_NOW:I = 0x1

.field private static final OPTION_DOWNLOAD_VIA_WIFI:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | AcuConfirmActivity"


# instance fields
.field private mCurrentPosition:I

.field mIntent:Landroid/content/Intent;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    const/4 v0, 0x2

    new-array v1, v0, [I

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x91

    if-ne v0, v2, :cond_0

    const v0, 0x7f060022

    :goto_0
    aput v0, v1, v3

    const/4 v0, 0x1

    const v2, 0x7f060023

    aput v2, v1, v0

    sput-object v1, Lcom/android/updater/ui/AcuConfirmActivity;->OPTIONS_RES_ID:[I

    .line 46
    new-array v0, v3, [I

    sput-object v0, Lcom/android/updater/ui/AcuConfirmActivity;->OPTIONS_NOT_ALLOW_3G_ID:[I

    return-void

    .line 41
    :cond_0
    const v0, 0x7f060021

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mListView:Landroid/widget/ListView;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mCurrentPosition:I

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/ui/AcuConfirmActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/updater/ui/AcuConfirmActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/updater/ui/AcuConfirmActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/updater/ui/AcuConfirmActivity;Landroid/content/Intent;Ljava/lang/Boolean;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/updater/ui/AcuConfirmActivity;->setDownloadRestriction(Landroid/content/Intent;Ljava/lang/Boolean;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createItems()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 58
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNotAllow3G()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Lcom/android/updater/ui/AcuConfirmActivity;->OPTIONS_NOT_ALLOW_3G_ID:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 60
    .local v1, itemsList:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/updater/ui/AcuConfirmActivity;->OPTIONS_NOT_ALLOW_3G_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 61
    sget-object v2, Lcom/android/updater/ui/AcuConfirmActivity;->OPTIONS_NOT_ALLOW_3G_ID:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/AcuConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v0           #i:I
    .end local v1           #itemsList:[Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNoIPTFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    sget-object v2, Lcom/android/updater/ui/AcuConfirmActivity;->OPTIONS_RES_ID:[I

    const/4 v3, 0x1

    const v4, 0x7f060083

    aput v4, v2, v3

    .line 70
    :cond_1
    sget-object v2, Lcom/android/updater/ui/AcuConfirmActivity;->OPTIONS_RES_ID:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 71
    .restart local v1       #itemsList:[Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    sget-object v2, Lcom/android/updater/ui/AcuConfirmActivity;->OPTIONS_RES_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 72
    sget-object v2, Lcom/android/updater/ui/AcuConfirmActivity;->OPTIONS_RES_ID:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/AcuConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_2
    return-object v1
.end method

.method private setDownloadRestriction(Landroid/content/Intent;Ljava/lang/Boolean;)Landroid/content/Intent;
    .locals 7
    .parameter "intent"
    .parameter "btnOk"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    iget v3, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mCurrentPosition:I

    if-ne v3, v5, :cond_1

    .line 282
    const-string v3, "downloadRestriction"

    const-string v4, "wifi"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 285
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "alert_type"

    const/16 v4, 0x1a

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    invoke-static {v0, v6, v1}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 296
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    const-string v3, "wifiOnly"

    iget v4, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mCurrentPosition:I

    if-ne v4, v5, :cond_2

    :goto_1
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    return-object p1

    .line 289
    :cond_1
    const-string v3, "downloadRestriction"

    const-string v4, "any"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 292
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v3, "alert_type"

    const/16 v4, 0x19

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    invoke-static {v0, v6, v2}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    goto :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_2
    move v1, v2

    .line 296
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 239
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 241
    new-instance v3, Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;

    invoke-virtual {p0}, Lcom/android/updater/ui/AcuConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;-><init>(Lcom/android/updater/ui/AcuConfirmActivity;Landroid/content/Intent;)V

    .line 242
    .local v3, positiveThread:Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;
    invoke-virtual {v3}, Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;->start()V

    .line 278
    .end local v3           #positiveThread:Lcom/android/updater/ui/AcuConfirmActivity$PositiveThread;
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const/4 v4, -0x3

    if-ne p2, v4, :cond_2

    .line 245
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v2, detailIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 247
    const-class v4, Lcom/android/updater/ui/AcuDetailActivity;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 248
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/updater/ui/AcuConfirmActivity;->setDownloadRestriction(Landroid/content/Intent;Ljava/lang/Boolean;)Landroid/content/Intent;

    move-result-object v2

    .line 249
    invoke-virtual {p0, v2}, Lcom/android/updater/ui/AcuConfirmActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    .end local v2           #detailIntent:Landroid/content/Intent;
    :cond_2
    const/4 v4, -0x2

    if-ne p2, v4, :cond_0

    .line 255
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->getTriggerFromIndividualFlag(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.server.checkin.APP_RUNCANCEL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, cancelIntent:Landroid/content/Intent;
    const-string v4, "package_name"

    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->getIndividualPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v1}, Lcom/android/updater/ui/AcuConfirmActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    const-string v4, ""

    invoke-static {p0, v6, v4}, Lcom/android/updater/util/UpdaterUtil;->setTriggerFromIndividualFlag(Landroid/content/Context;ZLjava/lang/String;)V

    .line 272
    .end local v1           #cancelIntent:Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, alertIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 274
    const-string v4, "alert_type"

    const/16 v5, 0x18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/android/updater/ui/AcuConfirmActivity;->setDownloadRestriction(Landroid/content/Intent;Ljava/lang/Boolean;)Landroid/content/Intent;

    move-result-object v0

    .line 276
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/AcuConfirmActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 81
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "downloadRestriction"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, downloadRestriction:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 86
    const/4 v3, 0x0

    .line 88
    .local v3, wifiOnly:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "wifiOnly"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 95
    :goto_0
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isO2DE()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    const/4 v3, 0x1

    .line 100
    :cond_0
    if-eqz v3, :cond_2

    .line 101
    iput v8, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mCurrentPosition:I

    .line 112
    .end local v3           #wifiOnly:Z
    :goto_1
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNotAllow3G()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    iput v8, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mCurrentPosition:I

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 117
    .local v2, params:Lcom/htc/app/HtcAlertController$AlertParams;
    const v4, 0x7f060059

    invoke-virtual {p0, v4}, Lcom/android/updater/ui/AcuConfirmActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f02

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 119
    const v4, 0x7f060024

    invoke-virtual {p0, v4}, Lcom/android/updater/ui/AcuConfirmActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 120
    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    const v4, 0x7f06005c

    invoke-virtual {p0, v4}, Lcom/android/updater/ui/AcuConfirmActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 122
    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {p0, v4, v9}, Lcom/android/updater/util/UpdaterUtil;->getNegativeButtonText(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 129
    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 130
    iput-boolean v7, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 131
    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;

    .line 132
    invoke-direct {p0}, Lcom/android/updater/ui/AcuConfirmActivity;->createItems()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 133
    iget v4, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mCurrentPosition:I

    iput v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 135
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuConfirmActivity;->setupAlert()V

    .line 137
    iget-object v4, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v4}, Lcom/htc/app/HtcAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mListView:Landroid/widget/ListView;

    .line 139
    iget-object v4, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/updater/ui/AcuConfirmActivity$1;

    invoke-direct {v5, p0}, Lcom/android/updater/ui/AcuConfirmActivity$1;-><init>(Lcom/android/updater/ui/AcuConfirmActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    iget-object v4, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 151
    return-void

    .line 89
    .end local v2           #params:Lcom/htc/app/HtcAlertController$AlertParams;
    .restart local v3       #wifiOnly:Z
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "UpdaterAPK | AcuConfirmActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t get wifi only extra"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/16 v5, 0x13

    invoke-static {v4, v5, v9}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v3

    goto/16 :goto_0

    .line 103
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    iput v7, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mCurrentPosition:I

    goto/16 :goto_1

    .line 106
    .end local v3           #wifiOnly:Z
    :cond_3
    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    iput v8, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mCurrentPosition:I

    goto/16 :goto_1

    .line 109
    :cond_4
    iput v7, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mCurrentPosition:I

    goto/16 :goto_1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/updater/ui/AcuConfirmActivity;->setIntent(Landroid/content/Intent;)V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, apkDetailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mIntent:Landroid/content/Intent;

    const-string v6, "apkDetailList"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 179
    const-string v1, ""

    .line 181
    .local v1, apk_list:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    .local v2, appUpdateInfo:Ljava/lang/String;
    const/4 v4, 0x0

    .line 183
    .local v4, tempString:[Ljava/lang/String;
    const-string v5, "@~"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    goto :goto_0

    .line 188
    .end local v2           #appUpdateInfo:Ljava/lang/String;
    .end local v4           #tempString:[Ljava/lang/String;
    :cond_0
    const v5, 0x7f08000c

    invoke-virtual {p0, v5}, Lcom/android/updater/ui/AcuConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuConfirmActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030002

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 156
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 157
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStart()V

    .line 163
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mIntent:Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/android/updater/ui/AcuConfirmActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/updater/ui/AcuConfirmActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuConfirmActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :cond_0
    return-void
.end method
