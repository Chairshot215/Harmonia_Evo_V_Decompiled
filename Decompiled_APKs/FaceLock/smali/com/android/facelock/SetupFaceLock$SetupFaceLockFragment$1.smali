.class Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$1;
.super Ljava/lang/Object;
.source "SetupFaceLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;


# direct methods
.method constructor <init>(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$1;->this$0:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$1;->this$0:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    #calls: Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->displayResult()V
    invoke-static {v0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->access$000(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)V

    .line 143
    return-void
.end method
