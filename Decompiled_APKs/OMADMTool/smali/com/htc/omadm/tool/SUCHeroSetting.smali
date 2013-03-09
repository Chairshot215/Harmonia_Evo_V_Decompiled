.class public Lcom/htc/omadm/tool/SUCHeroSetting;
.super Landroid/preference/PreferenceActivity;
.source "SUCHeroSetting.java"


# static fields
.field private static final DBG:Z = true

.field public static STR_DEFAULT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SUCHeroSetting"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

.field mFutureLibBind:Z

.field private root:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, ""

    sput-object v0, Lcom/htc/omadm/tool/SUCHeroSetting;->STR_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mFutureLibBind:Z

    .line 253
    new-instance v0, Lcom/htc/omadm/tool/SUCHeroSetting$8;

    invoke-direct {v0, p0}, Lcom/htc/omadm/tool/SUCHeroSetting$8;-><init>(Lcom/htc/omadm/tool/SUCHeroSetting;)V

    iput-object v0, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private ShowInformationDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "fn"
    .parameter "info"

    .prologue
    .line 231
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f030003

    new-instance v2, Lcom/htc/omadm/tool/SUCHeroSetting$7;

    invoke-direct {v2, p0}, Lcom/htc/omadm/tool/SUCHeroSetting$7;-><init>(Lcom/htc/omadm/tool/SUCHeroSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/htc/omadm/tool/SUCHeroSetting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/htc/omadm/tool/SUCHeroSetting;->ShowInformationDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private bind_isOK()Z
    .locals 3

    .prologue
    .line 246
    :goto_0
    iget-boolean v1, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mFutureLibBind:Z

    if-nez v1, :cond_0

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/omadm/aidl/IDmFutureDial;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/omadm/tool/SUCHeroSetting;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mFutureLibBind:Z

    goto :goto_0

    .line 250
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-boolean v1, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mFutureLibBind:Z

    return v1
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 10

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/htc/omadm/tool/SUCHeroSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->root:Landroid/preference/PreferenceScreen;

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/omadm/tool/SUCHeroSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 65
    .local v1, DevsettingPref:Landroid/preference/PreferenceScreen;
    const-string v7, "devsetting"

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 66
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mContext:Landroid/content/Context;

    const v8, 0x7f030009

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mContext:Landroid/content/Context;

    const v8, 0x7f030015

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v7, Lcom/htc/omadm/tool/SUCHeroSetting$1;

    invoke-direct {v7, p0}, Lcom/htc/omadm/tool/SUCHeroSetting$1;-><init>(Lcom/htc/omadm/tool/SUCHeroSetting;)V

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 90
    invoke-virtual {p0}, Lcom/htc/omadm/tool/SUCHeroSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 91
    .local v5, TestsettingPref:Landroid/preference/PreferenceScreen;
    const-string v7, "testsetting"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 92
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mContext:Landroid/content/Context;

    const v8, 0x7f03000a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mContext:Landroid/content/Context;

    const v8, 0x7f030016

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v7, Lcom/htc/omadm/tool/SUCHeroSetting$2;

    invoke-direct {v7, p0}, Lcom/htc/omadm/tool/SUCHeroSetting$2;-><init>(Lcom/htc/omadm/tool/SUCHeroSetting;)V

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 116
    invoke-virtual {p0}, Lcom/htc/omadm/tool/SUCHeroSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 117
    .local v0, BfsettingPref:Landroid/preference/PreferenceScreen;
    const-string v7, "bfsetting"

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 118
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mContext:Landroid/content/Context;

    const v8, 0x7f03000b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mContext:Landroid/content/Context;

    const v8, 0x7f030017

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v7, Lcom/htc/omadm/tool/SUCHeroSetting$3;

    invoke-direct {v7, p0}, Lcom/htc/omadm/tool/SUCHeroSetting$3;-><init>(Lcom/htc/omadm/tool/SUCHeroSetting;)V

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 139
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 142
    invoke-virtual {p0}, Lcom/htc/omadm/tool/SUCHeroSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 143
    .local v3, OrtsettingPref:Landroid/preference/PreferenceScreen;
    const-string v7, "ortsetting"

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 144
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mContext:Landroid/content/Context;

    const v8, 0x7f03000c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mContext:Landroid/content/Context;

    const v8, 0x7f030018

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    new-instance v7, Lcom/htc/omadm/tool/SUCHeroSetting$4;

    invoke-direct {v7, p0}, Lcom/htc/omadm/tool/SUCHeroSetting$4;-><init>(Lcom/htc/omadm/tool/SUCHeroSetting;)V

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 165
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 168
    invoke-virtual {p0}, Lcom/htc/omadm/tool/SUCHeroSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 169
    .local v4, ProductionsettingPref:Landroid/preference/PreferenceScreen;
    const-string v7, "productionsetting"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 170
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mContext:Landroid/content/Context;

    const v8, 0x7f03000d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mContext:Landroid/content/Context;

    const v8, 0x7f030019

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    new-instance v7, Lcom/htc/omadm/tool/SUCHeroSetting$5;

    invoke-direct {v7, p0}, Lcom/htc/omadm/tool/SUCHeroSetting$5;-><init>(Lcom/htc/omadm/tool/SUCHeroSetting;)V

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 191
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 194
    invoke-virtual {p0}, Lcom/htc/omadm/tool/SUCHeroSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 195
    .local v2, OmatestsettingPref:Landroid/preference/PreferenceScreen;
    const-string v7, "omatestsetting"

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 196
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mContext:Landroid/content/Context;

    const v8, 0x7f03000e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mContext:Landroid/content/Context;

    const v8, 0x7f03001a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v7, Lcom/htc/omadm/tool/SUCHeroSetting$6;

    invoke-direct {v7, p0}, Lcom/htc/omadm/tool/SUCHeroSetting$6;-><init>(Lcom/htc/omadm/tool/SUCHeroSetting;)V

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 217
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v0           #BfsettingPref:Landroid/preference/PreferenceScreen;
    .end local v1           #DevsettingPref:Landroid/preference/PreferenceScreen;
    .end local v2           #OmatestsettingPref:Landroid/preference/PreferenceScreen;
    .end local v3           #OrtsettingPref:Landroid/preference/PreferenceScreen;
    .end local v4           #ProductionsettingPref:Landroid/preference/PreferenceScreen;
    .end local v5           #TestsettingPref:Landroid/preference/PreferenceScreen;
    :goto_0
    iget-object v7, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->root:Landroid/preference/PreferenceScreen;

    return-object v7

    .line 219
    :catch_0
    move-exception v6

    .line 221
    .local v6, ex:Ljava/lang/Exception;
    const-string v7, "SUCHeroSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    iput-object p0, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/htc/omadm/tool/SUCHeroSetting;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/tool/SUCHeroSetting;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 54
    invoke-direct {p0}, Lcom/htc/omadm/tool/SUCHeroSetting;->bind_isOK()Z

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/omadm/tool/SUCHeroSetting;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/tool/SUCHeroSetting;->unbindService(Landroid/content/ServiceConnection;)V

    .line 268
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 269
    return-void
.end method
