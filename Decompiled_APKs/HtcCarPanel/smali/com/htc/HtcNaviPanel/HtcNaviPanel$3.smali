.class Lcom/htc/HtcNaviPanel/HtcNaviPanel$3;
.super Ljava/lang/Object;
.source "HtcNaviPanel.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/HtcNaviPanel/HtcNaviPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;


# direct methods
.method constructor <init>(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$3;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 215
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 217
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 219
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "s"
    .parameter "i"
    .parameter "bundle"

    .prologue
    .line 221
    return-void
.end method
