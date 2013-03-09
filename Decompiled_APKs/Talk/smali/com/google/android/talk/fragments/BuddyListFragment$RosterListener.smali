.class Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;
.super Lcom/google/android/gtalkservice/IRosterListener$Stub;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RosterListener"
.end annotation


# instance fields
.field mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IRosterListener$Stub;-><init>()V

    .line 378
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 379
    return-void
.end method


# virtual methods
.method public clearRefs()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 383
    return-void
.end method

.method public presenceChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "contact"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 416
    .local v0, b:Lcom/google/android/talk/fragments/BuddyListFragment;
    if-nez v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RosterListener.presenceChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$500(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 421
    iget-object v1, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$2;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$2;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 419
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public rosterChanged()V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 388
    .local v0, b:Lcom/google/android/talk/fragments/BuddyListFragment;
    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 391
    :cond_0
    const-string v1, "RosterListener.rosterChanged"

    #calls: Lcom/google/android/talk/fragments/BuddyListFragment;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$200(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 395
    iget-object v1, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$1;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public selfPresenceChanged()V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 435
    .local v0, b:Lcom/google/android/talk/fragments/BuddyListFragment;
    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 438
    :cond_0
    const-string v1, "RosterListener.selfPresenceChanged"

    #calls: Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$500(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 440
    iget-object v1, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$3;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$3;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
