.class Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsSummaryMusicViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->setupItemDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;

    #calls: Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->goToArtistPage()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->access$000(Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;)V

    .line 41
    return-void
.end method
