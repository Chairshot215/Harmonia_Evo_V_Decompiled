.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$1;
.super Ljava/lang/Object;
.source "GTalkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncRemoveObsoleteEndpoints()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$1;->this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$1;->this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAndRemoveObsoleteEndpoints()V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 614
    return-void
.end method
