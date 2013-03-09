.class Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;
.super Landroid/database/ContentObserver;
.source "ObserverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ObserverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaObserver"
.end annotation


# static fields
.field private static final DELAY_TIMER:I = 0xbb8


# instance fields
.field private mIsChanged:Z

.field private mPreviousTime:J

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ObserverAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/ObserverAdapter;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "handler"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->this$0:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 155
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mIsChanged:Z

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mPreviousTime:J

    .line 157
    return-void
.end method


# virtual methods
.method public isChanged()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mIsChanged:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 10
    .parameter "selfChange"

    .prologue
    const/16 v9, 0x138f

    .line 169
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mIsChanged:Z

    .line 170
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->this$0:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mEnableObserverNotify:Z
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->access$000(Lcom/htc/album/TabPluginDevice/ObserverAdapter;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->this$0:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    invoke-virtual {v5, v9}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onRemoveMessage(I)V

    .line 173
    const/16 v2, 0xbb8

    .line 174
    .local v2, nTimeDelay:I
    const-wide/16 v3, 0x0

    .line 175
    .local v3, nTimerGap:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 177
    .local v0, nTimeCurrent:J
    const-wide/16 v5, 0x0

    iget-wide v7, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mPreviousTime:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mPreviousTime:J

    .line 180
    :cond_0
    iget-wide v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mPreviousTime:J

    sub-long v3, v0, v5

    .line 181
    const-wide/16 v5, 0xbb8

    cmp-long v5, v5, v3

    if-gtz v5, :cond_1

    .line 183
    const/4 v2, 0x0

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->mPreviousTime:J

    .line 186
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->this$0:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6, v2}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onPostMessage(ILjava/lang/Object;I)V

    .line 187
    const-string v5, "ObserverAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ObserverAdapter][onChange]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->this$0:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v5, "ObserverAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ObserverAdapter][onChange]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v5, "ObserverAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ObserverAdapter][onChange]: delay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v0           #nTimeCurrent:J
    .end local v2           #nTimeDelay:I
    .end local v3           #nTimerGap:J
    :cond_2
    return-void
.end method
