.class public Lcom/google/android/vending/verifier/api/PackageVerificationResult;
.super Ljava/lang/Object;
.source "PackageVerificationResult.java"


# instance fields
.field public final description:Ljava/lang/String;

.field public final moreInfoUri:Landroid/net/Uri;

.field public final token:[B

.field public final verdict:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/net/Uri;[B)V
    .locals 0
    .parameter "verdict"
    .parameter "description"
    .parameter "moreInfoUri"
    .parameter "token"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->verdict:I

    .line 38
    iput-object p2, p0, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->description:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->moreInfoUri:Landroid/net/Uri;

    .line 40
    iput-object p4, p0, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->token:[B

    .line 41
    return-void
.end method

.method public static fromResponse(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;)Lcom/google/android/vending/verifier/api/PackageVerificationResult;
    .locals 6
    .parameter "response"

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, description:Ljava/lang/String;
    const/4 v3, 0x0

    .line 47
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->hasMoreInfo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->getMoreInfo()Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;

    move-result-object v1

    .line 49
    .local v1, moreInfo:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;
    invoke-virtual {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->hasDescription()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    invoke-virtual {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->hasUrl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    invoke-virtual {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 56
    .end local v1           #moreInfo:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;
    :cond_1
    const/4 v2, 0x0

    .line 57
    .local v2, token:[B
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->hasToken()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->getToken()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v2

    .line 60
    :cond_2
    new-instance v4, Lcom/google/android/vending/verifier/api/PackageVerificationResult;

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->getVerdict()I

    move-result v5

    invoke-direct {v4, v5, v0, v3, v2}, Lcom/google/android/vending/verifier/api/PackageVerificationResult;-><init>(ILjava/lang/String;Landroid/net/Uri;[B)V

    return-object v4
.end method
