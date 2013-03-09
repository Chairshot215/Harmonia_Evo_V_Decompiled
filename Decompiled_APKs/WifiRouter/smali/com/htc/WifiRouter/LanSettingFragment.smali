.class public Lcom/htc/WifiRouter/LanSettingFragment;
.super Lcom/htc/preference/HtcPreferenceFragment;
.source "LanSettingFragment.java"


# static fields
.field private static final DHCP_OFF:I = 0x0

.field private static final DHCP_ON:I = 0x1

.field private static final SAVE_RESET_DEFAULT_DIALOG:Ljava/lang/String; = "reset_default"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mHotspotAddress:[Ljava/lang/String;

.field private mHotspotStateFilter:Landroid/content/IntentFilter;

.field private final mPreferenceKeys:[Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetDefaultDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mResetDefaultDialogShowed:Z

.field private mResetPreference:Lcom/htc/preference/HtcPreference;

.field private mWifiApState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;-><init>()V

    .line 35
    const-string v0, "LanSettingFragment"

    iput-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->TAG:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetPreference:Lcom/htc/preference/HtcPreference;

    .line 37
    iput-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_addr"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "subnet_mask"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "starting_ip"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mPreferenceKeys:[Ljava/lang/String;

    .line 52
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mHotspotAddress:[Ljava/lang/String;

    .line 60
    iput-boolean v3, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetDefaultDialogShowed:Z

    .line 64
    new-instance v0, Lcom/htc/WifiRouter/LanSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/LanSettingFragment$1;-><init>(Lcom/htc/WifiRouter/LanSettingFragment;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/WifiRouter/LanSettingFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mWifiApState:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/WifiRouter/LanSettingFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mWifiApState:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/WifiRouter/LanSettingFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/LanSettingFragment;->setLanSettingEnabled(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/WifiRouter/LanSettingFragment;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/WifiRouter/LanSettingFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetDefaultDialogShowed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/WifiRouter/LanSettingFragment;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/LanSettingFragment;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/WifiRouter/LanSettingFragment;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mPreferenceKeys:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/WifiRouter/LanSettingFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/WifiRouter/LanSettingFragment;->isSameSubnet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/WifiRouter/LanSettingFragment;ILcom/htc/preference/HtcEditTextPreference;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/WifiRouter/LanSettingFragment;->decideToSave(ILcom/htc/preference/HtcEditTextPreference;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/WifiRouter/LanSettingFragment;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/LanSettingFragment;->isValidSubnetMask(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/WifiRouter/LanSettingFragment;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/LanSettingFragment;->isConflictIpAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/WifiRouter/LanSettingFragment;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/WifiRouter/LanSettingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/WifiRouter/LanSettingFragment;->showResetDefaultDialog()V

    return-void
.end method

.method private decideToSave(ILcom/htc/preference/HtcEditTextPreference;Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 336
    move v1, p1

    .line 337
    .local v1, mKey:I
    move-object v2, p2

    .line 338
    .local v2, mPreference:Lcom/htc/preference/HtcEditTextPreference;
    move-object v3, p3

    .line 339
    .local v3, mValue:Ljava/lang/String;
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/WifiRouter/LanSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090056

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090054

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090052

    new-instance v6, Lcom/htc/WifiRouter/LanSettingFragment$7;

    invoke-direct {v6, p0, v1, v3, v2}, Lcom/htc/WifiRouter/LanSettingFragment$7;-><init>(Lcom/htc/WifiRouter/LanSettingFragment;ILjava/lang/String;Lcom/htc/preference/HtcEditTextPreference;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090045

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 371
    .local v0, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 372
    return-void
.end method

.method private initLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 158
    const v4, 0x7f040003

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/LanSettingFragment;->addPreferencesFromResource(I)V

    .line 161
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mPreferenceKeys:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 162
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/LanSettingFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcEditTextPreference;

    .line 163
    .local v3, preference:Lcom/htc/preference/HtcEditTextPreference;
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mHotspotAddress:[Ljava/lang/String;

    aget-object v2, v4, v1

    .line 168
    .local v2, ip:Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v3}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 175
    new-instance v4, Lcom/htc/WifiRouter/LanSettingFragment$2;

    invoke-direct {v4, p0}, Lcom/htc/WifiRouter/LanSettingFragment$2;-><init>(Lcom/htc/WifiRouter/LanSettingFragment;)V

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v2           #ip:Ljava/lang/String;
    .end local v3           #preference:Lcom/htc/preference/HtcEditTextPreference;
    :cond_0
    const-string v4, "dhcp"

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/LanSettingFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 248
    sget-object v4, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getDhcpEnable()I

    move-result v0

    .line 249
    .local v0, dhcp_on:I
    if-ne v0, v6, :cond_1

    .line 250
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 254
    :goto_1
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    new-instance v5, Lcom/htc/WifiRouter/LanSettingFragment$3;

    invoke-direct {v5, p0}, Lcom/htc/WifiRouter/LanSettingFragment$3;-><init>(Lcom/htc/WifiRouter/LanSettingFragment;)V

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 270
    const-string v4, "reset_to_default"

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/LanSettingFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetPreference:Lcom/htc/preference/HtcPreference;

    .line 271
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetPreference:Lcom/htc/preference/HtcPreference;

    new-instance v5, Lcom/htc/WifiRouter/LanSettingFragment$4;

    invoke-direct {v5, p0}, Lcom/htc/WifiRouter/LanSettingFragment$4;-><init>(Lcom/htc/WifiRouter/LanSettingFragment;)V

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 277
    return-void

    .line 252
    :cond_1
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private isConflictIpAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 465
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "192.168.42"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 10
    .parameter "value"

    .prologue
    const/16 v9, 0xff

    const/16 v8, 0x2e

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 427
    const/4 v4, 0x0

    .line 428
    .local v4, start:I
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 429
    .local v2, end:I
    const/4 v3, 0x0

    .line 431
    .local v3, numBlocks:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 432
    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    .line 433
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 437
    :cond_0
    :try_start_0
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 438
    .local v0, block:I
    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 460
    .end local v0           #block:I
    :cond_1
    :goto_1
    return v6

    .line 441
    .restart local v0       #block:I
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-gt v7, v5, :cond_1

    .line 444
    :cond_3
    if-gt v0, v9, :cond_1

    if-ltz v0, :cond_1

    .line 447
    const/4 v7, 0x3

    if-ne v3, v7, :cond_4

    if-eq v0, v9, :cond_1

    .line 454
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 456
    add-int/lit8 v4, v2, 0x1

    .line 457
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    .line 450
    .end local v0           #block:I
    :catch_0
    move-exception v1

    .line 451
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 460
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_5
    const/4 v7, 0x4

    if-ne v3, v7, :cond_6

    const-string v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    :goto_2
    move v6, v5

    goto :goto_1

    :cond_6
    move v5, v6

    goto :goto_2
.end method

.method private isSameSubnet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "ipaddr"
    .parameter "subnet"
    .parameter "startip"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x3

    .line 376
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, ipAddress:[Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, subnetMask:[Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {p3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 379
    .local v5, startingAddress:[Ljava/lang/String;
    aget-object v8, v1, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 380
    .local v2, mIp:I
    aget-object v8, v6, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 381
    .local v4, mSubnet:I
    aget-object v8, v5, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 383
    .local v3, mStartip:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v10, :cond_2

    .line 384
    aget-object v8, v1, v0

    aget-object v9, v5, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 392
    :cond_0
    :goto_1
    return v7

    .line 383
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_2
    and-int v8, v2, v4

    and-int v9, v3, v4

    if-ne v8, v9, :cond_0

    .line 392
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private isValidSubnetMask(Ljava/lang/String;)Z
    .locals 9
    .parameter "value"

    .prologue
    const/16 v8, 0x2e

    const/4 v7, 0x3

    const/4 v5, 0x0

    .line 396
    const/4 v4, 0x0

    .line 397
    .local v4, start:I
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 398
    .local v2, end:I
    const/4 v3, 0x0

    .line 400
    .local v3, numBlocks:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 401
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 406
    :cond_0
    :try_start_0
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 407
    .local v0, block:I
    if-ge v3, v7, :cond_2

    const/16 v6, 0xff

    if-eq v0, v6, :cond_2

    .line 423
    .end local v0           #block:I
    :cond_1
    :goto_1
    return v5

    .line 410
    .restart local v0       #block:I
    :cond_2
    if-ne v3, v7, :cond_3

    if-eqz v0, :cond_3

    const/16 v6, 0x80

    if-eq v0, v6, :cond_3

    const/16 v6, 0xc0

    if-eq v0, v6, :cond_3

    const/16 v6, 0xe0

    if-eq v0, v6, :cond_3

    const/16 v6, 0xf0

    if-eq v0, v6, :cond_3

    const/16 v6, 0xf8

    if-eq v0, v6, :cond_3

    const/16 v6, 0xfc

    if-ne v0, v6, :cond_1

    .line 418
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 420
    add-int/lit8 v4, v2, 0x1

    .line 421
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    .line 414
    .end local v0           #block:I
    :catch_0
    move-exception v1

    .line 415
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 423
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_4
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private setLanSettingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mPreferenceKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/htc/WifiRouter/LanSettingFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcEditTextPreference;

    .line 151
    .local v1, preference:Lcom/htc/preference/HtcEditTextPreference;
    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v1           #preference:Lcom/htc/preference/HtcEditTextPreference;
    :cond_0
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 154
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, p1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 155
    return-void
.end method

.method private showResetDefaultDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 280
    iput-boolean v4, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetDefaultDialogShowed:Z

    .line 281
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/WifiRouter/LanSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090054

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090052

    new-instance v3, Lcom/htc/WifiRouter/LanSettingFragment$5;

    invoke-direct {v3, p0}, Lcom/htc/WifiRouter/LanSettingFragment$5;-><init>(Lcom/htc/WifiRouter/LanSettingFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 327
    .local v0, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetDefaultDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 328
    iget-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetDefaultDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v2, Lcom/htc/WifiRouter/LanSettingFragment$6;

    invoke-direct {v2, p0}, Lcom/htc/WifiRouter/LanSettingFragment$6;-><init>(Lcom/htc/WifiRouter/LanSettingFragment;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 333
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/htc/WifiRouter/LanSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 87
    :try_start_0
    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mHotspotAddress:[Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 89
    iget-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mHotspotAddress:[Ljava/lang/String;

    const/4 v2, 0x1

    sget-object v3, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getDhcpSubnetMask()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 90
    iget-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mHotspotAddress:[Ljava/lang/String;

    const/4 v2, 0x2

    sget-object v3, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getStartingIP()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/htc/WifiRouter/LanSettingFragment;->initLayout()V

    .line 100
    if-eqz p1, :cond_1

    .line 101
    const-string v1, "reset_default"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetDefaultDialogShowed:Z

    .line 102
    iget-boolean v1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetDefaultDialogShowed:Z

    if-eqz v1, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/htc/WifiRouter/LanSettingFragment;->showResetDefaultDialog()V

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/htc/WifiRouter/LanSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->onDestroy()V

    .line 143
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetDefaultDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetDefaultDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 146
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->onPause()V

    .line 136
    invoke-virtual {p0}, Lcom/htc/WifiRouter/LanSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->onResume()V

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mHotspotStateFilter:Landroid/content/IntentFilter;

    .line 121
    invoke-virtual {p0}, Lcom/htc/WifiRouter/LanSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mHotspotStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    iput v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mWifiApState:I

    .line 124
    iget v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mWifiApState:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mWifiApState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 125
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/WifiRouter/LanSettingFragment;->setLanSettingEnabled(Z)V

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/WifiRouter/LanSettingFragment;->setLanSettingEnabled(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    iget-boolean v0, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetDefaultDialogShowed:Z

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "reset_default"

    iget-boolean v1, p0, Lcom/htc/WifiRouter/LanSettingFragment;->mResetDefaultDialogShowed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    :cond_0
    return-void
.end method
