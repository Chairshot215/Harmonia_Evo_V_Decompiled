.class Lcom/htc/launcher/Workspace$9;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Workspace;->scrollToScreen(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Workspace;

.field final synthetic val$snapPage:I


# direct methods
.method constructor <init>(Lcom/htc/launcher/Workspace;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4199
    iput-object p1, p0, Lcom/htc/launcher/Workspace$9;->this$0:Lcom/htc/launcher/Workspace;

    iput p2, p0, Lcom/htc/launcher/Workspace$9;->val$snapPage:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4202
    iget-object v0, p0, Lcom/htc/launcher/Workspace$9;->this$0:Lcom/htc/launcher/Workspace;

    #getter for: Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;
    invoke-static {v0}, Lcom/htc/launcher/Workspace;->access$700(Lcom/htc/launcher/Workspace;)Lcom/htc/launcher/SlideController;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/Workspace$9;->val$snapPage:I

    invoke-virtual {v0, v1}, Lcom/htc/launcher/SlideController;->snapToScreen(I)V

    .line 4203
    return-void
.end method
