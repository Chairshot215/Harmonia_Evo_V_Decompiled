.class public final Lcom/android/settings/framework/activity/HtcEntryProxy;
.super Ljava/lang/Object;
.source "HtcEntryProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeaders(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    const/16 v5, 0x1a

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .local v1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .local v2, entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const v5, 0x7f0c0070

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 46
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-wide/32 v5, 0x7f080236

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 48
    const v5, 0x7f020099

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 49
    const v5, 0x7f0c0909

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 50
    const-string v5, "com.android.settings.wifi.WifiSettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 53
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const-wide/32 v5, 0x7f080237

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 55
    const v5, 0x7f02007a

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 56
    const v5, 0x7f0c08b7

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 57
    const-string v5, "com.android.settings.bluetooth.BluetoothSettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 60
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const-wide/32 v5, 0x7f08023a

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 62
    const-string v5, "com.android.settings.WirelessSettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 63
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 66
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const-wide/32 v5, 0x7f08023b

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 68
    const v5, 0x7f02008a

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 69
    const v5, 0x7f0c0842

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 70
    const v5, 0x7f0c0843

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 71
    const-string v5, "com.android.settings.WirelessSettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 77
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const v5, 0x7f0c0071

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 81
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const-wide/32 v5, 0x7f08023e

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 83
    const v5, 0x7f02008b

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 84
    const v5, 0x7f0c05ef

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 85
    const-string v5, "com.android.settings.PenSetting"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 88
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const-wide/32 v5, 0x7f08023c

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 90
    const v5, 0x7f02007f

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 91
    const v5, 0x7f0c009b

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 92
    const-string v5, "com.android.settings.framework.activity.charm.HtcCharmSettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 95
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const-wide/32 v5, 0x7f080240

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 97
    const v5, 0x7f020091

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 98
    const v5, 0x7f0c0997

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 99
    const-string v5, "com.android.settings.SoundSettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 102
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const-wide/32 v5, 0x7f080241

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 104
    const v5, 0x7f020084

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 105
    const v5, 0x7f0c09c2

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 106
    const-string v5, "com.android.settings.DisplaySettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 109
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const-wide/32 v5, 0x7f080242

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 111
    const v5, 0x7f020093

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 112
    const v5, 0x7f0c09f9

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 113
    const-string v5, "com.android.settings.deviceinfo.Memory"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 116
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const-wide/32 v5, 0x7f080243

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 118
    const v5, 0x7f0200f8

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 119
    const v5, 0x7f0c058c

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 120
    const-string v5, "com.android.settings.Power"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 123
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    const-wide/32 v5, 0x7f080244

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 125
    const v5, 0x7f020076

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 126
    const v5, 0x7f0c0ad3

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 127
    const-string v5, "com.android.settings.applications.ManageApplications"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 131
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    const-wide/32 v5, 0x7f080245

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 133
    const v5, 0x7f0200c3

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 134
    const v5, 0x7f0c0728

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 135
    const-string v5, "com.android.settings.applications.HtcAppAssociationsSettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 138
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const-wide/32 v5, 0x7f080246

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 140
    const-string v5, "com.android.settings.WirelessSettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 141
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 148
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    const v5, 0x7f0c0072

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 152
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    const-wide/32 v5, 0x7f080247

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 154
    const v5, 0x7f020094

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 155
    const v5, 0x7f0c00ab

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 156
    const-string v5, "com.android.settings.accounts.ManageAccountsSettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 159
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const-wide/32 v5, 0x7f080248

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 161
    const v5, 0x7f020088

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 162
    const v5, 0x7f0c00ac

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 163
    const-string v5, "com.android.settings.UeVersionLocationSettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 166
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    const-wide/32 v5, 0x7f080249

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 168
    const v5, 0x7f020090

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 169
    const v5, 0x7f0c0868

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 170
    const-string v5, "com.android.settings.SecuritySettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 173
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-wide/32 v5, 0x7f08024a

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 175
    const v5, 0x7f020087

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 176
    const v5, 0x7f0c0128

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 177
    const-string v5, "com.android.settings.inputmethod.InputMethodAndLanguageSettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 180
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const-wide/32 v5, 0x7f08024b

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 182
    const v5, 0x7f02008e

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 183
    const v5, 0x7f0c0147

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 184
    const-string v5, "com.android.settings.PrivacySettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 191
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const v5, 0x7f0c0073

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 195
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const-wide/32 v5, 0x7f08024d

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 197
    const v5, 0x7f020082

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 198
    const v5, 0x7f0c084e

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 199
    const-string v5, "com.android.settings.DateTimeSettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 202
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const-wide/32 v5, 0x7f08024e

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 204
    const v5, 0x7f020075

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 205
    const v5, 0x7f0c0b9d

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 206
    const-string v5, "com.android.settings.AccessibilitySettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 209
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    const-wide/32 v5, 0x7f08024f

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 211
    const v5, 0x7f020083

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 212
    const v5, 0x7f0c0129

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 213
    const-string v5, "com.android.settings.DevelopmentSettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 216
    sget-boolean v5, Lcom/android/settings/HtcFeatureList;->ICON_ACTIVATE_DEVICE:Z

    if-eqz v5, :cond_0

    .line 217
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const-wide/32 v5, 0x7f080250

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 220
    const v5, 0x7f0200c1

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 221
    const v5, 0x7f0c007a

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 222
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.sprint.dsa.DSA_ACTIVITY"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.sprint.dsa.source"

    const-string v7, "menu"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 226
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 227
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    iput-object v3, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 235
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v2           #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .restart local v2       #entry:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const-wide/32 v5, 0x7f080252

    iput-wide v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 237
    const v5, 0x7f020074

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 238
    const v5, 0x7f0c0a95

    iput v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 239
    const-string v5, "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneSettings"

    iput-object v5, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 242
    return-object v1
.end method
