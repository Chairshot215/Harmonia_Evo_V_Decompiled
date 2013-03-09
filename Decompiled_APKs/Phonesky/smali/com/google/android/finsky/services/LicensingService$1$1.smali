.class Lcom/google/android/finsky/services/LicensingService$1$1;
.super Ljava/lang/Object;
.source "LicensingService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/LicensingService$1;->checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/services/LicensingService$1;

.field final synthetic val$listener:Lcom/android/vending/licensing/ILicenseResultListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/LicensingService$1;Lcom/android/vending/licensing/ILicenseResultListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/finsky/services/LicensingService$1$1;->this$1:Lcom/google/android/finsky/services/LicensingService$1;

    iput-object p2, p0, Lcom/google/android/finsky/services/LicensingService$1$1;->val$listener:Lcom/android/vending/licensing/ILicenseResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/services/LicensingService$1$1;->val$listener:Lcom/android/vending/licensing/ILicenseResultListener;

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getResponseCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getSignedData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;->getSignature()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/android/finsky/services/LicensingService;->notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/services/LicensingService;->access$000(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/services/LicensingService$1$1;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;)V

    return-void
.end method
