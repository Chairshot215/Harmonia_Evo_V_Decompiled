.class public Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcExternalSdCardMountTogglePreference.java"


# static fields
.field private static final DIALOG_CONFIRM_UNMOUNT:I = 0x1

.field private static final DIALOG_ERROR_UNMOUNT:I = 0x2

.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->initialize()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->doUnmountOperation(Z)V

    return-void
.end method

.method private doUnmountOperation(Z)V
    .locals 6
    .parameter "force"

    .prologue
    const/4 v5, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0a27

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 199
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 200
    .local v2, service:Landroid/os/storage/IMountService;
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setEnabled(Z)V

    .line 203
    const v3, 0x7f0c0a28

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setTitle(I)V

    .line 204
    const v3, 0x7f0c0a29

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setSummary(I)V

    .line 215
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v1, p1, v3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->showDialog(I)V

    goto :goto_0
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setEnabled(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.MOUNT_SD_CARD_VOLUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 172
    return-void
.end method

.method private showDialog(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0c0b08

    .line 223
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The dialog (id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 228
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 254
    return-void

    .line 230
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0a23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0a24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference$1;-><init>(Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;)V

    invoke-virtual {v0, v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c083d

    invoke-virtual {v0, v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 246
    :pswitch_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0a25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0a26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/os/HtcStorageManager;->hasAppAccessingStorage(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->showDialog(I)V

    .line 189
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->doUnmountOperation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->showDialog(I)V

    goto :goto_0
.end method


# virtual methods
.method protected initialize()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setKey(Ljava/lang/String;)V

    .line 89
    :cond_0
    const v0, 0x7f0c0a1b

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setTitle(I)V

    .line 90
    const v0, 0x7f0c0a1c

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setSummary(I)V

    .line 91
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 150
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, status:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->unmount()V

    .line 167
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v2, v3, :cond_2

    .line 158
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    const-class v2, Lcom/android/settings/framework/activity/storage/threelm/HtcExternalSdCardMountToggleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setFragment(Ljava/lang/String;)V

    .line 160
    const v2, 0x7f0c0a69

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceStartFragment(Lcom/htc/preference/HtcPreferenceFragment;Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 165
    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mount()V

    goto :goto_0
.end method

.method public updateSummary()V
    .locals 5

    .prologue
    const v4, 0x7f0c0a1e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, status:Ljava/lang/String;
    const-string v1, "formatting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setEnabled(Z)V

    .line 146
    :goto_0
    return-void

    .line 107
    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setEnabled(Z)V

    .line 110
    const v1, 0x7f0c0a1b

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setTitle(I)V

    .line 111
    const v1, 0x7f0c0a1c

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setSummary(I)V

    goto :goto_0

    .line 125
    :cond_2
    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "unmountable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "nofs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setEnabled(Z)V

    .line 129
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setTitle(I)V

    .line 130
    const v1, 0x7f0c0a1f

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setSummary(I)V

    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setEnabled(Z)V

    .line 143
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setTitle(I)V

    .line 144
    const v1, 0x7f0c0a1d

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setSummary(I)V

    goto :goto_0
.end method
