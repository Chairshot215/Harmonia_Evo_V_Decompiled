.class Lcom/google/android/finsky/exploreactivity/ExploreApplication$1;
.super Ljava/lang/Object;
.source "ExploreApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/ExploreApplication;->showPlaybackControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/ExploreApplication;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/ExploreApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$1;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$1;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    #getter for: Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mPlaybackControls:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->access$000(Lcom/google/android/finsky/exploreactivity/ExploreApplication;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreApplication$1;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    #getter for: Lcom/google/android/finsky/exploreactivity/ExploreApplication;->mPlaybackControls:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->access$000(Lcom/google/android/finsky/exploreactivity/ExploreApplication;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/exploreactivity/ExploreApplication$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication$1$1;-><init>(Lcom/google/android/finsky/exploreactivity/ExploreApplication$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    return-void
.end method
