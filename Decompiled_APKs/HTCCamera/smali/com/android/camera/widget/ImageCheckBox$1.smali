.class Lcom/android/camera/widget/ImageCheckBox$1;
.super Ljava/lang/Object;
.source "ImageCheckBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/ImageCheckBox;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/ImageCheckBox;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/ImageCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/ImageCheckBox$1;->this$0:Lcom/android/camera/widget/ImageCheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox$1;->this$0:Lcom/android/camera/widget/ImageCheckBox;

    #getter for: Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/camera/widget/ImageCheckBox;->access$000(Lcom/android/camera/widget/ImageCheckBox;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox$1;->this$0:Lcom/android/camera/widget/ImageCheckBox;

    #getter for: Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/camera/widget/ImageCheckBox;->access$000(Lcom/android/camera/widget/ImageCheckBox;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox$1;->this$0:Lcom/android/camera/widget/ImageCheckBox;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/widget/ImageCheckBox;->m_Checked:Z
    invoke-static {v0, v1}, Lcom/android/camera/widget/ImageCheckBox;->access$102(Lcom/android/camera/widget/ImageCheckBox;Z)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox$1;->this$0:Lcom/android/camera/widget/ImageCheckBox;

    iget-object v1, p0, Lcom/android/camera/widget/ImageCheckBox$1;->this$0:Lcom/android/camera/widget/ImageCheckBox;

    #getter for: Lcom/android/camera/widget/ImageCheckBox;->m_Checked:Z
    invoke-static {v1}, Lcom/android/camera/widget/ImageCheckBox;->access$100(Lcom/android/camera/widget/ImageCheckBox;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ImageCheckBox;->checkClick(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox$1;->this$0:Lcom/android/camera/widget/ImageCheckBox;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/widget/ImageCheckBox;->m_Checked:Z
    invoke-static {v0, v1}, Lcom/android/camera/widget/ImageCheckBox;->access$102(Lcom/android/camera/widget/ImageCheckBox;Z)Z

    goto :goto_0
.end method
