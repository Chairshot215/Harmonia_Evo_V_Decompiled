.class Lcom/android/htccontacts/BrowseLayerCarouselActivity$1;
.super Ljava/lang/Object;
.source "BrowseLayerCarouselActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseLayerCarouselActivity;->ensureProfiling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseLayerCarouselActivity;

.field final synthetic val$idler:Landroid/os/MessageQueue$IdleHandler;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseLayerCarouselActivity;Landroid/os/MessageQueue$IdleHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity$1;->this$0:Lcom/android/htccontacts/BrowseLayerCarouselActivity;

    iput-object p2, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity$1;->val$idler:Landroid/os/MessageQueue$IdleHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 634
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity$1;->val$idler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 635
    return-void
.end method
