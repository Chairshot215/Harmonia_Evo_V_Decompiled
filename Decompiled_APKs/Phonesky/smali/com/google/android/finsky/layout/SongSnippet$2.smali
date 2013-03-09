.class Lcom/google/android/finsky/layout/SongSnippet$2;
.super Ljava/lang/Object;
.source "SongSnippet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/SongSnippet;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/SongSnippet;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/SongSnippet;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/finsky/layout/SongSnippet$2;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet$2;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;
    invoke-static {v0}, Lcom/google/android/finsky/layout/SongSnippet;->access$300(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/previews/PreviewController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet$2;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    invoke-static {v1}, Lcom/google/android/finsky/layout/SongSnippet;->access$200(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;->togglePlayback(Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)V

    .line 114
    return-void
.end method
