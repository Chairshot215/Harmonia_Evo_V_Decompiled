.class Lcom/googlecode/android/wifi/tether/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/MainActivity;->openUpdateDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

.field private final synthetic val$downloadFileUrl:Ljava/lang/String;

.field private final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/MainActivity$17;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    iput-object p2, p0, Lcom/googlecode/android/wifi/tether/MainActivity$17;->val$downloadFileUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/googlecode/android/wifi/tether/MainActivity$17;->val$fileName:Ljava/lang/String;

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 792
    const-string v0, "TETHER -> MainActivity"

    const-string v1, "Yes pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity$17;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->access$0(Lcom/googlecode/android/wifi/tether/MainActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/MainActivity$17;->val$downloadFileUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/MainActivity$17;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/TetherApplication;->downloadUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    return-void
.end method
