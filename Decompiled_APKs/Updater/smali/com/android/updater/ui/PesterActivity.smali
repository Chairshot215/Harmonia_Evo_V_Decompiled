.class public Lcom/android/updater/ui/PesterActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "PesterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;


# static fields
.field private static final CLEAN_USERDATA:Ljava/lang/String; = "cleanUserdata"

.field private static final LOCAL_LOG:Z = false

.field private static final OPTIONS_RES_ID:[I = null

.field private static final OPTION_INSTALL_LATER:I = 0x2

.field private static final OPTION_INSTALL_NOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | PesterActivity"


# instance fields
.field private mCleanUserdata:Z

.field private mCurrentPosition:I

.field private mInstallIntent:Landroid/app/PendingIntent;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/updater/ui/PesterActivity;->OPTIONS_RES_ID:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x38t 0x0t 0x6t 0x7ft
        0x39t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/updater/ui/PesterActivity;->mCleanUserdata:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/updater/ui/PesterActivity;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/ui/PesterActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/updater/ui/PesterActivity;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/updater/ui/PesterActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/updater/ui/PesterActivity;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/updater/ui/PesterActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/updater/ui/PesterActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private createItems()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    sget-object v2, Lcom/android/updater/ui/PesterActivity;->OPTIONS_RES_ID:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 72
    .local v1, itemsList:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/updater/ui/PesterActivity;->OPTIONS_RES_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 73
    sget-object v2, Lcom/android/updater/ui/PesterActivity;->OPTIONS_RES_ID:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/PesterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-object v1
.end method

.method private setupButtons(Z)V
    .locals 11
    .parameter "forceUpdate"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 288
    .local v8, window:Landroid/view/Window;
    iget-object v9, p0, Lcom/android/updater/ui/PesterActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 289
    .local v1, buttonPositive:Landroid/widget/Button;
    const v9, 0x7f060024

    invoke-virtual {p0, v9}, Lcom/android/updater/ui/PesterActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 292
    iget-object v9, p0, Lcom/android/updater/ui/PesterActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v10, -0x2

    invoke-virtual {v9, v10}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 295
    .local v0, buttonNegative:Landroid/widget/Button;
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isDA()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 296
    const/4 p1, 0x1

    .line 300
    :cond_0
    if-eqz p1, :cond_1

    .line 301
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 302
    const v9, 0x20200b7

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 303
    .local v3, padding2:Landroid/view/View;
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :goto_0
    if-eqz p1, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/updater/util/UpdaterUtil;->getWeight(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)F

    move-result v7

    .line 315
    .local v7, weight:F
    const v9, 0x20200b1

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 316
    .local v2, leftSpacer:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 317
    .local v4, paramsL:Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 318
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 321
    const v9, 0x20200b8

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 322
    .local v6, rightSpacer:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 323
    .local v5, paramsR:Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 324
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 334
    .end local v4           #paramsL:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #paramsR:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #weight:F
    :goto_1
    return-void

    .line 305
    .end local v2           #leftSpacer:Landroid/view/View;
    .end local v3           #padding2:Landroid/view/View;
    .end local v6           #rightSpacer:Landroid/view/View;
    :cond_1
    const v9, 0x7f060045

    invoke-virtual {p0, v9}, Lcom/android/updater/ui/PesterActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 306
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 307
    const v9, 0x20200b7

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 308
    .restart local v3       #padding2:Landroid/view/View;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 328
    :cond_2
    const v9, 0x20200b1

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 329
    .restart local v2       #leftSpacer:Landroid/view/View;
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 331
    const v9, 0x20200b8

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 332
    .restart local v6       #rightSpacer:Landroid/view/View;
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, alertIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 279
    const-string v1, "position"

    iget v2, p0, Lcom/android/updater/ui/PesterActivity;->mCurrentPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string v1, "alert_type"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/PesterActivity;->startActivity(Landroid/content/Intent;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->finish()V

    .line 283
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, alertIntent:Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/PesterActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->finish()V

    .line 272
    :goto_1
    return-void

    .line 228
    :pswitch_0
    iget v1, p0, Lcom/android/updater/ui/PesterActivity;->mCurrentPosition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x3

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcBACKUPFlag:Z

    invoke-static {v1, v2, v3}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 240
    const-string v1, "position"

    iget v2, p0, Lcom/android/updater/ui/PesterActivity;->mCurrentPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const-class v1, Lcom/android/updater/service/InstallCheckService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/PesterActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 246
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->finish()V

    goto :goto_1

    .line 253
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #alertIntent:Landroid/content/Intent;
    const-string v1, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v0       #alertIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 255
    const-string v1, "position"

    iget v2, p0, Lcom/android/updater/ui/PesterActivity;->mCurrentPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string v1, "alert_type"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 261
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #alertIntent:Landroid/content/Intent;
    const-string v1, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v0       #alertIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 263
    const-string v1, "position"

    iget v2, p0, Lcom/android/updater/ui/PesterActivity;->mCurrentPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string v1, "alert_type"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 87
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/updater/ui/PesterActivity;->mCurrentPosition:I

    .line 92
    iget-object v0, p0, Lcom/android/updater/ui/PesterActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 93
    .local v0, params:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x7f060036

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/PesterActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 95
    const v1, 0x7f060024

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/PesterActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 96
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    const v1, 0x7f060045

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/PesterActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 98
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 99
    iput-boolean v3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 101
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;

    .line 102
    invoke-direct {p0}, Lcom/android/updater/ui/PesterActivity;->createItems()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 103
    iget v1, p0, Lcom/android/updater/ui/PesterActivity;->mCurrentPosition:I

    iput v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 106
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->setupAlert()V

    .line 109
    iget-object v1, p0, Lcom/android/updater/ui/PesterActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v1}, Lcom/htc/app/HtcAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/updater/ui/PesterActivity;->mListView:Landroid/widget/ListView;

    .line 110
    iget-object v1, p0, Lcom/android/updater/ui/PesterActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 111
    iget-object v1, p0, Lcom/android/updater/ui/PesterActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/updater/ui/PesterActivity$1;

    invoke-direct {v2, p0}, Lcom/android/updater/ui/PesterActivity$1;-><init>(Lcom/android/updater/ui/PesterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const v9, 0x7f080013

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 181
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/updater/ui/PesterActivity;->setIntent(Landroid/content/Intent;)V

    .line 185
    const-string v5, "updateFile"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, filePath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->finish()V

    .line 221
    :goto_0
    return-void

    .line 192
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v3, update:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->finish()V

    goto :goto_0

    .line 201
    :cond_1
    const-string v5, "cleanUserdata"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/updater/ui/PesterActivity;->mCleanUserdata:Z

    .line 203
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 204
    .local v4, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.server.checkin.FOTA_INSTALL"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 205
    .local v2, install:Landroid/content/Intent;
    invoke-static {p0, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/updater/ui/PesterActivity;->mInstallIntent:Landroid/app/PendingIntent;

    .line 208
    iget-boolean v5, p0, Lcom/android/updater/ui/PesterActivity;->mCleanUserdata:Z

    if-nez v5, :cond_2

    .line 209
    const v5, 0x7f080012

    invoke-virtual {p0, v5}, Lcom/android/updater/ui/PesterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    invoke-virtual {p0, v9}, Lcom/android/updater/ui/PesterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x3

    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcBACKUPFlag:Z

    invoke-static {v5, v6, v7}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v5

    if-nez v5, :cond_3

    .line 213
    invoke-virtual {p0, v9}, Lcom/android/updater/ui/PesterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    :cond_3
    invoke-static {p1}, Lcom/android/updater/util/UpdaterUtil;->isForceUpdateIntent(Landroid/content/Intent;)Z

    move-result v1

    .line 219
    .local v1, forceUpdate:Z
    invoke-direct {p0, v1}, Lcom/android/updater/ui/PesterActivity;->setupButtons(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/updater/ui/PesterActivity;->mInstallIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :cond_0
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onPause()V

    .line 167
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030005

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 81
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 82
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const v4, 0x7f080010

    .line 135
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onResume()V

    .line 138
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "promptVersion"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, version:Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p0, v4}, Lcom/android/updater/ui/PesterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/updater/ui/PesterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->hideDownloadTask(Landroid/content/Context;)V

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.updater.FOTA_CANCEL_CONFIRM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/PesterActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStart()V

    .line 128
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/updater/ui/PesterActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/updater/ui/PesterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStop()V

    .line 172
    return-void
.end method
