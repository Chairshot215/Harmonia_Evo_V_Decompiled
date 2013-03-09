.class Lcom/android/CSDFunctionG/audiotest$myThread;
.super Ljava/lang/Thread;
.source "audiotest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/audiotest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/audiotest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/audiotest;)V
    .locals 0
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/CSDFunctionG/audiotest$myThread;->this$0:Lcom/android/CSDFunctionG/audiotest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 678
    const-string v0, "CSD_audiotest"

    const-string v1, "...Play RAW file (Thread)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest$myThread;->this$0:Lcom/android/CSDFunctionG/audiotest;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/audiotest;->PlayWave2()V

    .line 680
    return-void
.end method
