.class Lcom/htc/android/locationpicker/LocationPickerManager$11;
.super Ljava/lang/Thread;
.source "LocationPickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/LocationPickerManager;->reverseAddrToGeoCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field geoCoderObj:Landroid/location/Geocoder;

.field final synthetic this$0:Lcom/htc/android/locationpicker/LocationPickerManager;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/LocationPickerManager;)V
    .locals 2
    .parameter

    .prologue
    .line 906
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$11;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 907
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$11;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager$11;->geoCoderObj:Landroid/location/Geocoder;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0xa0

    .line 911
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$11;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    #getter for: Lcom/htc/android/locationpicker/LocationPickerManager;->m_uiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->access$400(Lcom/htc/android/locationpicker/LocationPickerManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$11;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager$11;->geoCoderObj:Landroid/location/Geocoder;

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager$11;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    #getter for: Lcom/htc/android/locationpicker/LocationPickerManager;->m_fullAddressStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/locationpicker/LocationPickerManager;->access$000(Lcom/htc/android/locationpicker/LocationPickerManager;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addrLists:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 927
    :goto_0
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$11;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    #getter for: Lcom/htc/android/locationpicker/LocationPickerManager;->m_uiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->access$400(Lcom/htc/android/locationpicker/LocationPickerManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 928
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$11;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    #getter for: Lcom/htc/android/locationpicker/LocationPickerManager;->m_uiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->access$400(Lcom/htc/android/locationpicker/LocationPickerManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 929
    return-void

    .line 917
    :catch_0
    move-exception v0

    .line 919
    .local v0, e:Ljava/io/IOException;
    const-string v1, "LocationPickerManager"

    const-string v2, "network IO exception, reverse address fail~"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 922
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 924
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "LocationPickerManager"

    const-string v2, "full address string object is null object, reverse address fail~"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
