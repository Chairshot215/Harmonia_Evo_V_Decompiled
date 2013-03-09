.class public Lcom/htc/omadm/tool/SetGetMenuActivity;
.super Landroid/preference/PreferenceActivity;
.source "SetGetMenuActivity.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SetGetMenuActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private root:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/htc/omadm/tool/SetGetMenuActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/tool/SetGetMenuActivity;->root:Landroid/preference/PreferenceScreen;

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/omadm/tool/SetGetMenuActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 37
    .local v1, SetInfoSettingPref:Landroid/preference/PreferenceScreen;
    const-string v3, "setinfosetting"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 38
    iget-object v3, p0, Lcom/htc/omadm/tool/SetGetMenuActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f030007

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v3, p0, Lcom/htc/omadm/tool/SetGetMenuActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f030011

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 40
    new-instance v3, Lcom/htc/omadm/tool/SetGetMenuActivity$1;

    invoke-direct {v3, p0}, Lcom/htc/omadm/tool/SetGetMenuActivity$1;-><init>(Lcom/htc/omadm/tool/SetGetMenuActivity;)V

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 49
    iget-object v3, p0, Lcom/htc/omadm/tool/SetGetMenuActivity;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 52
    invoke-virtual {p0}, Lcom/htc/omadm/tool/SetGetMenuActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 53
    .local v0, GetInfoSettingPref:Landroid/preference/PreferenceScreen;
    const-string v3, "getinfosetting"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcom/htc/omadm/tool/SetGetMenuActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f030008

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v3, p0, Lcom/htc/omadm/tool/SetGetMenuActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f030012

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v3, Lcom/htc/omadm/tool/SetGetMenuActivity$2;

    invoke-direct {v3, p0}, Lcom/htc/omadm/tool/SetGetMenuActivity$2;-><init>(Lcom/htc/omadm/tool/SetGetMenuActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0           #GetInfoSettingPref:Landroid/preference/PreferenceScreen;
    .end local v1           #SetInfoSettingPref:Landroid/preference/PreferenceScreen;
    :goto_0
    iget-object v3, p0, Lcom/htc/omadm/tool/SetGetMenuActivity;->root:Landroid/preference/PreferenceScreen;

    return-object v3

    .line 67
    :catch_0
    move-exception v2

    .line 69
    .local v2, ex:Ljava/lang/Exception;
    const-string v3, "SetGetMenuActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iput-object p0, p0, Lcom/htc/omadm/tool/SetGetMenuActivity;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/htc/omadm/tool/SetGetMenuActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/tool/SetGetMenuActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 27
    return-void
.end method
