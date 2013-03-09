.class final Lcom/htc/feedback/AdditionalInfoService$FeedbackLocationListener;
.super Ljava/lang/Object;
.source "AdditionalInfoService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/feedback/AdditionalInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FeedbackLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/feedback/AdditionalInfoService;


# direct methods
.method private constructor <init>(Lcom/htc/feedback/AdditionalInfoService;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/htc/feedback/AdditionalInfoService$FeedbackLocationListener;->this$0:Lcom/htc/feedback/AdditionalInfoService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/feedback/AdditionalInfoService;Lcom/htc/feedback/AdditionalInfoService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/htc/feedback/AdditionalInfoService$FeedbackLocationListener;-><init>(Lcom/htc/feedback/AdditionalInfoService;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 266
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v0

    iget v0, v0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->latitude:F

    .line 271
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->longitude:F

    .line 273
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v0

    iget v1, v0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    .line 274
    iget-object v1, p0, Lcom/htc/feedback/AdditionalInfoService$FeedbackLocationListener;->this$0:Lcom/htc/feedback/AdditionalInfoService;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/htc/feedback/AdditionalInfoService$FeedbackLocationListener;->this$0:Lcom/htc/feedback/AdditionalInfoService;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 278
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 288
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 285
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 282
    return-void
.end method
