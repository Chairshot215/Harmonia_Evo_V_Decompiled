.class Lcom/htc/photowidget3d/frame/PhotoPickerOption$3;
.super Ljava/lang/Object;
.source "PhotoPickerOption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 156
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoPickerOption$3;->this$0:Lcom/htc/photowidget3d/frame/PhotoPickerOption;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 159
    sparse-switch p2, :sswitch_data_0

    .line 170
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 164
    :sswitch_0
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoPickerOption$3;->this$0:Lcom/htc/photowidget3d/frame/PhotoPickerOption;

    const/16 v1, 0x480

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->removeDialog(I)V

    .line 165
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoPickerOption$3;->this$0:Lcom/htc/photowidget3d/frame/PhotoPickerOption;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->finish()V

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
