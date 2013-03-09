.class Lcom/htc/usage/widget/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lcom/htc/usage/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/htc/usage/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1947
    iput-object p1, p0, Lcom/htc/usage/widget/NumberPicker$SetSelectionCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$702(Lcom/htc/usage/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1947
    iput p1, p0, Lcom/htc/usage/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$802(Lcom/htc/usage/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1947
    iput p1, p0, Lcom/htc/usage/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$SetSelectionCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/usage/widget/NumberPicker;->access$000(Lcom/htc/usage/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/htc/usage/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Lcom/htc/usage/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 1954
    return-void
.end method
