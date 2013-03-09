.class Lcom/google/android/finsky/widget/TrampolineActivity$2;
.super Ljava/lang/Object;
.source "TrampolineActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/TrampolineActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/TrampolineActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/TrampolineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/finsky/widget/TrampolineActivity$2;->this$0:Lcom/google/android/finsky/widget/TrampolineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 70
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/widget/TrampolineActivity$2;->this$0:Lcom/google/android/finsky/widget/TrampolineActivity;

    #calls: Lcom/google/android/finsky/widget/TrampolineActivity;->showNetworkNecessaryDialog()V
    invoke-static {v0}, Lcom/google/android/finsky/widget/TrampolineActivity;->access$100(Lcom/google/android/finsky/widget/TrampolineActivity;)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/widget/TrampolineActivity$2;->this$0:Lcom/google/android/finsky/widget/TrampolineActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/widget/TrampolineActivity;->setResult(I)V

    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/widget/TrampolineActivity$2;->this$0:Lcom/google/android/finsky/widget/TrampolineActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/TrampolineActivity;->finish()V

    goto :goto_0
.end method
