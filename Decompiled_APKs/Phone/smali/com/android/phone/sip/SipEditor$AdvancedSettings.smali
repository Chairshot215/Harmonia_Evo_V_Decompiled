.class Lcom/android/phone/sip/SipEditor$AdvancedSettings;
.super Ljava/lang/Object;
.source "SipEditor.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/sip/SipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvancedSettings"
.end annotation


# instance fields
.field private mAdvancedSettingsTrigger:Lcom/htc/preference/HtcPreference;

.field private mPreferences:[Lcom/htc/preference/HtcPreference;

.field private mShowing:Z

.field final synthetic this$0:Lcom/android/phone/sip/SipEditor;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipEditor;)V
    .locals 2
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mShowing:Z

    .line 647
    invoke-virtual {p1}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    const v1, 0x7f0e0458

    invoke-virtual {p1, v1}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Lcom/htc/preference/HtcPreference;

    .line 649
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 651
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->loadAdvancedPreferences()V

    .line 652
    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/sip/SipEditor$AdvancedSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->show()V

    return-void
.end method

.method private hide()V
    .locals 7

    .prologue
    .line 683
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mShowing:Z

    .line 684
    iget-object v5, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Lcom/htc/preference/HtcPreference;

    const v6, 0x7f0e0460

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 685
    iget-object v5, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-virtual {v5}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 686
    .local v4, screen:Lcom/htc/preference/HtcPreferenceGroup;
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mPreferences:[Lcom/htc/preference/HtcPreference;

    .local v0, arr$:[Lcom/htc/preference/HtcPreference;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 687
    .local v3, pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    .end local v3           #pref:Lcom/htc/preference/HtcPreference;
    :cond_0
    return-void
.end method

.method private loadAdvancedPreferences()V
    .locals 9

    .prologue
    .line 655
    iget-object v7, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-virtual {v7}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    .line 657
    .local v6, screen:Lcom/htc/preference/HtcPreferenceGroup;
    iget-object v7, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/phone/sip/SipEditor;

    const v8, 0x7f050026

    invoke-virtual {v7, v8}, Lcom/android/phone/sip/SipEditor;->addPreferencesFromResource(I)V

    .line 658
    iget-object v7, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/phone/sip/SipEditor;

    const v8, 0x7f0e0478

    invoke-virtual {v7, v8}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    .line 660
    .local v0, group:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 662
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v7

    new-array v7, v7, [Lcom/htc/preference/HtcPreference;

    iput-object v7, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mPreferences:[Lcom/htc/preference/HtcPreference;

    .line 663
    invoke-virtual {v6}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 664
    .local v3, order:I
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v7, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mPreferences:[Lcom/htc/preference/HtcPreference;

    array-length v2, v7

    .local v2, n:I
    move v4, v3

    .end local v3           #order:I
    .local v4, order:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 665
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 666
    .local v5, pref:Lcom/htc/preference/HtcPreference;
    add-int/lit8 v3, v4, 0x1

    .end local v4           #order:I
    .restart local v3       #order:I
    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 667
    iget-object v7, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/phone/sip/SipEditor;

    #calls: Lcom/android/phone/sip/SipEditor;->setupPreference(Lcom/htc/preference/HtcPreference;)V
    invoke-static {v7, v5}, Lcom/android/phone/sip/SipEditor;->access$1100(Lcom/android/phone/sip/SipEditor;Lcom/htc/preference/HtcPreference;)V

    .line 668
    iget-object v7, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mPreferences:[Lcom/htc/preference/HtcPreference;

    aput-object v5, v7, v1

    .line 664
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3           #order:I
    .restart local v4       #order:I
    goto :goto_0

    .line 670
    .end local v5           #pref:Lcom/htc/preference/HtcPreference;
    :cond_0
    return-void
.end method

.method private show()V
    .locals 8

    .prologue
    .line 673
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mShowing:Z

    .line 674
    iget-object v5, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Lcom/htc/preference/HtcPreference;

    const v6, 0x7f0e0461

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 675
    iget-object v5, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-virtual {v5}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 676
    .local v4, screen:Lcom/htc/preference/HtcPreferenceGroup;
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mPreferences:[Lcom/htc/preference/HtcPreference;

    .local v0, arr$:[Lcom/htc/preference/HtcPreference;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 677
    .local v3, pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 678
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add pref "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": order="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreference;->getOrder()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 680
    .end local v3           #pref:Lcom/htc/preference/HtcPreference;
    :cond_0
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 692
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "optional settings clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-boolean v0, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mShowing:Z

    if-nez v0, :cond_0

    .line 694
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->show()V

    .line 698
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 696
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->hide()V

    goto :goto_0
.end method
