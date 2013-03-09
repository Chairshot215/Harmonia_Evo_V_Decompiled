.class Lcom/android/camera/rotate/RotateToast$TN$1;
.super Ljava/lang/Object;
.source "RotateToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/rotate/RotateToast$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/rotate/RotateToast$TN;


# direct methods
.method constructor <init>(Lcom/android/camera/rotate/RotateToast$TN;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/rotate/RotateToast$TN$1;->this$1:Lcom/android/camera/rotate/RotateToast$TN;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/rotate/RotateToast$TN$1;->this$1:Lcom/android/camera/rotate/RotateToast$TN;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast$TN;->handleShow()V

    return-void
.end method
