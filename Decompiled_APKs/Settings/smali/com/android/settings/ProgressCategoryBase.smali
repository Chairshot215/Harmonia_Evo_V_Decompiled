.class public abstract Lcom/android/settings/ProgressCategoryBase;
.super Lcom/htc/preference/HtcPreferenceCategory;
.source "ProgressCategoryBase.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public abstract setProgress(Z)V
.end method
