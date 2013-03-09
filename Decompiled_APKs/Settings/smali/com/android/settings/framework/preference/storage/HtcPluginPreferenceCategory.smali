.class public Lcom/android/settings/framework/preference/storage/HtcPluginPreferenceCategory;
.super Lcom/htc/preference/HtcPreferenceCategory;
.source "HtcPluginPreferenceCategory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mRoot:Lcom/htc/preference/HtcPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/android/settings/framework/preference/storage/HtcPluginPreferenceCategory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcPluginPreferenceCategory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 1
    .parameter "context"
    .parameter "root"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcPluginPreferenceCategory;->mRoot:Lcom/htc/preference/HtcPreferenceScreen;

    .line 15
    iput-object p2, p0, Lcom/android/settings/framework/preference/storage/HtcPluginPreferenceCategory;->mRoot:Lcom/htc/preference/HtcPreferenceScreen;

    .line 16
    return-void
.end method

.method private isNeedRemoveMySelf()V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcPluginPreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcPluginPreferenceCategory;->mRoot:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public removePreference(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    .line 25
    .local v0, isSuccessful:Z
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcPluginPreferenceCategory;->isNeedRemoveMySelf()V

    .line 26
    return v0
.end method
