.class public Lcom/android/settings/SetFullBackupPassword;
.super Landroid/app/Fragment;
.source "SetFullBackupPassword.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SetFullBackupPassword"


# instance fields
.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mButtonListener:Landroid/view/View$OnClickListener;

.field mCancel:Landroid/widget/Button;

.field mConfirmNewPw:Landroid/widget/TextView;

.field mCurrentPw:Landroid/widget/TextView;

.field mNewPw:Landroid/widget/TextView;

.field mSet:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 40
    new-instance v0, Lcom/android/settings/SetFullBackupPassword$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SetFullBackupPassword$1;-><init>(Lcom/android/settings/SetFullBackupPassword;)V

    iput-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "currentPw"
    .parameter "newPw"

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2}, Landroid/app/backup/IBackupManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 127
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SetFullBackupPassword"

    const-string v2, "Unable to communicate with backup manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 103
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 105
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 107
    :cond_0
    const v1, 0x7f040085

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SetFullBackupPassword;->mCurrentPw:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f080166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SetFullBackupPassword;->mNewPw:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f080168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SetFullBackupPassword;->mConfirmNewPw:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    .line 114
    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    .line 116
    iget-object v1, p0, Lcom/android/settings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
