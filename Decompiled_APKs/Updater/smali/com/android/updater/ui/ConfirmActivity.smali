.class public Lcom/android/updater/ui/ConfirmActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "ConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/ui/ConfirmActivity$PositiveThread;
    }
.end annotation


# static fields
.field public static final BACKUP_ACTION:Ljava/lang/String; = "backup_action_string"

.field public static final BACKUP_URI:Ljava/lang/String; = "backup_uri_string"

.field public static final CANCEL_CONFIRM_ACTION:Ljava/lang/String; = "com.android.updater.FOTA_CANCEL_CONFIRM"

.field private static final LOCAL_LOG:Z = false

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field private static final OPTIONS_NOT_ALLOW_3G_ID:[I = null

.field private static final OPTIONS_RES_ID:[I = null

.field private static final OPTION_DOWNLOAD_NOW:I = 0x1

.field private static final OPTION_DOWNLOAD_VIA_WIFI:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | ConfirmActivity"

.field public static final VERIFY_PKG:Ljava/lang/String; = "com.android.updater.VERIFY_FOTA_PKG"

.field public static final WIFI_ONLY:Ljava/lang/String; = "wifiOnly"


# instance fields
.field private mCurrentPosition:I

.field private mIntent:Landroid/content/Intent;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
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

    sput-object v1, Lcom/android/updater/ui/ConfirmActivity;->OPTIONS_RES_ID:[I

    .line 54
    new-array v0, v3, [I

    sput-object v0, Lcom/android/updater/ui/ConfirmActivity;->OPTIONS_NOT_ALLOW_3G_ID:[I

    return-void

    .line 48
    :cond_0
    const v0, 0x7f060021

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/updater/ui/ConfirmActivity;->mListView:Landroid/widget/ListView;

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/updater/ui/ConfirmActivity;->mCurrentPosition:I

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/ui/ConfirmActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/updater/ui/ConfirmActivity;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/updater/ui/ConfirmActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/updater/ui/ConfirmActivity;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/updater/ui/ConfirmActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/updater/ui/ConfirmActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/updater/ui/ConfirmActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/updater/ui/ConfirmActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private createItems()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 64
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNotAllow3G()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->isBiggerThenThirty(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_0
    sget-object v2, Lcom/android/updater/ui/ConfirmActivity;->OPTIONS_NOT_ALLOW_3G_ID:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 67
    .local v1, itemsList:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/updater/ui/ConfirmActivity;->OPTIONS_NOT_ALLOW_3G_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 68
    sget-object v2, Lcom/android/updater/ui/ConfirmActivity;->OPTIONS_NOT_ALLOW_3G_ID:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/ConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0           #i:I
    .end local v1           #itemsList:[Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNoIPTFeature()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    sget-object v2, Lcom/android/updater/ui/ConfirmActivity;->OPTIONS_RES_ID:[I

    const/4 v3, 0x1

    const v4, 0x7f060083

    aput v4, v2, v3

    .line 79
    :cond_2
    sget-object v2, Lcom/android/updater/ui/ConfirmActivity;->OPTIONS_RES_ID:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 80
    .restart local v1       #itemsList:[Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    sget-object v2, Lcom/android/updater/ui/ConfirmActivity;->OPTIONS_RES_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 81
    sget-object v2, Lcom/android/updater/ui/ConfirmActivity;->OPTIONS_RES_ID:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/ConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_3
    return-object v1
.end method

.method private setupButtons(Z)V
    .locals 11
    .parameter "forceUpdate"

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/updater/ui/ConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 301
    .local v8, window:Landroid/view/Window;
    iget-object v9, p0, Lcom/android/updater/ui/ConfirmActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 302
    .local v1, buttonPositive:Landroid/widget/Button;
    const v9, 0x7f060024

    invoke-virtual {p0, v9}, Lcom/android/updater/ui/ConfirmActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v9, p0, Lcom/android/updater/ui/ConfirmActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v10, -0x2

    invoke-virtual {v9, v10}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 306
    .local v0, buttonNegative:Landroid/widget/Button;
    if-eqz p1, :cond_0

    .line 307
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    const v9, 0x20200b7

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 309
    .local v3, padding2:Landroid/view/View;
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 321
    :goto_0
    if-eqz p1, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/android/updater/ui/ConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/updater/ui/ConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/updater/util/UpdaterUtil;->getWeight(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)F

    move-result v7

    .line 325
    .local v7, weight:F
    const v9, 0x20200b1

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 326
    .local v2, leftSpacer:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 327
    .local v4, paramsL:Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 328
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 331
    const v9, 0x20200b8

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 332
    .local v6, rightSpacer:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 333
    .local v5, paramsR:Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 334
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .end local v4           #paramsL:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #paramsR:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #weight:F
    :goto_1
    return-void

    .line 313
    .end local v2           #leftSpacer:Landroid/view/View;
    .end local v3           #padding2:Landroid/view/View;
    .end local v6           #rightSpacer:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/updater/ui/ConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/updater/util/UpdaterUtil;->getNegativeButtonText(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 316
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 317
    const v9, 0x20200b7

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 318
    .restart local v3       #padding2:Landroid/view/View;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 338
    :cond_1
    const v9, 0x20200b1

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 339
    .restart local v2       #leftSpacer:Landroid/view/View;
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 341
    const v9, 0x20200b8

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 342
    .restart local v6       #rightSpacer:Landroid/view/View;
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 282
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 284
    new-instance v1, Lcom/android/updater/ui/ConfirmActivity$PositiveThread;

    invoke-virtual {p0}, Lcom/android/updater/ui/ConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/updater/ui/ConfirmActivity$PositiveThread;-><init>(Lcom/android/updater/ui/ConfirmActivity;Landroid/content/Intent;)V

    .line 285
    .local v1, positiveThread:Lcom/android/updater/ui/ConfirmActivity$PositiveThread;
    invoke-virtual {v1}, Lcom/android/updater/ui/ConfirmActivity$PositiveThread;->start()V

    .line 295
    .end local v1           #positiveThread:Lcom/android/updater/ui/ConfirmActivity$PositiveThread;
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, alertIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/updater/ui/ConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 291
    const-string v2, "alert_type"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string v3, "wifiOnly"

    iget v2, p0, Lcom/android/updater/ui/ConfirmActivity;->mCurrentPosition:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/ConfirmActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 292
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 91
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const/4 v2, 0x0

    .line 99
    .local v2, wifiOnly:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/updater/ui/ConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "wifiOnly"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 107
    :goto_0
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isO2DE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    const/4 v2, 0x1

    .line 112
    :cond_0
    if-eqz v2, :cond_3

    .line 113
    iput v7, p0, Lcom/android/updater/ui/ConfirmActivity;->mCurrentPosition:I

    .line 120
    :goto_1
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNotAllow3G()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->isBiggerThenThirty(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    :cond_1
    iput v7, p0, Lcom/android/updater/ui/ConfirmActivity;->mCurrentPosition:I

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/android/updater/ui/ConfirmActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 127
    .local v1, params:Lcom/htc/app/HtcAlertController$AlertParams;
    const v3, 0x7f06001f

    invoke-virtual {p0, v3}, Lcom/android/updater/ui/ConfirmActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 128
    invoke-virtual {p0}, Lcom/android/updater/ui/ConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f02

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 129
    const v3, 0x7f060024

    invoke-virtual {p0, v3}, Lcom/android/updater/ui/ConfirmActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 130
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 134
    invoke-virtual {p0}, Lcom/android/updater/ui/ConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3, v6}, Lcom/android/updater/util/UpdaterUtil;->getNegativeButtonText(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 137
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 138
    iput-boolean v6, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 139
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;

    .line 140
    invoke-direct {p0}, Lcom/android/updater/ui/ConfirmActivity;->createItems()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 141
    iget v3, p0, Lcom/android/updater/ui/ConfirmActivity;->mCurrentPosition:I

    iput v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 143
    invoke-virtual {p0}, Lcom/android/updater/ui/ConfirmActivity;->setupAlert()V

    .line 145
    iget-object v3, p0, Lcom/android/updater/ui/ConfirmActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v3}, Lcom/htc/app/HtcAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/updater/ui/ConfirmActivity;->mListView:Landroid/widget/ListView;

    .line 147
    iget-object v3, p0, Lcom/android/updater/ui/ConfirmActivity;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/updater/ui/ConfirmActivity$1;

    invoke-direct {v4, p0}, Lcom/android/updater/ui/ConfirmActivity$1;-><init>(Lcom/android/updater/ui/ConfirmActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v3, p0, Lcom/android/updater/ui/ConfirmActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 159
    return-void

    .line 100
    .end local v1           #params:Lcom/htc/app/HtcAlertController$AlertParams;
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "UpdaterAPK | ConfirmActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t get wifiOnly extra data! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/updater/ui/ConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v2

    goto/16 :goto_0

    .line 115
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iput v6, p0, Lcom/android/updater/ui/ConfirmActivity;->mCurrentPosition:I

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onDestroy()V

    .line 193
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/updater/ui/ConfirmActivity;->setIntent(Landroid/content/Intent;)V

    .line 201
    iput-object p1, p0, Lcom/android/updater/ui/ConfirmActivity;->mIntent:Landroid/content/Intent;

    .line 203
    const-string v11, "promptVersion"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 204
    .local v10, version:Ljava/lang/CharSequence;
    const-string v11, "promptFeature"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, feature:Ljava/lang/String;
    const-string v4, ""

    .line 207
    .local v4, feature_list:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 208
    const-string v10, ""

    .line 212
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 213
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\|\\|"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, features:[Ljava/lang/String;
    array-length v11, v5

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 215
    move-object v4, v3

    .line 229
    .end local v5           #features:[Ljava/lang/String;
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, download_infos:Ljava/lang/String;
    const v11, 0x7f08000c

    invoke-virtual {p0, v11}, Lcom/android/updater/ui/ConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-static {p1}, Lcom/android/updater/util/UpdaterUtil;->isForceUpdateIntent(Landroid/content/Intent;)Z

    move-result v6

    .line 235
    .local v6, forceUpdate:Z
    invoke-direct {p0, v6}, Lcom/android/updater/ui/ConfirmActivity;->setupButtons(Z)V

    .line 238
    return-void

    .line 217
    .end local v1           #download_infos:Ljava/lang/String;
    .end local v6           #forceUpdate:Z
    .restart local v5       #features:[Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    .line 218
    .local v8, isFirstString:Z
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v9, v0

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v2, v0, v7

    .line 219
    .local v2, f:Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 220
    move-object v4, v2

    .line 224
    :cond_3
    :goto_1
    const/4 v8, 0x0

    .line 218
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 221
    :cond_4
    if-nez v8, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 222
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onPause()V

    .line 181
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/android/updater/ui/ConfirmActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 243
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 244
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onResume()V

    .line 175
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStart()V

    .line 165
    invoke-virtual {p0}, Lcom/android/updater/ui/ConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/updater/ui/ConfirmActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/updater/ui/ConfirmActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStop()V

    .line 187
    return-void
.end method
