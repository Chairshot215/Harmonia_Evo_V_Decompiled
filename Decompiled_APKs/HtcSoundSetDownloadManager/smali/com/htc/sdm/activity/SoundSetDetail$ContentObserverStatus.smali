.class Lcom/htc/sdm/activity/SoundSetDetail$ContentObserverStatus;
.super Landroid/database/ContentObserver;
.source "SoundSetDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentObserverStatus"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetDetail;


# direct methods
.method public constructor <init>(Lcom/htc/sdm/activity/SoundSetDetail;)V
    .locals 1
    .parameter

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetDetail$ContentObserverStatus;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    .line 1136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1137
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 1142
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail$ContentObserverStatus;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetDetail;->hasWindowFocus()Z

    move-result v0

    .line 1147
    .local v0, bfocus:Z
    if-eqz v0, :cond_0

    .line 1149
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail$ContentObserverStatus;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    #calls: Lcom/htc/sdm/activity/SoundSetDetail;->UpdateList()V
    invoke-static {v1}, Lcom/htc/sdm/activity/SoundSetDetail;->access$600(Lcom/htc/sdm/activity/SoundSetDetail;)V

    .line 1151
    :cond_0
    return-void
.end method
