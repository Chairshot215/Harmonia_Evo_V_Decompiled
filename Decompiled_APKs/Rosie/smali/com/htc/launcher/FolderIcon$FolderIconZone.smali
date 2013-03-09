.class final Lcom/htc/launcher/FolderIcon$FolderIconZone;
.super Lcom/htc/android/rosie/home/fxcontrol/DropZone;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FolderIconZone"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/FolderIcon;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/FolderIcon;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)V
    .locals 0
    .parameter
    .parameter "scope"
    .parameter "drop"
    .parameter "target"
    .parameter "overlayColor"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/launcher/FolderIcon$FolderIconZone;->this$0:Lcom/htc/launcher/FolderIcon;

    .line 174
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;-><init>(Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)V

    .line 175
    return-void
.end method


# virtual methods
.method public updateBounds()V
    .locals 9

    .prologue
    const v8, 0x7f0a0035

    .line 181
    iget-object v5, p0, Lcom/htc/launcher/FolderIcon$FolderIconZone;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v5}, Lcom/htc/launcher/FolderIcon;->access$000(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/htc/launcher/FolderIcon$FolderIconZone;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v6}, Lcom/htc/launcher/FolderIcon;->access$000(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0039

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v1, v5, v6

    .line 183
    .local v1, left:I
    iget-object v5, p0, Lcom/htc/launcher/FolderIcon$FolderIconZone;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v5}, Lcom/htc/launcher/FolderIcon;->access$000(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 185
    .local v4, top:I
    iget-object v5, p0, Lcom/htc/launcher/FolderIcon$FolderIconZone;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v5}, Lcom/htc/launcher/FolderIcon;->access$000(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/htc/launcher/FolderIcon$FolderIconZone;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v6}, Lcom/htc/launcher/FolderIcon;->access$000(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0038

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v3, v5, v6

    .line 187
    .local v3, right:I
    iget-object v5, p0, Lcom/htc/launcher/FolderIcon$FolderIconZone;->this$0:Lcom/htc/launcher/FolderIcon;

    #getter for: Lcom/htc/launcher/FolderIcon;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v5}, Lcom/htc/launcher/FolderIcon;->access$000(Lcom/htc/launcher/FolderIcon;)Lcom/htc/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 189
    .local v0, bottom:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 191
    .local v2, removeRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/htc/launcher/FolderIcon$FolderIconZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v5

    iput-object v2, v5, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->bounds:Landroid/graphics/Rect;

    .line 192
    return-void
.end method
