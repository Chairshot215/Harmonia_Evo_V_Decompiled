.class Lcom/htc/android/locationpicker/LocationAgent$1;
.super Ljava/lang/Object;
.source "LocationAgent.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/LocationAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/LocationAgent;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/LocationAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 14
    .parameter "location"

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 336
    .local v9, now:J
    const-wide/16 v0, 0x2710

    sub-long v12, v9, v0

    .line 338
    .local v12, then:J
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    .line 339
    .local v8, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mEnabledProviders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationAgent;->access$000(Lcom/htc/android/locationpicker/LocationAgent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;

    .line 340
    .local v11, provider:Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;
    iget-object v0, v11, Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    iput-wide v9, v11, Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;->date:J

    .line 352
    .end local v11           #provider:Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;
    :cond_1
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationAgent;->access$100(Lcom/htc/android/locationpicker/LocationAgent;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationAgent;->access$100(Lcom/htc/android/locationpicker/LocationAgent;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 384
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 344
    .restart local v11       #provider:Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;
    :cond_3
    :try_start_1
    iget-object v0, v11, Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;->name:Ljava/lang/String;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, v11, Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;->date:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_0

    .line 346
    const-string v0, "LocationAgent"

    const-string v1, "Got fallback update soon after preferred udpate, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 335
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #now:J
    .end local v11           #provider:Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;
    .end local v12           #then:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 354
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #now:J
    .restart local v12       #then:J
    :cond_4
    :try_start_2
    const-string v0, "gps"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 355
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationAgent;->access$200(Lcom/htc/android/locationpicker/LocationAgent;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_5

    .line 356
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    new-instance v1, Landroid/location/Location;

    const-string v2, "gps"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/LocationAgent;->access$202(Lcom/htc/android/locationpicker/LocationAgent;Landroid/location/Location;)Landroid/location/Location;

    .line 358
    :cond_5
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationAgent;->access$200(Lcom/htc/android/locationpicker/LocationAgent;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 359
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    const/16 v1, 0xd

    #setter for: Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/LocationAgent;->access$102(Lcom/htc/android/locationpicker/LocationAgent;I)I

    .line 360
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationAgent;->access$300(Lcom/htc/android/locationpicker/LocationAgent;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 361
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationAgent;->access$300(Lcom/htc/android/locationpicker/LocationAgent;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 364
    :cond_6
    const-string v0, "LocationAgent"

    const-string v1, "Fix GPS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :cond_7
    const-string v0, "network"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    const-string v0, "LocationAgent"

    const-string v1, "Fix Networ"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mLocationNetwork:Landroid/location/Location;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationAgent;->access$400(Lcom/htc/android/locationpicker/LocationAgent;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_8

    .line 372
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    new-instance v1, Landroid/location/Location;

    const-string v2, "network"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/htc/android/locationpicker/LocationAgent;->mLocationNetwork:Landroid/location/Location;
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/LocationAgent;->access$402(Lcom/htc/android/locationpicker/LocationAgent;Landroid/location/Location;)Landroid/location/Location;

    .line 374
    :cond_8
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mLocationNetwork:Landroid/location/Location;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationAgent;->access$400(Lcom/htc/android/locationpicker/LocationAgent;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 376
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mClientListener:Lcom/htc/android/locationpicker/LocationAgent$AgentListener;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationAgent;->access$500(Lcom/htc/android/locationpicker/LocationAgent;)Lcom/htc/android/locationpicker/LocationAgent$AgentListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mClientListener:Lcom/htc/android/locationpicker/LocationAgent$AgentListener;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationAgent;->access$500(Lcom/htc/android/locationpicker/LocationAgent;)Lcom/htc/android/locationpicker/LocationAgent$AgentListener;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mLocationNetwork:Landroid/location/Location;
    invoke-static {v3}, Lcom/htc/android/locationpicker/LocationAgent;->access$400(Lcom/htc/android/locationpicker/LocationAgent;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationAgent$1;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mLocationNetwork:Landroid/location/Location;
    invoke-static {v5}, Lcom/htc/android/locationpicker/LocationAgent;->access$400(Lcom/htc/android/locationpicker/LocationAgent;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/htc/android/locationpicker/LocationAgent$AgentListener;->onUpdateStatus(IIDD)V

    .line 380
    const-string v0, "LocationAgent"

    const-string v1, "notify client : MODE_FIX_NETWORK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 387
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 390
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "s"
    .parameter "i"
    .parameter "bundle"

    .prologue
    .line 393
    return-void
.end method
