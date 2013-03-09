.class Lcom/android/camera/SnapboothThread$1;
.super Ljava/lang/Object;
.source "SnapboothThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SnapboothThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SnapboothThread;


# direct methods
.method constructor <init>(Lcom/android/camera/SnapboothThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SnapboothThread$1;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/SnapboothThread$1;->this$0:Lcom/android/camera/SnapboothThread;

    iget-object v1, p0, Lcom/android/camera/SnapboothThread$1;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v1}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/SnapboothFileManager;->checkStorageState(Landroid/app/Activity;)I

    move-result v1

    #setter for: Lcom/android/camera/SnapboothThread;->mStorageState:I
    invoke-static {v0, v1}, Lcom/android/camera/SnapboothThread;->access$002(Lcom/android/camera/SnapboothThread;I)I

    return-void
.end method
