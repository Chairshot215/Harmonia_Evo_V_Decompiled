.class Lcom/htc/android/locationpicker/PickerMain$12;
.super Ljava/lang/Object;
.source "PickerMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1072
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain$12;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$12;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->removeDialog(I)V

    .line 1078
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$12;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mReturnType:I
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$1200(Lcom/htc/android/locationpicker/PickerMain;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$12;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/PickerMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->isWirelessEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$12;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->getInstance(Landroid/content/Context;)Lcom/htc/android/locationpicker/PickerUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain$12;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D
    invoke-static {v1}, Lcom/htc/android/locationpicker/PickerMain;->access$1300(Lcom/htc/android/locationpicker/PickerMain;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/android/locationpicker/PickerMain$12;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #getter for: Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D
    invoke-static {v3}, Lcom/htc/android/locationpicker/PickerMain;->access$1400(Lcom/htc/android/locationpicker/PickerMain;)D

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/android/locationpicker/PickerMain$12;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    iget-object v5, v5, Lcom/htc/android/locationpicker/PickerMain;->mGeocoderFinishListener:Lcom/htc/android/locationpicker/PickerUtils$SearchListener;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/locationpicker/PickerUtils;->getAddressFromNetwork(DDLcom/htc/android/locationpicker/PickerUtils$SearchListener;)V

    .line 1083
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$12;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/16 v1, 0x9

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mState:I
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->access$102(Lcom/htc/android/locationpicker/PickerMain;I)I

    .line 1084
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$12;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    .line 1095
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$12;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/16 v1, 0xc

    #setter for: Lcom/htc/android/locationpicker/PickerMain;->mState:I
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->access$102(Lcom/htc/android/locationpicker/PickerMain;I)I

    .line 1087
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$12;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    goto :goto_0

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$12;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    #calls: Lcom/htc/android/locationpicker/PickerMain;->fillResultGoogle()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerMain;->access$1500(Lcom/htc/android/locationpicker/PickerMain;)V

    .line 1093
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$12;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    goto :goto_0
.end method
