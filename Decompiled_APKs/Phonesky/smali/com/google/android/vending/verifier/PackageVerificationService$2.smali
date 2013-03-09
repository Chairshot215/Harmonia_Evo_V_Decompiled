.class Lcom/google/android/vending/verifier/PackageVerificationService$2;
.super Ljava/lang/Object;
.source "PackageVerificationService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/vending/verifier/PackageVerificationService;->sendVerificationRequest(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
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
        "Lcom/google/android/vending/verifier/api/PackageVerificationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

.field final synthetic val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;


# direct methods
.method constructor <init>(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iput-object p2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/verifier/api/PackageVerificationResult;)V
    .locals 6
    .parameter "response"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 560
    const-string v1, "Verification id=%d response=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v3, v3, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->verdict:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    .line 562
    .local v0, context:Lcom/google/android/vending/verifier/PackageVerificationService;
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v2, p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->token:[B

    iput-object v2, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mToken:[B

    .line 565
    iget v1, p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->verdict:I

    packed-switch v1, :pswitch_data_0

    .line 582
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iput v4, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    .line 583
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    #calls: Lcom/google/android/vending/verifier/PackageVerificationService;->reportAndCleanup(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    invoke-static {v1, v0, v2}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$400(Lcom/google/android/vending/verifier/PackageVerificationService;Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    .line 586
    :goto_0
    return-void

    .line 567
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v2, p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->description:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDescription:Ljava/lang/String;

    .line 568
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v2, p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->moreInfoUri:Landroid/net/Uri;

    iput-object v2, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mMoreInfoUri:Landroid/net/Uri;

    .line 569
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    .line 570
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v2, v2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v3, v3, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    #calls: Lcom/google/android/vending/verifier/PackageVerificationService;->reportVerificationResult(Landroid/content/Context;II)V
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$500(Lcom/google/android/vending/verifier/PackageVerificationService;Landroid/content/Context;II)V

    .line 571
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v1, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v2, v2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v3, v3, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/vending/verifier/PackageWarningDialog;->show(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 575
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v2, p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->description:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDescription:Ljava/lang/String;

    .line 576
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v2, p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;->moreInfoUri:Landroid/net/Uri;

    iput-object v2, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mMoreInfoUri:Landroid/net/Uri;

    .line 577
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v2, v2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    #calls: Lcom/google/android/vending/verifier/PackageVerificationService;->extendTimeout(II)V
    invoke-static {v1, v2, v4}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$300(Lcom/google/android/vending/verifier/PackageVerificationService;II)V

    .line 578
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v1, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v2, v2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$2;->val$state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v3, v3, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1, v5, v2, v3}, Lcom/google/android/vending/verifier/PackageWarningDialog;->show(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 557
    check-cast p1, Lcom/google/android/vending/verifier/api/PackageVerificationResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/PackageVerificationService$2;->onResponse(Lcom/google/android/vending/verifier/api/PackageVerificationResult;)V

    return-void
.end method
