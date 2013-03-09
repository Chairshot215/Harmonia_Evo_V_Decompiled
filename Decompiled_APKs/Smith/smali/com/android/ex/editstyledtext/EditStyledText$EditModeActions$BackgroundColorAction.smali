.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$BackgroundColorAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundColorAction"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3146
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$BackgroundColorAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected doNotSelected()Z
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$BackgroundColorAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mDialog:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$3900(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    move-result-object v0

    #calls: Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->onShowBackgroundColorAlertDialog()V
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->access$4000(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    .line 3150
    const/4 v0, 0x1

    return v0
.end method
