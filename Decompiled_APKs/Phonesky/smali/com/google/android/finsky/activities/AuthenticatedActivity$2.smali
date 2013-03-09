.class Lcom/google/android/finsky/activities/AuthenticatedActivity$2;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->registerGcmIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/finsky/activities/AuthenticatedActivity;->mUploadDeviceConfigRequest:Lcom/android/volley/Request;
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$002(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 229
    return-void
.end method
