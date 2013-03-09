.class Lcom/google/android/finsky/receivers/InstallerTask$2;
.super Ljava/lang/Object;
.source "InstallerTask.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerTask;->requestDeliveryData(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerTask;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerTask;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerTask$2;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 6
    .parameter "volleyError"

    .prologue
    const/4 v5, 0x0

    .line 820
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$2;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->volleyErrorToInstallerError(Lcom/android/volley/VolleyError;)I
    invoke-static {v2, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->access$700(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/android/volley/VolleyError;)I

    move-result v1

    .line 821
    .local v1, volleyErrorCode:I
    instance-of v2, p1, Lcom/google/android/volley/DisplayMessageError;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/volley/DisplayMessageError;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/volley/DisplayMessageError;->getDisplayErrorHtml()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, serverMessage:Ljava/lang/String;
    :goto_0
    const-string v2, "Received VolleyError %d (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$2;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 825
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$2;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    sget-object v3, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    invoke-static {v2, v3, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->access$500(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 826
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$2;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V
    invoke-static {v2, v1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$600(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V

    .line 827
    return-void

    .line 821
    .end local v0           #serverMessage:Ljava/lang/String;
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
