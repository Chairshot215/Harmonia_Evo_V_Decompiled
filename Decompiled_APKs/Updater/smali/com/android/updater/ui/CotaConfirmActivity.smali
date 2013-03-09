.class public Lcom/android/updater/ui/CotaConfirmActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "CotaConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;


# static fields
.field private static final LOCAL_LOG:Z = false

.field private static final OPTIONS_RES_ID:[I = null

.field private static final OPTION_DOWNLOAD_NOW:I = 0x1

.field private static final OPTION_DOWNLOAD_VIA_WIFI:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | CotaConfirmActivity"


# instance fields
.field private mCurrentPosition:I

.field mIntent:Landroid/content/Intent;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-ne v0, v3, :cond_0

    const v0, 0x7f060022

    :goto_0
    aput v0, v1, v2

    const/4 v0, 0x1

    const v2, 0x7f060023

    aput v2, v1, v0

    sput-object v1, Lcom/android/updater/ui/CotaConfirmActivity;->OPTIONS_RES_ID:[I

    return-void

    :cond_0
    const v0, 0x7f060021

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mListView:Landroid/widget/ListView;

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mCurrentPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/ui/CotaConfirmActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/updater/ui/CotaConfirmActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/updater/ui/CotaConfirmActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private createItems()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 44
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNoIPTFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    sget-object v2, Lcom/android/updater/ui/CotaConfirmActivity;->OPTIONS_RES_ID:[I

    const/4 v3, 0x1

    const v4, 0x7f060083

    aput v4, v2, v3

    .line 48
    :cond_0
    sget-object v2, Lcom/android/updater/ui/CotaConfirmActivity;->OPTIONS_RES_ID:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 49
    .local v1, itemsList:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/updater/ui/CotaConfirmActivity;->OPTIONS_RES_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 50
    sget-object v2, Lcom/android/updater/ui/CotaConfirmActivity;->OPTIONS_RES_ID:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/CotaConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    return-object v1
.end method

.method private isCotaOverStorageBoundary()Z
    .locals 7

    .prologue
    .line 209
    const/4 v4, 0x0

    .line 210
    .local v4, isOver:Z
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->getAvailableInternalStorage()J

    move-result-wide v0

    .line 211
    .local v0, availableSize:J
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 213
    .local v2, cotaUnzipFileSize:J
    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    .line 214
    const/4 v4, 0x1

    .line 219
    :goto_0
    return v4

    .line 216
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
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

    .line 190
    iget v3, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mCurrentPosition:I

    if-ne v3, v5, :cond_1

    .line 191
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "alert_type"

    const/16 v4, 0x29

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    invoke-static {v0, v6, v1}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 203
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    const-string v3, "wifiOnly"

    iget v4, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mCurrentPosition:I

    if-ne v4, v5, :cond_2

    :goto_1
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    return-object p1

    .line 197
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 199
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v3, "alert_type"

    const/16 v4, 0x28

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    invoke-static {v0, v6, v2}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    goto :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_2
    move v1, v2

    .line 203
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 166
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, alertIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 172
    invoke-direct {p0}, Lcom/android/updater/ui/CotaConfirmActivity;->isCotaOverStorageBoundary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    const-string v1, "alert_type"

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/CotaConfirmActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    .end local v0           #alertIntent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 177
    .restart local v0       #alertIntent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/updater/ui/CotaConfirmActivity;->setDownloadRestriction(Landroid/content/Intent;Ljava/lang/Boolean;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 183
    .end local v0           #alertIntent:Landroid/content/Intent;
    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaConfirmActivity;->finish()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, wifiOnly:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "wifiOnly"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 69
    :goto_0
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isO2DE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const/4 v2, 0x1

    .line 74
    :cond_0
    if-eqz v2, :cond_1

    .line 75
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mCurrentPosition:I

    .line 80
    :goto_1
    iget-object v1, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 81
    .local v1, params:Lcom/htc/app/HtcAlertController$AlertParams;
    const v3, 0x7f06008d

    invoke-virtual {p0, v3}, Lcom/android/updater/ui/CotaConfirmActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f02

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 83
    const v3, 0x7f060024

    invoke-virtual {p0, v3}, Lcom/android/updater/ui/CotaConfirmActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 84
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    const v3, 0x7f060087

    invoke-virtual {p0, v3}, Lcom/android/updater/ui/CotaConfirmActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 88
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 89
    iput-boolean v6, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 90
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;

    .line 91
    invoke-direct {p0}, Lcom/android/updater/ui/CotaConfirmActivity;->createItems()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 92
    iget v3, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mCurrentPosition:I

    iput v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 94
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaConfirmActivity;->setupAlert()V

    .line 96
    iget-object v3, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v3}, Lcom/htc/app/HtcAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mListView:Landroid/widget/ListView;

    .line 98
    iget-object v3, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/updater/ui/CotaConfirmActivity$1;

    invoke-direct {v4, p0}, Lcom/android/updater/ui/CotaConfirmActivity$1;-><init>(Lcom/android/updater/ui/CotaConfirmActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    iget-object v3, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 110
    return-void

    .line 63
    .end local v1           #params:Lcom/htc/app/HtcAlertController$AlertParams;
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "UpdaterAPK | CotaConfirmActivity"

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

    .line 65
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v2

    goto/16 :goto_0

    .line 77
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iput v6, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mCurrentPosition:I

    goto :goto_1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/updater/ui/CotaConfirmActivity;->setIntent(Landroid/content/Intent;)V

    .line 136
    iput-object p1, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mIntent:Landroid/content/Intent;

    .line 138
    const-string v8, "description"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, feature:Ljava/lang/String;
    const-string v3, ""

    .line 143
    .local v3, feature_list:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 144
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\|\\|"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, features:[Ljava/lang/String;
    array-length v8, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 146
    move-object v3, v2

    .line 160
    .end local v4           #features:[Ljava/lang/String;
    :cond_0
    const v8, 0x7f08000e

    invoke-virtual {p0, v8}, Lcom/android/updater/ui/CotaConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-void

    .line 148
    .restart local v4       #features:[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    .line 149
    .local v6, isFirstString:Z
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v1, v0, v5

    .line 150
    .local v1, f:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 151
    move-object v3, v1

    .line 155
    :cond_2
    :goto_1
    const/4 v6, 0x0

    .line 149
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 152
    :cond_3
    if-nez v6, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 153
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaConfirmActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 115
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 116
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStart()V

    .line 122
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mIntent:Landroid/content/Intent;

    .line 123
    iget-object v0, p0, Lcom/android/updater/ui/CotaConfirmActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/updater/ui/CotaConfirmActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaConfirmActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :cond_0
    return-void
.end method
