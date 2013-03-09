.class Lcom/google/android/finsky/layout/EpisodeSnippet$4;
.super Ljava/lang/Object;
.source "EpisodeSnippet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/EpisodeSnippet;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/EpisodeSnippet;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$4;->this$0:Lcom/google/android/finsky/layout/EpisodeSnippet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$4;->this$0:Lcom/google/android/finsky/layout/EpisodeSnippet;

    #calls: Lcom/google/android/finsky/layout/EpisodeSnippet;->toggleExpandedVisibility()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->access$400(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$4;->this$0:Lcom/google/android/finsky/layout/EpisodeSnippet;

    #calls: Lcom/google/android/finsky/layout/EpisodeSnippet;->logCurrentState()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->access$500(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    .line 167
    return-void
.end method
