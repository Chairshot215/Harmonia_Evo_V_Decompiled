.class Lcom/google/android/setupwizard/NetworkMonitor$1;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupwizard/NetworkMonitor;-><init>(Landroid/content/Context;Lcom/google/android/setupwizard/NetworkMonitor$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupwizard/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/setupwizard/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/setupwizard/NetworkMonitor$1;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitor$1;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    #calls: Lcom/google/android/setupwizard/NetworkMonitor;->onStateChanged()V
    invoke-static {v0}, Lcom/google/android/setupwizard/NetworkMonitor;->access$000(Lcom/google/android/setupwizard/NetworkMonitor;)V

    return-void
.end method
