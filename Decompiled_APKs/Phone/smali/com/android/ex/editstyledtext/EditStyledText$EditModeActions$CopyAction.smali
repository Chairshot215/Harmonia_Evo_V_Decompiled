.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CopyAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CopyAction"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3026
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CopyAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected doEndPosIsSelected()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3029
    invoke-super {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->doEndPosIsSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3034
    :goto_0
    return v1

    .line 3032
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CopyAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    #calls: Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->copyToClipBoard()V
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2500(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    .line 3033
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$CopyAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    #calls: Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2400(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    goto :goto_0
.end method
