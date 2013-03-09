.class public Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAppStorageLocationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$PlugInUIEntry;,
        Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$QueryAllAppStorageLoc;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHtcAppStorageRef:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

.field private mNonUIHandler:Landroid/os/Handler;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 46
    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mNonUIHandler:Landroid/os/Handler;

    .line 47
    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mUIHandler:Landroid/os/Handler;

    .line 48
    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mHtcAppStorageRef:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    .line 217
    new-instance v0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$1;-><init>(Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->plugInAppStorageLocation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;)Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mHtcAppStorageRef:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->updateStatus()V

    return-void
.end method

.method private doPlugin()V
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 72
    .local v1, root:Lcom/htc/preference/HtcPreferenceScreen;
    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 78
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    const v2, 0x7f0c00fa

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 80
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 83
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->plugInAllAppStorageLocation()V

    .line 84
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 90
    return-void
.end method

.method private plugInAllAppStorageLocation()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mNonUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->getNonUIHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mNonUIHandler:Landroid/os/Handler;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mNonUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$QueryAllAppStorageLoc;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$QueryAllAppStorageLoc;-><init>(Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method private plugInAppStorageLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "title"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mUIHandler:Landroid/os/Handler;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mNonUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$PlugInUIEntry;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$PlugInUIEntry;-><init>(Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method private updateStatus()V
    .locals 6

    .prologue
    .line 200
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, status:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 203
    .local v2, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 206
    .local v1, prefNum:I
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 208
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 212
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iput-object p0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mHtcAppStorageRef:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->initialize()V

    .line 62
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 196
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 197
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 190
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->updateStatus()V

    .line 191
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStart()V

    .line 179
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStop()V

    .line 184
    return-void
.end method
