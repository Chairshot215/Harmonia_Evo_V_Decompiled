.class public Lcom/android/settings/applications/HtcAppAssociationsSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAppAssociationsSettings.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "app_associations"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/settings/applications/HtcAppAssociationsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/HtcAppAssociationsSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    .line 57
    .local v1, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 58
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v3, 0x7f0c0728

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 59
    const-string v3, "app_associations"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 64
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcPhoneAppAssociationPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcPhoneAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 68
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 71
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcEmailAddAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcEmailAddAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 72
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 73
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 76
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcPhysicalAddAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcPhysicalAddAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 77
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 78
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 81
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcWebAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcWebAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 82
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 83
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 86
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcMapAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcMapAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 87
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 88
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 91
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcStreamingLinkAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcStreamingLinkAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 92
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 93
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 96
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcAudioAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcAudioAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 97
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 98
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 101
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcVideoAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcVideoAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 102
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 103
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->requestHandlers()V

    .line 48
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
