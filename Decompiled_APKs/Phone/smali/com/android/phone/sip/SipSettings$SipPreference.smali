.class Lcom/android/phone/sip/SipSettings$SipPreference;
.super Lcom/htc/preference/HtcPreference;
.source "SipSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/sip/SipSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipPreference"
.end annotation


# instance fields
.field mProfile:Landroid/net/sip/SipProfile;

.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;Landroid/content/Context;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "p"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    .line 107
    invoke-direct {p0, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {p0, p3}, Lcom/android/phone/sip/SipSettings$SipPreference;->setProfile(Landroid/net/sip/SipProfile;)V

    .line 109
    return-void
.end method


# virtual methods
.method getProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->mProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method setProfile(Landroid/net/sip/SipProfile;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->mProfile:Landroid/net/sip/SipProfile;

    .line 117
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    #calls: Lcom/android/phone/sip/SipSettings;->getProfileName(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/phone/sip/SipSettings;->access$000(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipSettings$SipPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    #getter for: Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v0}, Lcom/android/phone/sip/SipSettings;->access$100(Lcom/android/phone/sip/SipSettings;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    const v1, 0x7f0e043d

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipSettings$SipPreference;->updateSummary(Ljava/lang/String;)V

    .line 121
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    const v1, 0x7f0e0440

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method updateSummary(Ljava/lang/String;)V
    .locals 8
    .parameter "registrationStatus"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 124
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v1

    .line 125
    .local v1, profileUid:I
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    #getter for: Lcom/android/phone/sip/SipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v4}, Lcom/android/phone/sip/SipSettings;->access$100(Lcom/android/phone/sip/SipSettings;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 133
    .local v0, isPrimary:Z
    const-string v2, ""

    .line 134
    .local v2, summary:Ljava/lang/String;
    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    #getter for: Lcom/android/phone/sip/SipSettings;->mUid:I
    invoke-static {v3}, Lcom/android/phone/sip/SipSettings;->access$200(Lcom/android/phone/sip/SipSettings;)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    const v4, 0x7f0e0448

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    #calls: Lcom/android/phone/sip/SipSettings;->getPackageNameFromUid(I)Ljava/lang/String;
    invoke-static {v6, v1}, Lcom/android/phone/sip/SipSettings;->access$300(Lcom/android/phone/sip/SipSettings;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/sip/SipSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 144
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/phone/sip/SipSettings$SipPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    return-void

    .line 138
    :cond_0
    if-eqz v0, :cond_1

    .line 139
    iget-object v3, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    const v4, 0x7f0e043c

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/sip/SipSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 142
    :cond_1
    move-object v2, p1

    goto :goto_0
.end method
