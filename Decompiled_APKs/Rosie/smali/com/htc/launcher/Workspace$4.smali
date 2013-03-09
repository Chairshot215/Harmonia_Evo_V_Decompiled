.class Lcom/htc/launcher/Workspace$4;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Workspace;->leaveEditMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 2484
    iput-object p1, p0, Lcom/htc/launcher/Workspace$4;->this$0:Lcom/htc/launcher/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/htc/launcher/Workspace$4;->this$0:Lcom/htc/launcher/Workspace;

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->drawScreens(I)V

    .line 2488
    return-void
.end method
