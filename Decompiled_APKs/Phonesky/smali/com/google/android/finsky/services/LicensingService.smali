.class public Lcom/google/android/finsky/services/LicensingService;
.super Landroid/app/Service;
.source "LicensingService.java"


# instance fields
.field private final mBinder:Lcom/android/vending/licensing/ILicensingService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    new-instance v0, Lcom/google/android/finsky/services/LicensingService$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/services/LicensingService$1;-><init>(Lcom/google/android/finsky/services/LicensingService;)V

    iput-object v0, p0, Lcom/google/android/finsky/services/LicensingService;->mBinder:Lcom/android/vending/licensing/ILicensingService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/finsky/services/LicensingService;->notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "listener"
    .parameter "responseCode"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    .line 146
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/vending/licensing/ILicenseResultListener;->verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Unable to send license information"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/finsky/services/LicensingService;->mBinder:Lcom/android/vending/licensing/ILicensingService$Stub;

    return-object v0
.end method
