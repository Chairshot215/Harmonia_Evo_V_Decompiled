.class Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;
.super Ljava/lang/Object;
.source "PickerDeleteScene.java"

# interfaces
.implements Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerDeleteScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/PickerDeleteScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/picker/PickerDeleteScene;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/picker/PickerDeleteScene;Lcom/htc/album/picker/PickerDeleteScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;-><init>(Lcom/htc/album/picker/PickerDeleteScene;)V

    return-void
.end method


# virtual methods
.method public onDeleteCancel()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z
    invoke-static {v0, v1}, Lcom/htc/album/picker/PickerDeleteScene;->access$002(Lcom/htc/album/picker/PickerDeleteScene;Z)Z

    .line 42
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    invoke-virtual {v0}, Lcom/htc/album/picker/PickerDeleteScene;->onCancel()V

    .line 43
    return-void
.end method

.method public onDeleteEnd()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z
    invoke-static {v0, v1}, Lcom/htc/album/picker/PickerDeleteScene;->access$002(Lcom/htc/album/picker/PickerDeleteScene;Z)Z

    .line 48
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    invoke-virtual {v0}, Lcom/htc/album/picker/PickerDeleteScene;->onCancel()V

    .line 49
    return-void
.end method

.method public onDeleteStart()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    const/4 v1, 0x1

    #setter for: Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z
    invoke-static {v0, v1}, Lcom/htc/album/picker/PickerDeleteScene;->access$002(Lcom/htc/album/picker/PickerDeleteScene;Z)Z

    .line 55
    return-void
.end method

.method public onDismissDeleteAll()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z
    invoke-static {v0, v1}, Lcom/htc/album/picker/PickerDeleteScene;->access$002(Lcom/htc/album/picker/PickerDeleteScene;Z)Z

    .line 64
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;->this$0:Lcom/htc/album/picker/PickerDeleteScene;

    invoke-virtual {v0}, Lcom/htc/album/picker/PickerDeleteScene;->onCancel()V

    .line 65
    return-void
.end method
