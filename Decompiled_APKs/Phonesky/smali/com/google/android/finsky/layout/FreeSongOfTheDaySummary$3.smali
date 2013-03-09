.class Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;
.super Lcom/google/android/finsky/previews/SongSnippetStatusListener;
.source "FreeSongOfTheDaySummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;->this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    invoke-direct {p0}, Lcom/google/android/finsky/previews/SongSnippetStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected update(IZ)V
    .locals 1
    .parameter "state"
    .parameter "highlighted"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;->this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    #getter for: Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;
    invoke-static {v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->access$100(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)Lcom/google/android/finsky/layout/SongIndex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;->this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    #calls: Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setHighlighted(Z)V
    invoke-static {v0, p2}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->access$200(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;Z)V

    .line 121
    return-void
.end method
