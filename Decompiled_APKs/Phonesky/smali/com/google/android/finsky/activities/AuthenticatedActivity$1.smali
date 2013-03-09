.class Lcom/google/android/finsky/activities/AuthenticatedActivity$1;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 173
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$1;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$1;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startInitializationActions(Z)V

    .line 177
    return-void
.end method
