.class Lcom/google/android/finsky/exploreactivity/ExploreApplication$1$1;
.super Ljava/lang/Object;
.source "ExploreApplication.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/ExploreApplication$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/exploreactivity/ExploreApplication$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/ExploreApplication$1;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$1$1;->this$1:Lcom/google/android/finsky/exploreactivity/ExploreApplication$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$1$1;->this$1:Lcom/google/android/finsky/exploreactivity/ExploreApplication$1;

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$1;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    #getter for: Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->access$100(Lcom/google/android/finsky/exploreactivity/ExploreApplication;)Lcom/google/android/finsky/exploreactivity/NodeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->togglePlayback()V

    .line 598
    return-void
.end method
