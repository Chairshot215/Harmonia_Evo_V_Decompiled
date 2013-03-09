.class public Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;
.super Landroid/preference/DialogPreference;
.source "OkCancelPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 37
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;->mListener:Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference$Listener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;->mListener:Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference$Listener;->onDialogClosed(Z)V

    .line 40
    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference;->mListener:Lcom/google/android/googlequicksearchbox/preferences/OkCancelPreference$Listener;

    .line 44
    return-void
.end method
