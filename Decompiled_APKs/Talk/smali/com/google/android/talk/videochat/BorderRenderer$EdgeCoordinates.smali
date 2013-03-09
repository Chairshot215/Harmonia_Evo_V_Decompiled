.class Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;
.super Ljava/lang/Object;
.source "BorderRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/BorderRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeCoordinates"
.end annotation


# instance fields
.field final mBoxVerticesBuffer:Ljava/nio/FloatBuffer;

.field final mTexVerticesBuffer:Ljava/nio/FloatBuffer;

.field final synthetic this$0:Lcom/google/android/talk/videochat/BorderRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/BorderRenderer;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;->this$0:Lcom/google/android/talk/videochat/BorderRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    #getter for: Lcom/google/android/talk/videochat/BorderRenderer;->mBoxVertices:[F
    invoke-static {p1}, Lcom/google/android/talk/videochat/BorderRenderer;->access$000(Lcom/google/android/talk/videochat/BorderRenderer;)[F

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;->mBoxVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 78
    #getter for: Lcom/google/android/talk/videochat/BorderRenderer;->mTexVertices:[F
    invoke-static {p1}, Lcom/google/android/talk/videochat/BorderRenderer;->access$100(Lcom/google/android/talk/videochat/BorderRenderer;)[F

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/BorderRenderer$EdgeCoordinates;->mTexVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 80
    return-void
.end method
