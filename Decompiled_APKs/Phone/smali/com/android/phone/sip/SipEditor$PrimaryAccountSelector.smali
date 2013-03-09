.class Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;
.super Ljava/lang/Object;
.source "SipEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/sip/SipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrimaryAccountSelector"
.end annotation


# instance fields
.field private mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private final mWasPrimaryAccount:Z

.field final synthetic this$0:Lcom/android/phone/sip/SipEditor;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .locals 7
    .parameter
    .parameter "profile"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 606
    iput-object p1, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 607
    invoke-virtual {p1}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    const v5, 0x7f0e0477

    invoke-virtual {p1, v5}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 609
    #getter for: Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {p1}, Lcom/android/phone/sip/SipEditor;->access$1000(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->hasPrimaryAccount()Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    .line 611
    .local v1, noPrimaryAccountSet:Z
    :goto_0
    if-nez p2, :cond_3

    move v0, v3

    .line 612
    .local v0, editNewProfile:Z
    :goto_1
    if-nez v0, :cond_4

    #getter for: Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {p1}, Lcom/android/phone/sip/SipEditor;->access$1000(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/phone/sip/SipSharedPreferences;->isPrimaryAccount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mWasPrimaryAccount:Z

    .line 616
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " noPrimaryAccountSet: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " editNewProfile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mWasPrimaryAccount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mWasPrimaryAccount:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v2, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v5, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mWasPrimaryAccount:Z

    if-nez v5, :cond_0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 622
    return-void

    .end local v0           #editNewProfile:Z
    .end local v1           #noPrimaryAccountSet:Z
    :cond_2
    move v1, v4

    .line 609
    goto :goto_0

    .restart local v1       #noPrimaryAccountSet:Z
    :cond_3
    move v0, v4

    .line 611
    goto :goto_1

    .restart local v0       #editNewProfile:Z
    :cond_4
    move v2, v4

    .line 612
    goto :goto_2
.end method


# virtual methods
.method commit(Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 630
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->this$0:Lcom/android/phone/sip/SipEditor;

    #getter for: Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v0}, Lcom/android/phone/sip/SipEditor;->access$1000(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSharedPreferences;->setPrimaryAccount(Ljava/lang/String;)V

    .line 635
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " primary account changed to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->this$0:Lcom/android/phone/sip/SipEditor;

    #getter for: Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v2}, Lcom/android/phone/sip/SipEditor;->access$1000(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void

    .line 632
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mWasPrimaryAccount:Z

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->this$0:Lcom/android/phone/sip/SipEditor;

    #getter for: Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v0}, Lcom/android/phone/sip/SipEditor;->access$1000(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/sip/SipSharedPreferences;->unsetPrimaryAccount()V

    goto :goto_0
.end method

.method isSelected()Z
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method
