.class public Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;
.super Landroid/app/Fragment;
.source "HtcEncryptionPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage$2;
    }
.end annotation


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field static final MIN_PASSWORD_QUALITY:I = 0x20000

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 124
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .parameter "request"

    .prologue
    .line 179
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 180
    .local v0, quality:I
    const/high16 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 181
    const/4 v2, 0x0

    .line 185
    :goto_0
    return v2

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 185
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v3, 0x7f0c0a66

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0c0a67

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method private showFinalConfirmation(Ljava/lang/String;)V
    .locals 7
    .parameter "password"

    .prologue
    .line 159
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v2, bundle:Landroid/os/Bundle;
    const-string v0, "password"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c06f8

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 168
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    const/16 v1, 0x37

    if-eq p1, v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    .line 145
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 150
    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->showFinalConfirmation(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v0           #password:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget-object v8, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->NONE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    .line 41
    .local v8, actionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;
    sget-object v10, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->NONE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    .line 43
    .local v10, storageType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 44
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, action:Ljava/lang/String;
    const-string v0, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0004:Z

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0874

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0875

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v4, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage$1;

    invoke-direct {v4, p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage$1;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;)V

    invoke-virtual {v0, v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 73
    :cond_2
    const-string v0, "com.android.settings.START_ENCRYPTION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "storage_type"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 75
    .local v12, typeOfStorage:Ljava/lang/String;
    const-string v0, "action_type"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 77
    .local v11, typeOfAction:Ljava/lang/String;
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0004:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0007:Z

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "internal_storage"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 83
    :cond_4
    const-string v0, "internal_storage"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 84
    sget-object v10, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    .line 91
    :cond_5
    :goto_1
    const-string v0, "encrypt"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 92
    sget-object v8, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    .line 97
    :cond_6
    :goto_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v2, bundle:Landroid/os/Bundle;
    const-string v0, "storage_type"

    invoke-virtual {v10}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->ordinal()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string v0, "action_type"

    invoke-virtual {v8}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ordinal()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, titleId:I
    sget-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage$2;->$SwitchMap$com$android$settings$framework$activity$storage$threelm$HtcEncryptionSettings$StorageType:[I

    invoke-virtual {v10}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 127
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 85
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #titleId:I
    :cond_8
    const-string v0, "phone_storage"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 86
    sget-object v10, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    goto :goto_1

    .line 87
    :cond_9
    const-string v0, "sd_card"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    sget-object v10, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->SD_CARD:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    goto :goto_1

    .line 93
    :cond_a
    const-string v0, "unencrypt"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    sget-object v8, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->UNENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    goto :goto_2

    .line 104
    .restart local v2       #bundle:Landroid/os/Bundle;
    .restart local v3       #titleId:I
    :pswitch_0
    sget-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    if-ne v8, v0, :cond_b

    .line 105
    const v3, 0x7f0c06ec

    goto :goto_3

    .line 107
    :cond_b
    const v3, 0x7f0c06ef

    .line 109
    goto :goto_3

    .line 111
    :pswitch_1
    sget-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    if-ne v8, v0, :cond_c

    .line 112
    const v3, 0x7f0c06f2

    goto :goto_3

    .line 114
    :cond_c
    const v3, 0x7f0c06f5

    .line 116
    goto :goto_3

    .line 118
    :pswitch_2
    sget-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    if-ne v8, v0, :cond_7

    .line 119
    const v3, 0x7f0c06f8

    goto :goto_3

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
