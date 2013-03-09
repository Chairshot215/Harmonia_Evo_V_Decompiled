.class Lcom/googlecode/android/wifi/tether/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/MainActivity;->openNoAccessControlDialog()V
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
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/MainActivity$9;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 685
    const-string v0, "TETHER -> MainActivity"

    const-string v1, "OK pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$9;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$0(Lcom/googlecode/android/wifi/tether/MainActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/MainActivity$9;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    .line 687
    return-void
.end method
