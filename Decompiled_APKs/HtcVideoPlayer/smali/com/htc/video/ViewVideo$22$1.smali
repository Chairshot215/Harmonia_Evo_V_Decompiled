.class Lcom/htc/video/ViewVideo$22$1;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo$22;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/video/ViewVideo$22;

.field final synthetic val$t:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo$22;Landroid/widget/Toast;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3022
    iput-object p1, p0, Lcom/htc/video/ViewVideo$22$1;->this$1:Lcom/htc/video/ViewVideo$22;

    iput-object p2, p0, Lcom/htc/video/ViewVideo$22$1;->val$t:Landroid/widget/Toast;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3026
    iget-object v0, p0, Lcom/htc/video/ViewVideo$22$1;->val$t:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3027
    return-void
.end method
