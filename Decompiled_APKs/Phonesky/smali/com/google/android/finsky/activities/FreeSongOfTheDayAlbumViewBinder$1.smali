.class Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$1;
.super Ljava/lang/Object;
.source "FreeSongOfTheDayAlbumViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$1;->this$0:Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetry()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$1;->this$0:Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;

    #calls: Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->retryRequest()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->access$000(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)V

    .line 81
    return-void
.end method
