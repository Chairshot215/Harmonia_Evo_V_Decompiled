.class public Lcom/sprint/ce/updater/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 9
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/sprint/ce/updater/Settings;->addPreferencesFromResource(I)V

    .line 11
    return-void
.end method
