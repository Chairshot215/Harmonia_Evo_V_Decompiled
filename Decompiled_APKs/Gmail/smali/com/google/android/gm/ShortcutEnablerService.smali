.class public Lcom/google/android/gm/ShortcutEnablerService;
.super Landroid/app/Service;
.source "ShortcutEnablerService.java"


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mLabelList:Lcom/google/android/gm/provider/LabelList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService;->mDataSetObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/ShortcutEnablerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/ShortcutEnablerService;)Lcom/google/android/gm/provider/LabelList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/gm/ShortcutEnablerService;Lcom/google/android/gm/provider/LabelList;)Lcom/google/android/gm/provider/LabelList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/gm/ShortcutEnablerService;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/gm/ShortcutEnablerService;)Landroid/database/DataSetObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService;->mDataSetObserver:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/gm/ShortcutEnablerService;Landroid/database/DataSetObserver;)Landroid/database/DataSetObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/gm/ShortcutEnablerService;->mDataSetObserver:Landroid/database/DataSetObserver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/gm/ShortcutEnablerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gm/ShortcutEnablerService;->stopService()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gm/ShortcutEnablerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gm/ShortcutEnablerService;->enableShortcutAndFinish()V

    return-void
.end method

.method private enableShortcutAndFinish()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/gm/ShortcutEnablerService$2;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ShortcutEnablerService$2;-><init>(Lcom/google/android/gm/ShortcutEnablerService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ShortcutEnablerService$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return-void
.end method

.method private stopService()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    iget-object v1, p0, Lcom/google/android/gm/ShortcutEnablerService;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/LabelList;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 110
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/LabelList;->unregisterForLabelChanges()V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/ShortcutEnablerService;->stopSelf()V

    .line 113
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x2

    .line 34
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gm/ShortcutEnablerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 37
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v1, "account-name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ShortcutEnablerService;->mAccount:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/google/android/gm/ShortcutEnablerService;->mAccount:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 82
    :goto_0
    return v4

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/google/android/gm/Utils;->shortcutActivityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gm/ShortcutEnablerService;->stopSelf()V

    goto :goto_0

    .line 48
    :cond_1
    new-instance v1, Lcom/google/android/gm/ShortcutEnablerService$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/ShortcutEnablerService$1;-><init>(Lcom/google/android/gm/ShortcutEnablerService;)V

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/ShortcutEnablerService$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
