.class Lcom/htc/android/locationpicker/PickerMain$16;
.super Ljava/lang/Object;
.source "PickerMain.java"

# interfaces
.implements Lcom/htc/android/locationpicker/PickerUtils$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/PickerMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/PickerMain;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/PickerMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain$16;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;Ljava/lang/String;Landroid/location/Address;Z)V
    .locals 2
    .parameter "result"
    .parameter "title"
    .parameter "address"
    .parameter "addressInfo"
    .parameter "fixedByGps"

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$16;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$2000(Lcom/htc/android/locationpicker/PickerMain;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1192
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$16;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mReturnAddress:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/htc/android/locationpicker/PickerMain;->access$2102(Lcom/htc/android/locationpicker/PickerMain;Ljava/lang/String;)Ljava/lang/String;

    .line 1194
    if-eqz p1, :cond_0

    .line 1195
    const-string v0, "PickerMain"

    const-string v1, "Geocoder succeed !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$16;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->fillResultGoogle()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$1500(Lcom/htc/android/locationpicker/PickerMain;)V

    .line 1197
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$16;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    .line 1202
    :goto_0
    return-void

    .line 1199
    :cond_0
    const-string v0, "PickerMain"

    const-string v1, "Geocoder failed !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$16;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$2000(Lcom/htc/android/locationpicker/PickerMain;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
