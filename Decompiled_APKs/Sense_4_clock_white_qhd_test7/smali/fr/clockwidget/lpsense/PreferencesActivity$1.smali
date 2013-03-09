.class Lfr/clockwidget/lpsense/PreferencesActivity$1;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/clockwidget/lpsense/PreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/clockwidget/lpsense/PreferencesActivity;


# direct methods
.method constructor <init>(Lfr/clockwidget/lpsense/PreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfr/clockwidget/lpsense/PreferencesActivity$1;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 976
    if-eqz p1, :cond_0

    .line 977
    iget-object v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity$1;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    #calls: Lfr/clockwidget/lpsense/PreferencesActivity;->updateLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lfr/clockwidget/lpsense/PreferencesActivity;->access$0(Lfr/clockwidget/lpsense/PreferencesActivity;Landroid/location/Location;)V

    .line 979
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 982
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 986
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 990
    return-void
.end method
