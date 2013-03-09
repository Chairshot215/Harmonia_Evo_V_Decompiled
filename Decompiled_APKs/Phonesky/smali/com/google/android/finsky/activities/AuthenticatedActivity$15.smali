.class Lcom/google/android/finsky/activities/AuthenticatedActivity$15;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->restart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 993
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$15;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$15;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 997
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$15;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-object v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$15;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    return-void

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "Intent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$15;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1000
    throw v0
.end method
