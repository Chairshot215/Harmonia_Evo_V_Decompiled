.class Lcom/htc/android/locationpicker/LocationMapPicker$2;
.super Ljava/lang/Object;
.source "LocationMapPicker.java"

# interfaces
.implements Lcom/htc/android/locationpicker/PickerUtils$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/LocationMapPicker;->getAndUpdateAddress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/LocationMapPicker;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$2;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;Ljava/lang/String;Landroid/location/Address;Z)V
    .locals 3
    .parameter "result"
    .parameter "title"
    .parameter "address"
    .parameter "addressInfo"
    .parameter "fixedByGps"

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 338
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 339
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 340
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 341
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$2;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    iget-object v1, v1, Lcom/htc/android/locationpicker/LocationMapPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 346
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 344
    :cond_0
    const-string v1, "LocationMapPicker"

    const-string v2, "Geocoder failed !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
