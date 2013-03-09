.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAllAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectAllAction"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3089
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAllAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected doNotSelected()Z
    .locals 1

    .prologue
    .line 3092
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SelectAllAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    #calls: Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->selectAll()V
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$3100(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    .line 3093
    const/4 v0, 0x1

    return v0
.end method
