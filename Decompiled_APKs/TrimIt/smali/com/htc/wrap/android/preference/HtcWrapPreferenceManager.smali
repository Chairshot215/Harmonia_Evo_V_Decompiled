.class public Lcom/htc/wrap/android/preference/HtcWrapPreferenceManager;
.super Ljava/lang/Object;
.source "HtcWrapPreferenceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreferenceManager(Landroid/app/Activity;I)Landroid/preference/PreferenceManager;
    .locals 1
    .parameter "activity"
    .parameter "firstRequestCode"

    .prologue
    .line 12
    new-instance v0, Landroid/preference/PreferenceManager;

    invoke-direct {v0, p0, p1}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    return-object v0
.end method

.method public static inflateFromResource(Landroid/preference/PreferenceManager;Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "pm"
    .parameter "context"
    .parameter "resId"
    .parameter "rootPreferences"

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method
