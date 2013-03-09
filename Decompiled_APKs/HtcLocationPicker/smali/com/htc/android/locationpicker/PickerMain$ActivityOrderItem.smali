.class Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;
.super Ljava/lang/Object;
.source "PickerMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/PickerMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityOrderItem"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mOrder:I

.field final synthetic this$0:Lcom/htc/android/locationpicker/PickerMain;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/PickerMain;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "order"
    .parameter "name"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;->this$0:Lcom/htc/android/locationpicker/PickerMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;->mOrder:I

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;->mName:Ljava/lang/String;

    .line 151
    iput p2, p0, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;->mOrder:I

    .line 152
    iput-object p3, p0, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;->mName:Ljava/lang/String;

    .line 153
    return-void
.end method
