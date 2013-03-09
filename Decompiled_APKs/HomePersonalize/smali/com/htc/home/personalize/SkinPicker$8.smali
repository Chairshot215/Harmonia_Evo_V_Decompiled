.class Lcom/htc/home/personalize/SkinPicker$8;
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
    .line 933
    iput-object p1, p0, Lcom/htc/home/personalize/SkinPicker$8;->this$0:Lcom/htc/home/personalize/SkinPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$8;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->SwitchDeleteMode()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$900(Lcom/htc/home/personalize/SkinPicker;)V

    .line 937
    return-void
.end method
