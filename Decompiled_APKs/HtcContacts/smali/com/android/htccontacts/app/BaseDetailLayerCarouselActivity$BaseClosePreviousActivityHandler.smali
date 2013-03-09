.class Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity$BaseClosePreviousActivityHandler;
.super Ljava/lang/Object;
.source "BaseDetailLayerCarouselActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseClosePreviousActivityHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity$BaseClosePreviousActivityHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 6

    .prologue
    .line 185
    invoke-static {}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 186
    .local v2, previousActivityRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;>;"
    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    .line 188
    .local v1, previousActivity:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mIsDestroyed:Z

    if-nez v3, :cond_0

    .line 189
    invoke-static {}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BaseDetailLayerCarouselActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking leak finish previous layout activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_1
    invoke-virtual {v1}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->finish()V

    goto :goto_0

    .line 194
    .end local v1           #previousActivity:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;
    .end local v2           #previousActivityRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;>;"
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 195
    const/4 v3, 0x0

    return v3
.end method
