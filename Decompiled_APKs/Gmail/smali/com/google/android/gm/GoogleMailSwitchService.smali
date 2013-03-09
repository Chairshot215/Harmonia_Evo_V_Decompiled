.class public Lcom/google/android/gm/GoogleMailSwitchService;
.super Landroid/app/IntentService;
.source "GoogleMailSwitchService.java"


# static fields
.field private static final GMAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final GOOGLE_MAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.widget.GmailWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/GoogleMailSwitchService;->GMAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 37
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.widget.GoogleMailWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/GoogleMailSwitchService;->GOOGLE_MAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "GoogleMailSwitchService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private deviceMissingMobileData()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 221
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/google/android/gm/GoogleMailSwitchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 223
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 225
    .local v1, mobileNetwork:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v4

    .line 231
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 232
    .local v2, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v6, :cond_2

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v6, :cond_3

    .line 234
    :cond_2
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/google/android/gm/GoogleMailSwitchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 236
    .local v3, tm:Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-eq v6, v4, :cond_0

    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_3
    move v4, v5

    .line 245
    goto :goto_0
.end method

.method private enableGoogleMailActivities(Z)V
    .locals 11
    .parameter "useGoogleMail"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gm/GoogleMailSwitchService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 114
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v7, "com.google.android.gm"

    const-string v8, "com.google.android.gm.ConversationListActivityGmail"

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v1, gmailList:Landroid/content/ComponentName;
    new-instance v4, Landroid/content/ComponentName;

    const-string v7, "com.google.android.gm"

    const-string v8, "com.google.android.gm.ConversationListActivityGoogleMail"

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v4, googleMailList:Landroid/content/ComponentName;
    new-instance v0, Landroid/content/ComponentName;

    const-string v7, "com.google.android.gm"

    const-string v8, "com.google.android.gm.ComposeActivityGmail"

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v0, gmailCompose:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/ComponentName;

    const-string v7, "com.google.android.gm"

    const-string v8, "com.google.android.gm.ComposeActivityGoogleMail"

    invoke-direct {v3, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v3, googleMailCompose:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/ComponentName;

    const-string v7, "com.google.android.gm"

    const-string v8, "com.google.android.gm.MailboxSelectionActivity"

    invoke-direct {v2, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v2, gmailMailboxSelection:Landroid/content/ComponentName;
    new-instance v5, Landroid/content/ComponentName;

    const-string v7, "com.google.android.gm"

    const-string v8, "com.google.android.gm.MailboxSelectionActivityGoogleMail"

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v5, googleMailMailboxSelection:Landroid/content/ComponentName;
    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {v6, v1, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 145
    invoke-virtual {v6, v4, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 149
    invoke-virtual {v6, v0, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 151
    invoke-virtual {v6, v3, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 155
    invoke-virtual {v6, v2, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 158
    invoke-virtual {v6, v5, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 163
    sget-object v7, Lcom/google/android/gm/GoogleMailSwitchService;->GMAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 166
    sget-object v7, Lcom/google/android/gm/GoogleMailSwitchService;->GOOGLE_MAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 199
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/GoogleMailSwitchService;->setLabelShortcutActivityState(Z)V

    .line 200
    return-void

    .line 172
    :cond_0
    invoke-virtual {v6, v1, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 174
    invoke-virtual {v6, v4, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 177
    invoke-virtual {v6, v0, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 179
    invoke-virtual {v6, v3, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 183
    invoke-virtual {v6, v2, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 185
    invoke-virtual {v6, v5, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 190
    sget-object v7, Lcom/google/android/gm/GoogleMailSwitchService;->GMAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 193
    sget-object v7, Lcom/google/android/gm/GoogleMailSwitchService;->GOOGLE_MAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method

.method private setLabelShortcutActivityState(Z)V
    .locals 1
    .parameter "useGoogleMail"

    .prologue
    .line 209
    invoke-static {p0}, Lcom/google/android/gm/Utils;->shortcutActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-static {p0, p1}, Lcom/google/android/gm/Utils;->enableLabelShortcutActivity(Landroid/content/Context;Z)V

    .line 212
    :cond_0
    return-void
.end method

.method private validateWidgetProvider()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gm/GoogleMailSwitchService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 94
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/google/android/gm/Utils;->haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 95
    .local v1, enableGoogleMailFeatures:Z
    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/android/gm/GoogleMailSwitchService;->GOOGLE_MAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 97
    .local v2, enabledWidgetComponent:Landroid/content/ComponentName;
    :goto_0
    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/android/gm/GoogleMailSwitchService;->GMAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 99
    .local v0, disabledWidgetComponent:Landroid/content/ComponentName;
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 102
    invoke-virtual {v3, v2, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 105
    return-void

    .line 95
    .end local v0           #disabledWidgetComponent:Landroid/content/ComponentName;
    .end local v2           #enabledWidgetComponent:Landroid/content/ComponentName;
    :cond_0
    sget-object v2, Lcom/google/android/gm/GoogleMailSwitchService;->GMAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    goto :goto_0

    .line 97
    .restart local v2       #enabledWidgetComponent:Landroid/content/ComponentName;
    :cond_1
    sget-object v0, Lcom/google/android/gm/GoogleMailSwitchService;->GOOGLE_MAIL_WIDGET_PROVIDER_COMPONENT_NAME:Landroid/content/ComponentName;

    goto :goto_1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 50
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.google.android.googleapps.GOOGLE_MAIL_SWITCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    const-string v3, "useGoogleMail"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 55
    .local v2, useGoogleMail:Z
    invoke-direct {p0, v2}, Lcom/google/android/gm/GoogleMailSwitchService;->enableGoogleMailActivities(Z)V

    .line 87
    .end local v2           #useGoogleMail:Z
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v3, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gm/GoogleMailSwitchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_country"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, countryCode:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 61
    const-string v3, "Gmail"

    const-string v4, "Received country code of: %s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 64
    invoke-direct {p0}, Lcom/google/android/gm/GoogleMailSwitchService;->deviceMissingMobileData()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "de"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    invoke-direct {p0, v7}, Lcom/google/android/gm/GoogleMailSwitchService;->enableGoogleMailActivities(Z)V

    .line 71
    :cond_2
    invoke-static {p0}, Lcom/google/android/gm/GservicesChangedReceiver;->disableReceiver(Landroid/content/Context;)V

    goto :goto_0

    .line 73
    .end local v1           #countryCode:Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    invoke-direct {p0}, Lcom/google/android/gm/GoogleMailSwitchService;->validateWidgetProvider()V

    goto :goto_0

    .line 76
    :cond_4
    const-string v3, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-static {p0}, Lcom/google/android/gm/GoogleMailDeviceStartupReceiver;->enableReceiver(Landroid/content/Context;)V

    .line 85
    invoke-direct {p0}, Lcom/google/android/gm/GoogleMailSwitchService;->validateWidgetProvider()V

    goto :goto_0
.end method
