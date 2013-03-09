.class Lcom/android/htccontacts/BrowseLayerCarouselActivity$ResetNewCallFlagThread;
.super Ljava/lang/Thread;
.source "BrowseLayerCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseLayerCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetNewCallFlagThread"
.end annotation


# instance fields
.field private mRefContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 788
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 789
    if-nez p1, :cond_0

    .line 790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'context\' cannot be null !!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity$ResetNewCallFlagThread;->mRefContext:Ljava/lang/ref/WeakReference;

    .line 793
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 798
    iget-object v3, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity$ResetNewCallFlagThread;->mRefContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 799
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 800
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 802
    .local v2, where:Ljava/lang/StringBuilder;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 803
    const-string v3, " AND new=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    new-instance v1, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 806
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "new"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 812
    .end local v1           #values:Landroid/content/ContentValues;
    .end local v2           #where:Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 810
    :cond_0
    const-string v3, "BrowseLayerCarouselActivity"

    const-string v4, "ResetNewCallFlagThread - run() did not run because of reference context cannot be found !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
