.class Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;
.super Landroid/database/ContentObserver;
.source "SoundSetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentObserverStatus"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetList;


# direct methods
.method public constructor <init>(Lcom/htc/sdm/activity/SoundSetList;)V
    .locals 1
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 312
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetList;->hasWindowFocus()Z

    move-result v0

    .line 322
    .local v0, bfocus:Z
    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #calls: Lcom/htc/sdm/activity/SoundSetList;->UpdateList()V
    invoke-static {v1}, Lcom/htc/sdm/activity/SoundSetList;->access$200(Lcom/htc/sdm/activity/SoundSetList;)V

    .line 325
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    const/4 v2, 0x0

    #setter for: Lcom/htc/sdm/activity/SoundSetList;->mIsDirty:Z
    invoke-static {v1, v2}, Lcom/htc/sdm/activity/SoundSetList;->access$302(Lcom/htc/sdm/activity/SoundSetList;Z)Z

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    const/4 v2, 0x1

    #setter for: Lcom/htc/sdm/activity/SoundSetList;->mIsDirty:Z
    invoke-static {v1, v2}, Lcom/htc/sdm/activity/SoundSetList;->access$302(Lcom/htc/sdm/activity/SoundSetList;Z)Z

    goto :goto_0
.end method
