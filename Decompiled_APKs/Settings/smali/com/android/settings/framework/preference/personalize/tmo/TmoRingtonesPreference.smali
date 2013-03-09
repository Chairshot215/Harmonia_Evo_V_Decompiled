.class public Lcom/android/settings/framework/preference/personalize/tmo/TmoRingtonesPreference;
.super Lcom/android/settings/DefaultRingtonePreference;
.source "TmoRingtonesPreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "TMO_RINGTONES"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRingtonesPreference;->initialize(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRingtonesPreference;->initialize(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRingtonesPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    const-string v0, "TMO_RINGTONES"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRingtonesPreference;->setKey(Ljava/lang/String;)V

    .line 49
    :cond_0
    const v0, 0x7f0200be

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRingtonesPreference;->setIcon(I)V

    .line 50
    const v0, 0x7f0c0095

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRingtonesPreference;->setTitle(I)V

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRingtonesPreference;->setPersistent(Z)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRingtonesPreference;->setShowDefault(Z)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRingtonesPreference;->setShowSilent(Z)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRingtonesPreference;->setRingtoneType(I)V

    .line 58
    return-void
.end method
