.class Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler$2;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2828
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler$2;->this$1:Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler$2;->this$1:Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;

    iget-object v0, v0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->finish()V

    .line 2832
    return-void
.end method
