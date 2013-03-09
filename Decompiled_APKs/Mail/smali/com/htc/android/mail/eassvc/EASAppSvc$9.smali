.class Lcom/htc/android/mail/eassvc/EASAppSvc$9;
.super Ljava/lang/Object;
.source "EASAppSvc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/eassvc/EASAppSvc;->setMailFilterType(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

.field final synthetic val$exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3683
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$9;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iput-object p2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$9;->val$exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 3685
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$9;->val$exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->resetSynckeyForMoreAvalible()Ljava/util/ArrayList;

    move-result-object v6

    .line 3686
    .local v6, changeColls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3687
    .local v2, collId:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$9;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$9;->val$exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const/4 v5, 0x0

    move v4, v3

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->queueMailSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;ZZLandroid/os/ConditionVariable;)V
    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1700(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;ZZLandroid/os/ConditionVariable;)V

    goto :goto_0

    .line 3689
    .end local v2           #collId:Ljava/lang/String;
    :cond_0
    return-void
.end method
