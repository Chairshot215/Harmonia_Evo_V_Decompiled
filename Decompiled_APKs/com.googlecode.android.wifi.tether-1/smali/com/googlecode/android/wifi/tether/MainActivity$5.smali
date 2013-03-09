.class Lcom/googlecode/android/wifi/tether/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/MainActivity;->onTrackballEvent(Landroid/view/MotionEvent;)Z
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
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/MainActivity$5;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 228
    const-string v0, "TETHER -> MainActivity"

    const-string v1, "Trackball press confirmed ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v0, Lcom/googlecode/android/wifi/tether/MainActivity;->currentInstance:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->startBtnListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$22(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/view/View$OnClickListener;

    move-result-object v0

    sget-object v1, Lcom/googlecode/android/wifi/tether/MainActivity;->currentInstance:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->startBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$23(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 230
    return-void
.end method
