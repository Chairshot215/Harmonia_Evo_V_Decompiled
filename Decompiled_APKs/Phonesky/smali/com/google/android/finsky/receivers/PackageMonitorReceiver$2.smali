.class Lcom/google/android/finsky/receivers/PackageMonitorReceiver$2;
.super Ljava/lang/Object;
.source "PackageMonitorReceiver.java"

# interfaces
.implements Lcom/google/android/finsky/utils/ParameterizedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/utils/ParameterizedRunnable",
        "<",
        "Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$replacing:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$2;->this$0:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$2;->val$packageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$2;->val$replacing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V
    .locals 2
    .parameter "packageStatusListener"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$2;->val$packageName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$2;->val$replacing:Z

    invoke-interface {p1, v0, v1}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;->onPackageRemoved(Ljava/lang/String;Z)V

    .line 139
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    check-cast p1, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$2;->run(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    return-void
.end method
