.class Lcom/google/android/finsky/layout/ExplorePanel$2;
.super Ljava/lang/Object;
.source "ExplorePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ExplorePanel;->setupExplorer()V
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
    .line 90
    iput-object p1, p0, Lcom/google/android/finsky/layout/ExplorePanel$2;->this$0:Lcom/google/android/finsky/layout/ExplorePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/layout/ExplorePanel$2;->this$0:Lcom/google/android/finsky/layout/ExplorePanel;

    #calls: Lcom/google/android/finsky/layout/ExplorePanel;->doExplorerWifiAlert()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/ExplorePanel;->access$100(Lcom/google/android/finsky/layout/ExplorePanel;)V

    .line 94
    return-void
.end method
