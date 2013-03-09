.class Lcom/google/android/finsky/exploreactivity/ExploreActivity$1;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/ExploreActivity;->onTouch(Ljava/lang/String;Lcom/jme3/input/event/TouchEvent;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/ExploreActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/ExploreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity$1;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity$1;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    #getter for: Lcom/google/android/finsky/exploreactivity/ExploreActivity;->app:Lcom/jme3/app/Application;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->access$000(Lcom/google/android/finsky/exploreactivity/ExploreActivity;)Lcom/jme3/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity$1;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    #getter for: Lcom/google/android/finsky/exploreactivity/ExploreActivity;->app:Lcom/jme3/app/Application;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->access$100(Lcom/google/android/finsky/exploreactivity/ExploreActivity;)Lcom/jme3/app/Application;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/app/Application;->stop(Z)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity$1;->this$0:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->finish()V

    .line 172
    return-void
.end method
