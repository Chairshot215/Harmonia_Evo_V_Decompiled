.class Lcom/htc/photowidget3d/frame/PhotoPickerOption$2;
.super Ljava/lang/Object;
.source "PhotoPickerOption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/photowidget3d/frame/PhotoPickerOption;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/frame/PhotoPickerOption;


# direct methods
.method constructor <init>(Lcom/htc/photowidget3d/frame/PhotoPickerOption;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoPickerOption$2;->this$0:Lcom/htc/photowidget3d/frame/PhotoPickerOption;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoPickerOption$2;->this$0:Lcom/htc/photowidget3d/frame/PhotoPickerOption;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->finish()V

    .line 153
    return-void
.end method
