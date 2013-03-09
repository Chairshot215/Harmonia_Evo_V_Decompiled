.class public Lcom/android/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# static fields
.field protected static final CW_STATE_IDLE:I = 0x0

.field protected static final CW_STATE_REGISTERING:I = 0x1

.field protected static final CW_STATE_REGISTER_FAILED:I = 0x3

.field protected static final CW_STATE_REGISTER_SUC:I = 0x2

.field protected static final CW_STATE_UNKNOWN:I = -0x1

.field protected static final CW_STATE_UNREGISTERING:I = 0x4

.field protected static final CW_STATE_UNRIGISTERING_SUC:I = 0x5

.field protected static final CW_STATE_UNRIGISTER_FAILED:I = 0x6

.field private static final DHCP:I = 0x0

.field private static final KEYSTORE_SPACE:Ljava/lang/String; = "keystore://"

.field public static final MANUAL:I = 0x0

.field public static final PROXY_NONE:I = 0x0

.field public static final PROXY_STATIC:I = 0x1

.field private static final STATIC_IP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiConfigController"

.field public static final WPS_DISPLAY:I = 0x3

.field public static final WPS_KEYPAD:I = 0x2

.field public static final WPS_PBC:I = 0x1

.field private static mCWstate:I


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mCCKMOptionCheckBox:Landroid/widget/CheckBox;

.field private mCCXEncryptionSpinner:Lcom/htc/widget/HtcSpinner;

.field private mCertificateSpinner:Lcom/htc/widget/HtcSpinner;

.field private mClientCertificateSpinner:Lcom/htc/widget/HtcSpinner;

.field private final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

.field private mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

.field private mEdit:I

.field private mEnableWapiHexCheckBox:Landroid/widget/CheckBox;

.field private mEncryptionText:Landroid/widget/TextView;

.field private mGatewayView:Landroid/widget/TextView;

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNeedReloadCertificate:Z

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mNetworkSetupSpinner:Lcom/htc/widget/HtcSpinner;

.field private mPasswordView:Landroid/widget/EditText;

.field private mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

.field private mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

.field private mShowPasswordCheckBox:Landroid/widget/CheckBox;

.field private mSsidView:Landroid/widget/TextView;

.field private final mView:Landroid/view/View;

.field private mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

.field private wepkeyindex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;I)V
    .locals 15
    .parameter "parent"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 158
    sget-object v12, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 159
    sget-object v12, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 160
    new-instance v12, Landroid/net/LinkProperties;

    invoke-direct {v12}, Landroid/net/LinkProperties;-><init>()V

    iput-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 166
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mNeedReloadCertificate:Z

    .line 190
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 191
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    iput-boolean v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 193
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 194
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 195
    if-nez p3, :cond_2

    const/4 v12, 0x0

    :goto_0
    iput v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 197
    move/from16 v0, p4

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    .line 199
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v12}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 200
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 202
    .local v8, resources:Landroid/content/res/Resources;
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v12, :cond_5

    .line 203
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v13, 0x7f0c0916

    invoke-interface {v12, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 204
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801c5

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 205
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v12, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 206
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801c6

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcSpinner;

    iput-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

    .line 207
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v12, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 208
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f080204

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcSpinner;

    iput-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    .line 209
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v12, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 211
    iget-boolean v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v12, :cond_3

    .line 212
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801e7

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801ec

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

    const v13, 0x7f070012

    invoke-direct {p0, v12, v13}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 227
    :goto_1
    sget-boolean v12, Lcom/android/settings/wifi/CustomUtil;->SET_DEFAULT_SECURITY_AS_WPA:Z

    if-eqz v12, :cond_0

    .line 228
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 230
    :cond_0
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v13, 0x7f0c0951

    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 350
    :cond_1
    :goto_2
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v13, 0x7f0c0952

    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 358
    return-void

    .line 195
    .end local v3           #context:Landroid/content/Context;
    .end local v8           #resources:Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto/16 :goto_0

    .line 217
    .restart local v3       #context:Landroid/content/Context;
    .restart local v8       #resources:Landroid/content/res/Resources;
    :cond_3
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f08019e

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 218
    sget-boolean v12, Lcom/android/settings/wifi/CustomUtil;->ENABLE_WAPI_FEATURE:Z

    if-eqz v12, :cond_4

    .line 219
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

    const v13, 0x7f070054

    invoke-direct {p0, v12, v13}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 224
    :goto_3
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    const v13, 0x7f070057

    invoke-direct {p0, v12, v13}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    goto :goto_1

    .line 221
    :cond_4
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

    const v13, 0x7f070012

    invoke-direct {p0, v12, v13}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    goto :goto_3

    .line 233
    :cond_5
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    iget-object v13, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v13, v13, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v12, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801de

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcSpinner;

    iput-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    .line 236
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v12, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 237
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801d7

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcSpinner;

    iput-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    .line 238
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v12, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 239
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    const v13, 0x7f070023

    invoke-direct {p0, v12, v13}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 240
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    const v13, 0x7f070024

    invoke-direct {p0, v12, v13}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 242
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801c4

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 244
    .local v4, group:Landroid/view/ViewGroup;
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    .line 245
    .local v11, state:Landroid/net/NetworkInfo$DetailedState;
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v7

    .line 246
    .local v7, level:I
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isError()Z

    move-result v12

    if-nez v12, :cond_9

    .line 247
    if-eqz v11, :cond_6

    .line 248
    const v12, 0x7f0c0928

    iget-object v13, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v11}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v4, v12, v13}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 249
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->addLine(Landroid/view/ViewGroup;)V

    .line 252
    :cond_6
    const/4 v12, -0x1

    if-eq v7, v12, :cond_7

    .line 253
    const v12, 0x7f070019

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 254
    .local v10, signal:[Ljava/lang/String;
    const v12, 0x7f0c0927

    aget-object v13, v10, v7

    invoke-direct {p0, v4, v12, v13}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 255
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->addLine(Landroid/view/ViewGroup;)V

    .line 258
    .end local v10           #signal:[Ljava/lang/String;
    :cond_7
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 259
    .local v6, info:Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_8

    .line 260
    const v12, 0x7f0c0929

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Mbps"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v4, v12, v13}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 261
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->addLine(Landroid/view/ViewGroup;)V

    .line 264
    :cond_8
    const v12, 0x7f0c0926

    iget-object v13, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v4, v12, v13}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 265
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_9

    .line 266
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->addLine(Landroid/view/ViewGroup;)V

    .line 270
    .end local v6           #info:Landroid/net/wifi/WifiInfo;
    :cond_9
    const/4 v9, 0x0

    .line 271
    .local v9, showAdvancedFields:Z
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_c

    .line 272
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 273
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v12, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v13, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v12, v13, :cond_a

    .line 274
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 275
    const/4 v9, 0x1

    .line 280
    :goto_4
    iget-object v12, v2, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v12}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 281
    .local v1, a:Ljava/net/InetAddress;
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->addLine(Landroid/view/ViewGroup;)V

    .line 282
    const v12, 0x7f0c092a

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v4, v12, v13}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_5

    .line 277
    .end local v1           #a:Ljava/net/InetAddress;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_a
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto :goto_4

    .line 285
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_b
    iget-object v12, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v13, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v12, v13, :cond_12

    .line 286
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 287
    const/4 v9, 0x1

    .line 292
    :goto_6
    iget v12, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    iget v12, v2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    .line 294
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->addLine(Landroid/view/ViewGroup;)V

    .line 295
    const v12, 0x7f0c093a

    const v13, 0x7f0c093b

    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v4, v12, v13}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 300
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isError()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 301
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showErrorMessage()V

    .line 305
    :cond_d
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_e

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v12, v12, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v12, :cond_e

    .line 306
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showNetworkSetupFields()V

    .line 309
    :cond_e
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isError()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 310
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 311
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 312
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 314
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->addLine(Landroid/view/ViewGroup;)V

    .line 317
    :cond_10
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f080200

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f080201

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    if-eqz v9, :cond_11

    .line 320
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f080201

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 321
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f080202

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 325
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 326
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v13, 0x7f0c0951

    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 289
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_12
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto/16 :goto_6

    .line 328
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_13
    if-nez v11, :cond_14

    const/4 v12, -0x1

    if-ne v7, v12, :cond_15

    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isError()Z

    move-result v12

    if-eqz v12, :cond_17

    .line 329
    :cond_15
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v13, 0x7f0c094f

    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 342
    :cond_16
    :goto_7
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isError()Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->isReadOnly()Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v12, v12, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/settings/wifi/CustomUtil;->readOnlySSID(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 345
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v13, 0x7f0c0950

    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 331
    :cond_17
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->checkCTSSID()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 332
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->isCwRegistrable()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 333
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v13, 0x7f0c0534

    invoke-interface {v12, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(I)V

    goto :goto_7

    .line 335
    :cond_18
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->isCwUnregistrable()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 336
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v13, 0x7f0c0535

    invoke-interface {v12, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(I)V

    goto :goto_7

    .line 340
    :cond_19
    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801dd

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method private addLine(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "group"

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 369
    .local v0, row:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 370
    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 362
    .local v0, row:Landroid/view/View;
    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 363
    const v1, 0x7f0800ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 365
    return-void
.end method

.method private checkEapIfAppropriate()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1060
    sget-boolean v2, Lcom/android/settings/wifi/CustomUtil;->CHECK_EAP_IF_APPROPRIATE:Z

    if-nez v2, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return v0

    .line 1061
    :cond_1
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1063
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 1064
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 1065
    goto :goto_0

    .line 1068
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 1069
    goto :goto_0
.end method

.method private checkWepIfAppropriate()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1077
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eq v1, v0, :cond_0

    .line 1079
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->isValidWepPassword(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private initSpinner(Lcom/htc/widget/HtcSpinner;I)V
    .locals 4
    .parameter "spinner"
    .parameter "resId"

    .prologue
    .line 1002
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1003
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x20900ee

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1006
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x20900af

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1007
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1008
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 560
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    .line 561
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_0

    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 565
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v7, v10, :cond_1

    .line 566
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 567
    .local v6, result:I
    if-eqz v6, :cond_1

    move v7, v8

    .line 595
    .end local v6           #result:I
    :goto_1
    return v7

    .line 561
    :cond_0
    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 572
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_3

    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 576
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v7, v10, :cond_2

    .line 577
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, host:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, portStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 581
    .local v3, port:I
    const/4 v6, 0x0

    .line 583
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 584
    invoke-static {v2, v4, v1}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 588
    :goto_3
    if-nez v6, :cond_4

    .line 589
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 590
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_2
    move v7, v9

    .line 595
    goto :goto_1

    .line 572
    :cond_3
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 585
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v0

    .line 586
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0c0800

    goto :goto_3

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v7, v8

    .line 592
    goto :goto_1
.end method

.method private isCwRegistrable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1031
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1041
    :cond_0
    :goto_0
    return v0

    .line 1035
    :cond_1
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[C+W] mCWstate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    sget v1, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    if-eqz v1, :cond_2

    sget v1, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    sget v1, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    sget v1, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1039
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCwUnregistrable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1045
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1055
    :cond_0
    :goto_0
    return v0

    .line 1049
    :cond_1
    const-string v2, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C+W] mCWstate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    sget v2, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    if-eq v2, v1, :cond_2

    sget v2, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    sget v2, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 1053
    goto :goto_0
.end method

.method private loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V
    .locals 8
    .parameter "spinner"
    .parameter "prefix"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 961
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 962
    .local v3, context:Landroid/content/Context;
    const v5, 0x7f0c0936

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 964
    .local v4, unspecified:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 965
    .local v2, certs:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    .line 966
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2           #certs:[Ljava/lang/String;
    aput-object v4, v2, v6

    .line 974
    .restart local v2       #certs:[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x20900ee

    invoke-direct {v0, v3, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 976
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x20900af

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 977
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 978
    return-void

    .line 968
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .line 969
    .local v1, array:[Ljava/lang/String;
    aput-object v4, v1, v6

    .line 970
    array-length v5, v2

    invoke-static {v2, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 971
    move-object v2, v1

    goto :goto_0
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .parameter "config"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 169
    if-nez p0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v5

    .line 172
    :cond_1
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v7, 0x2

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 174
    .local v4, values:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 175
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v7, "keystore://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 176
    goto :goto_0

    .line 174
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    .end local v3           #value:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AKA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SIM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    .line 182
    goto :goto_0
.end method

.method public static setCWstate(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1193
    sput p0, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    .line 1194
    return-void
.end method

.method private setCertificate(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 982
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 985
    :cond_0
    return-void
.end method

.method private setSelection(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 988
    if-eqz p2, :cond_0

    .line 990
    invoke-virtual {p1}, Lcom/htc/widget/HtcSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 991
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 992
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 993
    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 998
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 991
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showErrorMessage()V
    .locals 3

    .prologue
    const v2, 0x7f0801ef

    .line 685
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 686
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isRetryPassword()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0563

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isInvalidPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c05c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 11

    .prologue
    const v10, 0x7f0801df

    const/4 v9, 0x0

    .line 864
    const/4 v0, 0x0

    .line 866
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0801dd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 868
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 869
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 872
    :cond_0
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 873
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 874
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v7, :cond_1

    .line 875
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0801e0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 876
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 877
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0801e1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 878
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 879
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0801e2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 881
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 882
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0801e3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 883
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 884
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0801e4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 885
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 887
    :cond_1
    if-eqz v0, :cond_6

    .line 888
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 889
    .local v5, linkProperties:Landroid/net/LinkProperties;
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 890
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 891
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 892
    .local v4, linkAddress:Landroid/net/LinkAddress;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    .end local v4           #linkAddress:Landroid/net/LinkAddress;
    :cond_2
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 905
    .local v6, route:Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 906
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    .end local v6           #route:Landroid/net/RouteInfo;
    :cond_4
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 912
    .local v1, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 913
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 916
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    .end local v1           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v5           #linkProperties:Landroid/net/LinkProperties;
    :cond_6
    :goto_0
    return-void

    .line 920
    :cond_7
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showNetworkSetupFields()V
    .locals 8

    .prologue
    const v7, 0x7f0801ce

    const v6, 0x7f0801cc

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 836
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 838
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Lcom/htc/widget/HtcSpinner;

    if-nez v1, :cond_0

    .line 839
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSpinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Lcom/htc/widget/HtcSpinner;

    .line 840
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 841
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Lcom/htc/widget/HtcSpinner;

    const v2, 0x7f070022

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 847
    .local v0, pos:I
    if-ne v0, v4, :cond_2

    .line 848
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 854
    :goto_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v4, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 856
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 861
    :goto_1
    return-void

    .line 850
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 858
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showProxyFields()V
    .locals 8

    .prologue
    const v7, 0x7f0801d9

    const v6, 0x7f0801d8

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 925
    const/4 v0, 0x0

    .line 927
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0801d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 929
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 930
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 933
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 934
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 935
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 936
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 937
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0801da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 938
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 939
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0801db

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 940
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 941
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0801dc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 942
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 944
    :cond_1
    if-eqz v0, :cond_2

    .line 945
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 946
    .local v1, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v1, :cond_2

    .line 947
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    .end local v1           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_2
    :goto_0
    return-void

    .line 953
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 954
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const v7, 0x7f080203

    const v6, 0x7f0801fa

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 694
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v1, :cond_1

    .line 696
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v1, :cond_2

    .line 702
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 705
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 707
    :cond_2
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v1, :cond_3

    .line 711
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 718
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 719
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 720
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eq v1, v8, :cond_8

    .line 721
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 730
    :goto_1
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    .line 731
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 732
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 733
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_4

    .line 734
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 737
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    if-nez v1, :cond_5

    .line 738
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSpinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    .line 739
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSpinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mClientCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    .line 741
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v2, "CACERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 742
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mClientCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v2, "USRCERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 745
    :cond_5
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v1, v2, :cond_6

    .line 746
    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mNeedReloadCertificate:Z

    .line 747
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 767
    :cond_6
    :goto_2
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    .line 768
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 824
    :cond_7
    :goto_3
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_10

    .line 825
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 723
    :cond_8
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 724
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080204

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSpinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    .line 725
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 727
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    const v2, 0x7f070057

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    goto/16 :goto_1

    .line 751
    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_a

    .line 754
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 757
    :cond_a
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    .line 758
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 759
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    .line 760
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 763
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v2, 0x7f0c0935

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_2

    .line 770
    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 772
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    if-nez v1, :cond_d

    .line 773
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSpinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    .line 774
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 775
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSpinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    .line 776
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSpinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    .line 777
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 778
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSpinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    .line 779
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 780
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 781
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 783
    sget-boolean v1, Lcom/android/settings/wifi/CustomUtil;->ENABLE_CCX_UI:Z

    if-eqz v1, :cond_e

    .line 784
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 785
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCKMOptionCheckBox:Landroid/widget/CheckBox;

    .line 786
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801f2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSpinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCXEncryptionSpinner:Lcom/htc/widget/HtcSpinner;

    .line 787
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCXEncryptionSpinner:Lcom/htc/widget/HtcSpinner;

    const v2, 0x7f07004b

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 788
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    const v2, 0x7f07004a

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 789
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCKMOptionCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_c

    .line 790
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCKMOptionCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    const v2, 0x7f070021

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 801
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v2, "CACERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 802
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v2, "USRPKEY_"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 804
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    .line 805
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 806
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 807
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 808
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v2, "CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->setCertificate(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->setCertificate(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_d
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 817
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v1, v2, :cond_7

    .line 818
    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mNeedReloadCertificate:Z

    .line 819
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 793
    :cond_e
    sget-boolean v1, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_EAP_METHOD_WITH_AKA:Z

    if-eqz v1, :cond_f

    .line 794
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    const v2, 0x7f070084

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 798
    :goto_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 796
    :cond_f
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    const v2, 0x7f070015

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    goto :goto_5

    .line 827
    :cond_10
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 828
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEnableWapiHexCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    .line 829
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEnableWapiHexCheckBox:Landroid/widget/CheckBox;

    .line 830
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEnableWapiHexCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private updateEAPFields()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0801f4

    const v3, 0x7f0801f1

    const/16 v2, 0x8

    .line 1144
    sget-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_CCX_UI:Z

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1154
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 11
    .parameter "linkProperties"

    .prologue
    const v9, 0x7f0c095f

    const/4 v8, 0x0

    .line 600
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_1

    .line 648
    :cond_0
    :goto_0
    return v8

    .line 602
    :cond_1
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 603
    .local v6, ipAddr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 605
    .local v5, inetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 610
    const/4 v7, -0x1

    .line 612
    .local v7, networkPrefixLength:I
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v7

    .line 616
    :goto_1
    if-ltz v7, :cond_2

    const/16 v10, 0x20

    if-le v7, v10, :cond_3

    .line 617
    :cond_2
    const v8, 0x7f0c0960

    goto :goto_0

    .line 606
    .end local v7           #networkPrefixLength:I
    :catch_0
    move-exception v2

    .line 607
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const v8, 0x7f0c095d

    goto :goto_0

    .line 619
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #networkPrefixLength:I
    :cond_3
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v5, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 621
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, gateway:Ljava/lang/String;
    const/4 v4, 0x0

    .line 624
    .local v4, gatewayAddr:Ljava/net/InetAddress;
    :try_start_2
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 629
    new-instance v10, Landroid/net/RouteInfo;

    invoke-direct {v10, v4}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 631
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, dns:Ljava/lang/String;
    const/4 v1, 0x0

    .line 634
    .local v1, dnsAddr:Ljava/net/InetAddress;
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 638
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 639
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 640
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    :try_start_4
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v1

    .line 646
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_0

    .line 625
    .end local v0           #dns:Ljava/lang/String;
    .end local v1           #dnsAddr:Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 626
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    const v8, 0x7f0c095e

    goto :goto_0

    .line 635
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #dns:Ljava/lang/String;
    .restart local v1       #dnsAddr:Ljava/net/InetAddress;
    :catch_2
    move-exception v2

    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    move v8, v9

    .line 636
    goto :goto_0

    .line 643
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    move v8, v9

    .line 644
    goto/16 :goto_0

    .line 613
    .end local v0           #dns:Ljava/lang/String;
    .end local v1           #dnsAddr:Ljava/net/InetAddress;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #gateway:Ljava/lang/String;
    .end local v4           #gatewayAddr:Ljava/net/InetAddress;
    :catch_4
    move-exception v10

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1084
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1085
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1090
    return-void
.end method

.method public certificatesIfReload()V
    .locals 2

    .prologue
    .line 1178
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNeedReloadCertificate:Z

    if-nez v0, :cond_0

    .line 1189
    :goto_0
    return-void

    .line 1180
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mClientCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v1, "USRCERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1188
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNeedReloadCertificate:Z

    goto :goto_0

    .line 1183
    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    goto :goto_1
.end method

.method chosenNetworkSetupMethod()I
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Lcom/htc/widget/HtcSpinner;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 655
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected enableSubmitIfAppropriate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    const v4, 0x7f0801f8

    .line 374
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v1

    .line 375
    .local v1, submit:Landroid/widget/Button;
    if-nez v1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 377
    :cond_0
    const/4 v0, 0x0

    .line 378
    .local v0, shouldEnabled:Z
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/CustomUtil;->readOnlySSID(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_3
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v7, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_6

    :cond_4
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lt v2, v5, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->checkEapIfAppropriate()Z

    move-result v2

    if-nez v2, :cond_9

    .line 385
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Lcom/htc/widget/HtcSpinner;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    if-eqz v2, :cond_7

    .line 386
    const/4 v0, 0x1

    .line 387
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :goto_1
    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 407
    const/4 v0, 0x1

    .line 411
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 391
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v7, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 393
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 395
    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 398
    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->checkWepIfAppropriate()Z

    move-result v2

    if-nez v2, :cond_a

    .line 399
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 402
    :cond_a
    const/4 v0, 0x1

    .line 403
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 409
    :cond_b
    const/4 v0, 0x0

    goto :goto_2
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x0

    const/16 v11, 0x22

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 415
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v7, v12, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isError()Z

    move-result v7

    if-nez v7, :cond_0

    .line 416
    const/4 v1, 0x0

    .line 556
    :goto_0
    return-object v1

    .line 419
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 421
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v7, :cond_1

    .line 422
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 425
    iput-boolean v9, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 433
    :goto_1
    iget v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v7, :pswitch_data_0

    .line 549
    const/4 v1, 0x0

    goto :goto_0

    .line 426
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v7, v12, :cond_2

    .line 427
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 430
    :cond_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 435
    :pswitch_0
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 552
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 553
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 554
    new-instance v7, Landroid/net/LinkProperties;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v7, v8}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 439
    :pswitch_1
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 440
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 441
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 442
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 443
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 444
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v4

    .line 445
    .local v4, length:I
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 447
    .local v6, password:Ljava/lang/String;
    const/16 v7, 0xa

    if-eq v4, v7, :cond_4

    const/16 v7, 0x1a

    if-eq v4, v7, :cond_4

    const/16 v7, 0x3a

    if-ne v4, v7, :cond_5

    :cond_4
    const-string v7, "[0-9A-Fa-f]*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 450
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aput-object v6, v7, v8

    goto :goto_2

    .line 453
    :cond_5
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_2

    .line 459
    .end local v4           #length:I
    .end local v6           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 460
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 461
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 462
    .restart local v6       #password:Ljava/lang/String;
    const-string v7, "[0-9A-Fa-f]{64}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 463
    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 465
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 472
    .end local v6           #password:Ljava/lang/String;
    :pswitch_3
    sget-boolean v7, Lcom/android/settings/wifi/CustomUtil;->ENABLE_CCX_UI:Z

    if-eqz v7, :cond_b

    .line 474
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCKMOptionCheckBox:Landroid/widget/CheckBox;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCKMOptionCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCKMOptionCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 475
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 480
    :goto_3
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    if-eqz v7, :cond_7

    .line 481
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 482
    .local v2, eapType:Ljava/lang/String;
    const-string v7, "LEAP"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 483
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCXEncryptionSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 484
    .local v3, encryptType:Ljava/lang/String;
    const-string v7, "TKIP"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 485
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 486
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    .line 502
    .end local v2           #eapType:Ljava/lang/String;
    .end local v3           #encryptType:Ljava/lang/String;
    :cond_7
    :goto_4
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 504
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_c

    const-string v7, ""

    :goto_5
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 506
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_d

    const-string v7, ""

    :goto_6
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 509
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_e

    const-string v7, ""

    :goto_7
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 512
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_f

    const-string v7, ""

    :goto_8
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 515
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-nez v7, :cond_10

    const-string v7, ""

    :goto_9
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 517
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-nez v7, :cond_11

    const-string v7, ""

    :goto_a
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 519
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 520
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 477
    :cond_8
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    .line 487
    .restart local v2       #eapType:Ljava/lang/String;
    .restart local v3       #encryptType:Ljava/lang/String;
    :cond_9
    const-string v7, "AES"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 488
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    .line 489
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 492
    .end local v3           #encryptType:Ljava/lang/String;
    :cond_a
    const-string v7, "FAST"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 493
    const-string v7, "\"fast_provisioning=3\""

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    .line 494
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v8, "\"/etc/wpa_supplicant.eap-fast-pc\""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 498
    .end local v2           #eapType:Ljava/lang/String;
    :cond_b
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    .line 499
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 504
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "auth="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v9}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    .line 506
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "keystore://CACERT_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    .line 509
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "keystore://USRCERT_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_7

    .line 512
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "keystore://USRPKEY_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_8

    .line 515
    :cond_10
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_9

    .line 517
    :cond_11
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_a

    .line 524
    :pswitch_4
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 525
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 526
    .restart local v6       #password:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEnableWapiHexCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-nez v7, :cond_12

    .line 527
    invoke-static {v6}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setWapiPsk(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 529
    :cond_12
    invoke-static {v6}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setWapiPskHex(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 533
    .end local v6           #password:Ljava/lang/String;
    :pswitch_5
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 534
    const-string v7, "1"

    invoke-static {v7}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setWapiCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 535
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 536
    .local v5, name:Ljava/lang/String;
    if-eqz v5, :cond_13

    .line 537
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keystore://CACERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setWapiAsCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 540
    :cond_13
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mClientCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    .local v0, clientname:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 542
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keystore://USRCERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setWapiUserCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 544
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keystore://USRPKEY_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setWapiUserKey(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method getWpsInfo()Landroid/net/wifi/WpsInfo;
    .locals 3

    .prologue
    .line 659
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 660
    .local v0, config:Landroid/net/wifi/WpsInfo;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 671
    const/4 v1, 0x4

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 672
    const-string v1, "WifiConfigController"

    const-string v2, "WPS not selected type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_0
    return-object v0

    .line 662
    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 675
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 676
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 678
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 679
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 680
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 665
    :pswitch_1
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 668
    :pswitch_2
    const/4 v1, 0x1

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 676
    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hasSecurity()Z
    .locals 1

    .prologue
    .line 1165
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEdit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1018
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 1012
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidPassword()Z
    .locals 2

    .prologue
    .line 1026
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyStoreSecurity()Z
    .locals 2

    .prologue
    .line 1169
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRetryPassword()Z
    .locals 2

    .prologue
    .line 1022
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWepSecurity()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1174
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const v3, 0x7f080202

    .line 1099
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_2

    .line 1100
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1101
    .local v0, cursorPosition:I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1105
    if-ltz v0, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1119
    .end local v0           #cursorPosition:I
    .end local p1
    :cond_0
    :goto_1
    return-void

    .line 1101
    .restart local v0       #cursorPosition:I
    .restart local p1
    :cond_1
    const/16 v1, 0x80

    goto :goto_0

    .line 1108
    .end local v0           #cursorPosition:I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEnableWapiHexCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_3

    .line 1109
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1110
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1112
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080201

    if-ne v1, v2, :cond_0

    .line 1113
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1114
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1116
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1123
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

    if-ne p1, v0, :cond_1

    .line 1124
    iput p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1125
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1126
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Lcom/htc/widget/HtcSpinner;

    if-ne p1, v0, :cond_2

    .line 1128
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showNetworkSetupFields()V

    .line 1129
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0

    .line 1130
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    if-ne p1, v0, :cond_3

    .line 1131
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 1132
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0

    .line 1133
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    if-eq p1, v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    if-ne p1, v0, :cond_5

    .line 1135
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->updateEAPFields()V

    .line 1136
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0

    .line 1138
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 1139
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1162
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1095
    return-void
.end method
