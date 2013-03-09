.class Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AddCarrierBillingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierTosWebViewClient"
.end annotation


# instance fields
.field private final mProgress:Landroid/view/View;

.field private mReceivedError:Z

.field private mShouldOverrideUrl:Z

.field private final mTosDisplayView:Landroid/view/View;

.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter "progress"
    .parameter "tosDisplayView"

    .prologue
    const/4 v1, 0x0

    .line 369
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 370
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mProgress:Landroid/view/View;

    .line 371
    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mTosDisplayView:Landroid/view/View;

    .line 372
    iput-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mReceivedError:Z

    .line 373
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 396
    iput-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mShouldOverrideUrl:Z

    .line 397
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mTosDisplayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mReceivedError:Z

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->access$000(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Web error: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mReceivedError:Z

    .line 389
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iget-object v0, v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iget-object v0, v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->NETWORK_FAILURE:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;->onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V

    .line 392
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 407
    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->mShouldOverrideUrl:Z

    if-eqz v1, :cond_0

    .line 408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 409
    .local v0, browserIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;->this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->startActivity(Landroid/content/Intent;)V

    .line 410
    const/4 v1, 0x1

    .line 412
    .end local v0           #browserIntent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
