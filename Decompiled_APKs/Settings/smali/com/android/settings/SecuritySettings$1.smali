.class Lcom/android/settings/SecuritySettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "serviceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    goto :goto_0
.end method
