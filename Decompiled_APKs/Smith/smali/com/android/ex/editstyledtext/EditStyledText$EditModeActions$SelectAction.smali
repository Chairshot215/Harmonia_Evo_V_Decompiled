.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectAction"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3050
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected doNotSelected()Z
    .locals 2

    .prologue
    .line 3053
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    #calls: Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isTextSelected()Z
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2700(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3054
    const-string v0, "EditModeActions"

    const-string v1, "Selection is off, but selected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    #calls: Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setSelectStartPos()V
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2800(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    .line 3057
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$1800(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v0

    const/4 v1, 0x3

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->sendHintMessage(I)V
    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$900(Lcom/android/ex/editstyledtext/EditStyledText;I)V

    .line 3058
    const/4 v0, 0x1

    return v0
.end method

.method protected doSelectionIsFixed()Z
    .locals 1

    .prologue
    .line 3076
    const/4 v0, 0x0

    return v0
.end method

.method protected doStartPosIsSelected()Z
    .locals 2

    .prologue
    .line 3063
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    #calls: Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isTextSelected()Z
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2700(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3064
    const-string v0, "EditModeActions"

    const-string v1, "Selection now start, but selected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    #calls: Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setSelectEndPos()V
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2900(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    .line 3067
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$1800(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v0

    const/4 v1, 0x4

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->sendHintMessage(I)V
    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$900(Lcom/android/ex/editstyledtext/EditStyledText;I)V

    .line 3068
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 3069
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext(I)Z

    .line 3071
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
