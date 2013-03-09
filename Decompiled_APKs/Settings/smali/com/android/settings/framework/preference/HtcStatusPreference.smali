.class public Lcom/android/settings/framework/preference/HtcStatusPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcStatusPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x0

    const v1, 0x101008d

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcStatusPreference;->setSelectable(Z)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    const v0, 0x101008d

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcStatusPreference;->setSelectable(Z)V

    .line 27
    return-void
.end method
