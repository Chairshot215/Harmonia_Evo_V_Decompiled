.class public Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcUsbStorageMountTogglePreference.java"


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
    .line 28
    const-class v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->TAG:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->initialize()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->doUnmountOperation(Z)V

    return-void
.end method

.method private doUnmountOperation(Z)V
    .locals 6
    .parameter "force"

    .prologue
    const/4 v5, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c011a

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 186
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 187
    .local v2, service:Landroid/os/storage/IMountService;
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setEnabled(Z)V

    .line 190
    const v3, 0x7f0c0a28

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setTitle(I)V

    .line 191
    const v3, 0x7f0c0a29

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setSummary(I)V

    .line 202
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v1, p1, v3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->showDialog(I)V

    goto :goto_0
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setEnabled(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.MOUNT_USB_VOLUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 159
    return-void
.end method

.method private showDialog(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0c0b08

    .line 210
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->TAG:Ljava/lang/String;

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

    .line 212
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 215
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 241
    return-void

    .line 217
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c011b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c011c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$1;-><init>(Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;)V

    invoke-virtual {v0, v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c083d

    invoke-virtual {v0, v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 233
    :pswitch_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c011d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c011e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/os/HtcStorageManager;->hasAppAccessingStorage(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->showDialog(I)V

    .line 176
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->doUnmountOperation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->showDialog(I)V

    goto :goto_0
.end method


# virtual methods
.method protected initialize()V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setKey(Ljava/lang/String;)V

    .line 85
    :cond_0
    const v0, 0x7f0c0106

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setTitle(I)V

    .line 86
    const v0, 0x7f0c0107

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setSummary(I)V

    .line 87
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageState()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->unmount()V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mount()V

    goto :goto_0
.end method

.method public updateSummary()V
    .locals 5

    .prologue
    const v4, 0x7f0c0103

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageState()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, status:Ljava/lang/String;
    const-string v1, "formatting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setEnabled(Z)V

    .line 142
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setEnabled(Z)V

    .line 106
    const v1, 0x7f0c0106

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setTitle(I)V

    .line 107
    const v1, 0x7f0c0107

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setSummary(I)V

    goto :goto_0

    .line 121
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

    .line 124
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setEnabled(Z)V

    .line 125
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setTitle(I)V

    .line 126
    const v1, 0x7f0c0104

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setSummary(I)V

    goto :goto_0

    .line 138
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setEnabled(Z)V

    .line 139
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setTitle(I)V

    .line 140
    const v1, 0x7f0c0105

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setSummary(I)V

    goto :goto_0
.end method
