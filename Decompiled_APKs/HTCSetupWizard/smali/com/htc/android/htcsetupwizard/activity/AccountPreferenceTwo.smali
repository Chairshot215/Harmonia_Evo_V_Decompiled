.class public Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
.super Lcom/htc/preference/HtcPreference;
.source "AccountPreferenceTwo.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LDEBUG:Z = false

.field public static final PREFERENCE_TYPE_ADD_BUTTON:I = 0x0

.field public static final PREFERENCE_TYPE_ADD_BUTTON_LAUNCH_TINY:I = 0x1

.field public static final PREFERENCE_TYPE_LOGINED:I = 0x2

.field public static final PREFERENCE_TYPE_NOT_LOGINED:I = 0x3

.field public static final STATUS_LOGIN:I = 0x1

.field public static final STATUS_LOGOUT:I = 0x0

.field public static final STATUS_RADIOOFF:I = 0x1

.field public static final STATUS_RADIOON:I = 0x0

.field public static final STATUS_SUMMARY_SINGLE_LINE_OFF:I = 0x1

.field public static final STATUS_SUMMARY_SINGLE_LINE_ON:I = 0x0

.field public static final STATUS_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AccountPreferenceTwo"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mContext:Landroid/content/Context;

.field private mPreferenceType:I

.field private mSyncStatusIcon:Landroid/widget/ImageView;

.field private mbSetCheckedByMyCommunity:Z

.field private mloginStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "AccountPreferenceTwo"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->LDEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/util/ArrayList;I)V
    .locals 9
    .parameter "context"
    .parameter "account"
    .parameter "icon"
    .parameter "label"
    .parameter
    .parameter "preferenceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p5, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/high16 v7, 0x1000

    const/4 v8, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mloginStatus:I

    .line 60
    iput-boolean v8, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mbSetCheckedByMyCommunity:Z

    .line 74
    iput-object p2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mAccount:Landroid/accounts/Account;

    .line 75
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mContext:Landroid/content/Context;

    .line 76
    iput p6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mPreferenceType:I

    .line 78
    invoke-virtual {p0, p3}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 79
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setIconVisibility(Z)V

    .line 80
    invoke-virtual {p0, p4}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setSummary()V

    .line 82
    const v5, 0x7f030016

    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setWidgetLayoutResource(I)V

    .line 84
    const/4 v3, 0x0

    .line 85
    .local v3, intent:Landroid/content/Intent;
    packed-switch p6, :pswitch_data_0

    .line 162
    :goto_0
    :pswitch_0
    return-void

    .line 89
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v5, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->getAccountAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, AccountAction:Ljava/lang/String;
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->getAccountIntentFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, AccountIntentFlag:Ljava/lang/String;
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v6, "com.htc.android.mail.eas"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    if-nez v0, :cond_2

    .line 101
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v5, "android.htc.mail.eas.EAS_MAIN_PAGE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 152
    const-string v5, "account"

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 154
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setIntent(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setPersistent(Z)V

    goto :goto_0

    .line 103
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 105
    :cond_3
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v6, "com.htc.VzWBASync"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 107
    if-nez v0, :cond_4

    .line 108
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v5, "com.htc.VzWBackupAssistantClient.SETTINGS"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v3       #intent:Landroid/content/Intent;
    :goto_2
    if-eqz v1, :cond_5

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 115
    .local v4, nflag:I
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 110
    .end local v4           #nflag:I
    :cond_4
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 117
    :cond_5
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 119
    :cond_6
    const-string v5, "com.htc.vmm.Backup"

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 120
    if-nez v0, :cond_7

    .line 121
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v5, "com.htc.vmm.settings.Backup"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .restart local v3       #intent:Landroid/content/Intent;
    :goto_3
    if-eqz v1, :cond_8

    .line 127
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 128
    .restart local v4       #nflag:I
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 129
    .end local v4           #nflag:I
    :catch_0
    move-exception v2

    .line 130
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 131
    const-string v5, "AccountPreferenceTwo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IntentTask (com.htc.vmm.settings.Backup) flag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_7
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_3

    .line 134
    :cond_8
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 138
    :cond_9
    if-nez v0, :cond_a

    .line 139
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v5, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v3       #intent:Landroid/content/Intent;
    :goto_4
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 146
    .restart local v4       #nflag:I
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 141
    .end local v4           #nflag:I
    :cond_a
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_4

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getAccountAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "accountType"

    .prologue
    .line 165
    sget-boolean v6, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->LDEBUG:Z

    if-eqz v6, :cond_0

    .line 166
    const-string v6, "AccountPreferenceTwo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAccountAction accountType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 170
    .local v0, AccountAction:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 172
    .local v2, accounts:[Landroid/accounts/Account;
    if-eqz v2, :cond_3

    .line 173
    sget-boolean v6, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->LDEBUG:Z

    if-eqz v6, :cond_1

    .line 174
    const-string v6, "AccountPreferenceTwo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accounts.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v3, v4

    .line 177
    .local v1, account:Landroid/accounts/Account;
    sget-boolean v6, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->LDEBUG:Z

    if-eqz v6, :cond_2

    .line 178
    const-string v6, "AccountPreferenceTwo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account.type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_2
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "AccountAction"

    invoke-virtual {v6, v1, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_4

    .line 186
    .end local v1           #account:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3
    return-object v0

    .line 176
    .restart local v1       #account:Landroid/accounts/Account;
    .restart local v3       #arr$:[Landroid/accounts/Account;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getAccountIntentFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "accountType"

    .prologue
    .line 203
    sget-boolean v6, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->LDEBUG:Z

    if-eqz v6, :cond_0

    .line 204
    const-string v6, "AccountPreferenceTwo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAccountIntentFlag accountType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 208
    .local v0, AccountIntentFlag:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 209
    .local v2, accounts:[Landroid/accounts/Account;
    if-eqz v2, :cond_3

    .line 210
    sget-boolean v6, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->LDEBUG:Z

    if-eqz v6, :cond_1

    .line 211
    const-string v6, "AccountPreferenceTwo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accounts.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_1
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v3, v4

    .line 214
    .local v1, account:Landroid/accounts/Account;
    sget-boolean v6, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->LDEBUG:Z

    if-eqz v6, :cond_2

    .line 215
    const-string v6, "AccountPreferenceTwo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account.type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_2
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "AccountIntentFlag"

    invoke-virtual {v6, v1, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_4

    .line 224
    .end local v1           #account:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3
    return-object v0

    .line 213
    .restart local v1       #account:Landroid/accounts/Account;
    .restart local v3       #arr$:[Landroid/accounts/Account;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private setSummary()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mPreferenceType:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.htc.sync.provider.weather"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v1, "Weather"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.htc.newsreader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v1, "News"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.htc.android.Stock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v1, "Stocks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public SetCheckedByMyCommunity()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mbSetCheckedByMyCommunity:Z

    .line 200
    return-void
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 269
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 231
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setSummary()V

    .line 233
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->getIconConnectedId(Landroid/content/Context;)I

    move-result v0

    .line 235
    .local v0, icon_connected:I
    const v1, 0x7f0d001e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mSyncStatusIcon:Landroid/widget/ImageView;

    .line 236
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mPreferenceType:I

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mPreferenceType:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mbSetCheckedByMyCommunity:Z

    if-nez v1, :cond_2

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mSyncStatusIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mSyncStatusIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mSyncStatusIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mSyncStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setLoginStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 194
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mloginStatus:I

    .line 195
    return-void
.end method

.method public setLoginStatus(ILjava/lang/String;)V
    .locals 0
    .parameter "status"
    .parameter "summary"

    .prologue
    .line 190
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->mloginStatus:I

    .line 191
    invoke-virtual {p0, p2}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method
