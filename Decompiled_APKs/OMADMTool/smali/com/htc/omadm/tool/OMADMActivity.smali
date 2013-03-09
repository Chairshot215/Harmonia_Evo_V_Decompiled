.class public Lcom/htc/omadm/tool/OMADMActivity;
.super Landroid/preference/PreferenceActivity;
.source "OMADMActivity.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OMADMActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private root:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/htc/omadm/tool/OMADMActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/tool/OMADMActivity;->root:Landroid/preference/PreferenceScreen;

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/omadm/tool/OMADMActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 46
    .local v1, LabServerSettingPref:Landroid/preference/PreferenceScreen;
    const-string v3, "labserversetting"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 47
    iget-object v3, p0, Lcom/htc/omadm/tool/OMADMActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f030005

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v3, p0, Lcom/htc/omadm/tool/OMADMActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f03000f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v3, Lcom/htc/omadm/tool/OMADMActivity$1;

    invoke-direct {v3, p0}, Lcom/htc/omadm/tool/OMADMActivity$1;-><init>(Lcom/htc/omadm/tool/OMADMActivity;)V

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 58
    iget-object v3, p0, Lcom/htc/omadm/tool/OMADMActivity;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 61
    invoke-virtual {p0}, Lcom/htc/omadm/tool/OMADMActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 62
    .local v0, CustomizeSettingPref:Landroid/preference/PreferenceScreen;
    const-string v3, "customizesetting"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lcom/htc/omadm/tool/OMADMActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f030006

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v3, p0, Lcom/htc/omadm/tool/OMADMActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f030010

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v3, Lcom/htc/omadm/tool/OMADMActivity$2;

    invoke-direct {v3, p0}, Lcom/htc/omadm/tool/OMADMActivity$2;-><init>(Lcom/htc/omadm/tool/OMADMActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 74
    iget-object v3, p0, Lcom/htc/omadm/tool/OMADMActivity;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0           #CustomizeSettingPref:Landroid/preference/PreferenceScreen;
    .end local v1           #LabServerSettingPref:Landroid/preference/PreferenceScreen;
    :goto_0
    iget-object v3, p0, Lcom/htc/omadm/tool/OMADMActivity;->root:Landroid/preference/PreferenceScreen;

    return-object v3

    .line 76
    :catch_0
    move-exception v2

    .line 78
    .local v2, ex:Ljava/lang/Exception;
    const-string v3, "OMADMActivity"

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

    .line 80
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iput-object p0, p0, Lcom/htc/omadm/tool/OMADMActivity;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/htc/omadm/tool/OMADMActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/tool/OMADMActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 36
    return-void
.end method
