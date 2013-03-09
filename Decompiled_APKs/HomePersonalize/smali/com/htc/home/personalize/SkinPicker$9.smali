.class Lcom/htc/home/personalize/SkinPicker$9;
.super Ljava/lang/Object;
.source "SkinPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/SkinPicker;->showDeleteConfirmMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/SkinPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    iput-object p1, p0, Lcom/htc/home/personalize/SkinPicker$9;->this$0:Lcom/htc/home/personalize/SkinPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 943
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$9;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->showDeletingCursor()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$1700(Lcom/htc/home/personalize/SkinPicker;)V

    .line 944
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$9;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mSkinPickerAdapter:Lcom/htc/home/personalize/widget/SkinPickerAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$000(Lcom/htc/home/personalize/SkinPicker;)Lcom/htc/home/personalize/widget/SkinPickerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->deleteSelectedSkins()V

    .line 945
    return-void
.end method
