.class public Lcom/google/android/gsf/settings/SettingsTosActivity;
.super Landroid/app/Activity;
.source "SettingsTosActivity.java"


# static fields
.field protected static final LOCAL_LOGV:Z


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mHelper:Lcom/google/android/common/GoogleWebContentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "SettingsTosActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/settings/SettingsTosActivity;->LOCAL_LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/settings/SettingsTosActivity;)Lcom/google/android/common/GoogleWebContentHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    return-object v0
.end method

.method private makeDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 136
    const v2, 0x7f080192

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, title:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-virtual {v2}, Lcom/google/android/common/GoogleWebContentHelper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/android/gsf/settings/SettingsTosActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/settings/SettingsTosActivity$2;-><init>(Lcom/google/android/gsf/settings/SettingsTosActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/android/gsf/settings/SettingsTosActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/settings/SettingsTosActivity$1;-><init>(Lcom/google/android/gsf/settings/SettingsTosActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "settings_tos_pretty_url"

    invoke-static {v9, v10}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, prettyUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "settings_tos_url"

    invoke-static {v9, v10}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, url:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 67
    sget-boolean v9, Lcom/google/android/gsf/settings/SettingsTosActivity;->LOCAL_LOGV:Z

    if-eqz v9, :cond_0

    const-string v9, "SettingsTosActivity"

    const-string v10, "settings_tos_url not in gservices, using fallback: http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    const-string v8, "http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html"

    .line 73
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, lang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, country:Ljava/lang/String;
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 82
    .local v7, tm:Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 83
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v9, "%m"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 89
    const/4 v6, 0x0

    .line 90
    .local v6, success:Z
    if-eqz v7, :cond_3

    .line 91
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, mccMnc:Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 95
    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_0
    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 96
    .local v3, mcc:I
    if-eqz v3, :cond_3

    .line 97
    const-string v9, "%m"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 98
    const/4 v6, 0x1

    .line 106
    .end local v3           #mcc:I
    .end local v4           #mccMnc:Ljava/lang/String;
    :cond_3
    :goto_0
    if-nez v6, :cond_4

    .line 108
    const-string v9, "%m"

    const-string v10, "%s"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 112
    .end local v6           #success:Z
    :cond_4
    const-string v9, "%s"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 113
    const-string v9, "%s"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 117
    :cond_5
    const-string v9, "%y"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 118
    const-string v9, "%y"

    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 121
    :cond_6
    const-string v9, "%z"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 122
    const-string v9, "%z"

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 125
    :cond_7
    new-instance v9, Lcom/google/android/common/GoogleWebContentHelper;

    invoke-direct {v9, p0}, Lcom/google/android/common/GoogleWebContentHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8, v5}, Lcom/google/android/common/GoogleWebContentHelper;->setUrls(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v9

    const v10, 0x7f080193

    invoke-virtual {p0, v10}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/common/GoogleWebContentHelper;->setUnsuccessfulMessage(Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/common/GoogleWebContentHelper;->loadUrl()Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    .line 131
    invoke-direct {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->makeDialog()Landroid/app/Dialog;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mDialog:Landroid/app/Dialog;

    .line 132
    iget-object v9, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 133
    return-void

    .line 100
    .restart local v4       #mccMnc:Ljava/lang/String;
    .restart local v6       #success:Z
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v9, "SettingsTosActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad sim operator string ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
