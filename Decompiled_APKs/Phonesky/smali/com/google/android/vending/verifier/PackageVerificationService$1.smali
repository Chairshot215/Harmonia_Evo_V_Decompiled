.class final Lcom/google/android/vending/verifier/PackageVerificationService$1;
.super Ljava/lang/Object;
.source "PackageVerificationService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/vending/verifier/PackageVerificationService;->reportUserChoice(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;


# direct methods
.method constructor <init>(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$1;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 422
    const-string v0, "Verification feedback id=%d error response %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$1;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v3, v3, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    return-void
.end method
