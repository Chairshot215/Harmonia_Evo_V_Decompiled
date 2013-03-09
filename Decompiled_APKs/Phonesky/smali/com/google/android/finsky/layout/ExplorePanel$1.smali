.class Lcom/google/android/finsky/layout/ExplorePanel$1;
.super Landroid/content/BroadcastReceiver;
.source "ExplorePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ExplorePanel;->configure(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ExplorePanel;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/ExplorePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/finsky/layout/ExplorePanel$1;->this$0:Lcom/google/android/finsky/layout/ExplorePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel$1;->this$0:Lcom/google/android/finsky/layout/ExplorePanel;

    #calls: Lcom/google/android/finsky/layout/ExplorePanel;->setupExplorer()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/ExplorePanel;->access$000(Lcom/google/android/finsky/layout/ExplorePanel;)V

    .line 61
    return-void
.end method
