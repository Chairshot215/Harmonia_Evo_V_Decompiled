.class Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CarrierTosDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierTosWebViewClient"
.end annotation


# instance fields
.field private final mProgress:Landroid/view/View;

.field private mReceivedError:Z

.field private final mTosDisplayView:Landroid/view/View;

.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "progress"
    .parameter "tosDisplayView"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;->this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;->mProgress:Landroid/view/View;

    .line 137
    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;->mTosDisplayView:Landroid/view/View;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;->mReceivedError:Z

    .line 139
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;->mTosDisplayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;->mReceivedError:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;->this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->access$100(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;)Lcom/google/android/finsky/layout/ButtonBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonEnabled(Z)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 152
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

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;->mReceivedError:Z

    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;->this$0:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->access$000(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;->FAILURE:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;->onCarrierTosResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;)V

    .line 155
    return-void
.end method
