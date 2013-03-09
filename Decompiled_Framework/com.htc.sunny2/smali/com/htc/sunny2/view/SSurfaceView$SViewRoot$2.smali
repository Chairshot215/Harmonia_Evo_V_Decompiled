.class Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;
.super Ljava/lang/Object;
.source "SSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->playSoundEffect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

.field final synthetic val$soundConstant:I


# direct methods
.method constructor <init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iput p2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;->val$soundConstant:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;->val$soundConstant:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->playSoundEffect(I)V

    return-void
.end method
