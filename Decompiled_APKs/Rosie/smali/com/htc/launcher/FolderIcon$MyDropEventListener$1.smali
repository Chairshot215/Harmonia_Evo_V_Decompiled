.class Lcom/htc/launcher/FolderIcon$MyDropEventListener$1;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/FolderIcon$MyDropEventListener;->handleEvent(Lcom/htc/fusion/fx/FxDraggable;Lcom/htc/android/rosie/home/fxcontrol/DropZone;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/launcher/FolderIcon$MyDropEventListener;


# direct methods
.method constructor <init>(Lcom/htc/launcher/FolderIcon$MyDropEventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/htc/launcher/FolderIcon$MyDropEventListener$1;->this$1:Lcom/htc/launcher/FolderIcon$MyDropEventListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/htc/launcher/FolderIcon$MyDropEventListener$1;->this$1:Lcom/htc/launcher/FolderIcon$MyDropEventListener;

    iget-object v0, v0, Lcom/htc/launcher/FolderIcon$MyDropEventListener;->this$0:Lcom/htc/launcher/FolderIcon;

    #calls: Lcom/htc/launcher/FolderIcon;->doDropAction()V
    invoke-static {v0}, Lcom/htc/launcher/FolderIcon;->access$400(Lcom/htc/launcher/FolderIcon;)V

    .line 312
    return-void
.end method
