.class public Lcom/s0up/goomanager/ManageDownloadActivity;
.super Landroid/app/Activity;
.source "ManageDownloadActivity.java"


# instance fields
.field private mBinder:Lcom/s0up/goomanager/download/DownloadService$LocalBinder;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s0up/goomanager/ManageDownloadActivity;->mBinder:Lcom/s0up/goomanager/download/DownloadService$LocalBinder;

    .line 61
    new-instance v0, Lcom/s0up/goomanager/ManageDownloadActivity$1;

    invoke-direct {v0, p0}, Lcom/s0up/goomanager/ManageDownloadActivity$1;-><init>(Lcom/s0up/goomanager/ManageDownloadActivity;)V

    iput-object v0, p0, Lcom/s0up/goomanager/ManageDownloadActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/ManageDownloadActivity;Lcom/s0up/goomanager/download/DownloadService$LocalBinder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/s0up/goomanager/ManageDownloadActivity;->mBinder:Lcom/s0up/goomanager/download/DownloadService$LocalBinder;

    return-void
.end method

.method static synthetic access$1(Lcom/s0up/goomanager/ManageDownloadActivity;)Lcom/s0up/goomanager/download/DownloadService$LocalBinder;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/s0up/goomanager/ManageDownloadActivity;->mBinder:Lcom/s0up/goomanager/download/DownloadService$LocalBinder;

    return-object v0
.end method

.method static synthetic access$2(Lcom/s0up/goomanager/ManageDownloadActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/s0up/goomanager/ManageDownloadActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/s0up/goomanager/download/DownloadService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v2, service:Landroid/content/Intent;
    iget-object v3, p0, Lcom/s0up/goomanager/ManageDownloadActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/s0up/goomanager/ManageDownloadActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 27
    new-instance v1, Lcom/s0up/goomanager/ManageDownloadActivity$2;

    invoke-direct {v1, p0}, Lcom/s0up/goomanager/ManageDownloadActivity$2;-><init>(Lcom/s0up/goomanager/ManageDownloadActivity;)V

    .line 51
    .local v1, dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 53
    const-string v3, "Confirm cancellation"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 54
    const-string v3, "Are you sure you would like to cancel this download?"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 55
    const-string v4, "Yes"

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 56
    const-string v4, "No"

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 59
    return-void
.end method
