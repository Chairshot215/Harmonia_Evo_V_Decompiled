.class Lcom/googlecode/android/wifi/tether/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/MainActivity;->openNoNetfilterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/MainActivity;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/MainActivity$8;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 670
    const-string v0, "TETHER -> MainActivity"

    const-string v1, "Override pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$8;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$0(Lcom/googlecode/android/wifi/tether/MainActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v0

    const-string v1, "Ignoring, note that this application will NOT work correctly."

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    .line 672
    return-void
.end method
