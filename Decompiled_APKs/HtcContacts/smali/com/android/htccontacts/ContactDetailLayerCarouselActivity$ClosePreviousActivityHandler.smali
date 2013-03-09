.class public Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$ClosePreviousActivityHandler;
.super Ljava/lang/Object;
.source "ContactDetailLayerCarouselActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ClosePreviousActivityHandler"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)V
    .locals 1
    .parameter "newActivity"

    .prologue
    .line 655
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 656
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$ClosePreviousActivityHandler;->activityRef:Ljava/lang/ref/WeakReference;

    .line 657
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 6

    .prologue
    .line 662
    invoke-static {}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$1000()Ljava/util/ArrayList;

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

    .line 663
    .local v2, previousActivityRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;>;"
    if-eqz v2, :cond_0

    .line 664
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 665
    .local v1, previousActivity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 666
    invoke-static {}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$400()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ContactDetailLayerCarouselActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking leak finish previous detail activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 672
    .end local v1           #previousActivity:Landroid/app/Activity;
    .end local v2           #previousActivityRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;>;"
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$1000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 673
    const/4 v3, 0x0

    return v3
.end method
