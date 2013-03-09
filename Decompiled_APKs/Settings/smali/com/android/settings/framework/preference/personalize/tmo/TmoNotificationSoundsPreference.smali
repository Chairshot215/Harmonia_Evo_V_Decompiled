.class public Lcom/android/settings/framework/preference/personalize/tmo/TmoNotificationSoundsPreference;
.super Lcom/android/settings/DefaultRingtonePreference;
.source "TmoNotificationSoundsPreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "NOTIFICATIONS_SOUNDS"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/personalize/tmo/TmoNotificationSoundsPreference;->initialize(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/personalize/tmo/TmoNotificationSoundsPreference;->initialize(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoNotificationSoundsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    const-string v0, "NOTIFICATIONS_SOUNDS"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoNotificationSoundsPreference;->setKey(Ljava/lang/String;)V

    .line 53
    :cond_0
    const v0, 0x7f0200bd

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoNotificationSoundsPreference;->setIcon(I)V

    .line 54
    const v0, 0x7f0c0085

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoNotificationSoundsPreference;->setTitle(I)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoNotificationSoundsPreference;->setPersistent(Z)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/personalize/tmo/TmoNotificationSoundsPreference;->setShowDefault(Z)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/personalize/tmo/TmoNotificationSoundsPreference;->setShowSilent(Z)V

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoNotificationSoundsPreference;->setRingtoneType(I)V

    .line 62
    return-void
.end method
