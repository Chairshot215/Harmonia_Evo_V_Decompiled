.class Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$2;
.super Ljava/lang/Object;
.source "FreeSongOfTheDaySummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->showSummary(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

.field final synthetic val$song:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$2;->this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    iput-object p2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$2;->val$song:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$2;->this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    #getter for: Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mConnection:Lcom/google/android/finsky/previews/PreviewController;
    invoke-static {v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->access$000(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)Lcom/google/android/finsky/previews/PreviewController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$2;->val$song:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;->togglePlayback(Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)V

    .line 84
    return-void
.end method
