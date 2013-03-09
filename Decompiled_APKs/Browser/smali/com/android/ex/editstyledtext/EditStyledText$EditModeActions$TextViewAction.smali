.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewAction"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3011
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected doEndPosIsSelected()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3014
    invoke-super {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->doEndPosIsSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3022
    :goto_0
    return v3

    .line 3017
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;->getParam(I)Ljava/lang/Object;

    move-result-object v0

    .line 3018
    .local v0, param:Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 3019
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$1800(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    .end local v0           #param:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->onTextContextMenuItem(I)Z

    .line 3021
    :cond_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    #calls: Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2400(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    goto :goto_0
.end method
