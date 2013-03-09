.class Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/PackageVerificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VerificationState"
.end annotation


# instance fields
.field public final dataUri:Landroid/net/Uri;

.field public final flags:I

.field public final id:I

.field public final installingPackage:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mDialog:Landroid/app/Activity;

.field public mLabel:Ljava/lang/String;

.field public mLength:J

.field public mMoreInfoUri:Landroid/net/Uri;

.field public mPackageName:Ljava/lang/String;

.field public mResult:I

.field public mSha256:[B

.field public mSignatures:[Landroid/content/pm/Signature;

.field public mToken:[B

.field public mVersion:Ljava/lang/Integer;

.field public originatingIp:Ljava/net/InetAddress;

.field public final originatingUri:Landroid/net/Uri;

.field public referrerIp:Ljava/net/InetAddress;

.field public final referrerUri:Landroid/net/Uri;

.field public final verificationUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .parameter "broadcast"

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    .line 198
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 199
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    .line 200
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->dataUri:Landroid/net/Uri;

    .line 201
    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->installingPackage:Ljava/lang/String;

    .line 202
    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->flags:I

    .line 203
    const-string v1, "android.content.pm.extra.VERIFICATION_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->verificationUri:Landroid/net/Uri;

    .line 204
    const-string v1, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingUri:Landroid/net/Uri;

    .line 205
    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->referrerUri:Landroid/net/Uri;

    .line 209
    const-string v1, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mPackageName:Ljava/lang/String;

    .line 211
    const-string v1, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mVersion:Ljava/lang/Integer;

    .line 212
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    const-string v0, "id = %d, data=%s installing=%s flags=%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->dataUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->installingPackage:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
