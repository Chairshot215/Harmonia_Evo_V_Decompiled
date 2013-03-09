.class Lcom/google/android/talk/videochat/GlView$1;
.super Ljava/lang/Object;
.source "GlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/GlView;->setActiveEffect(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/GlView;

.field final synthetic val$id:I

.field final synthetic val$param:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/GlView;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlView$1;->this$0:Lcom/google/android/talk/videochat/GlView;

    iput p2, p0, Lcom/google/android/talk/videochat/GlView$1;->val$id:I

    iput-object p3, p0, Lcom/google/android/talk/videochat/GlView$1;->val$param:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$1;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView;->access$000(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/GlView$GLRenderer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/talk/videochat/GlView$1;->val$id:I

    iget-object v2, p0, Lcom/google/android/talk/videochat/GlView$1;->val$param:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->setActiveEffect(ILjava/lang/Object;)V

    .line 162
    return-void
.end method
