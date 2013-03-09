.class Lcom/android/htccontacts/CheckBoxContactPicker$5;
.super Ljava/lang/Object;
.source "CheckBoxContactPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/CheckBoxContactPicker;->confirmDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/CheckBoxContactPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/CheckBoxContactPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$5;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "v"
    .parameter "x"

    .prologue
    .line 558
    iget-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$5;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    #getter for: Lcom/android/htccontacts/CheckBoxContactPicker;->isDoOK:Z
    invoke-static {v1}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$100(Lcom/android/htccontacts/CheckBoxContactPicker;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$5;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    const/4 v2, 0x1

    #setter for: Lcom/android/htccontacts/CheckBoxContactPicker;->isDoOK:Z
    invoke-static {v1, v2}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$102(Lcom/android/htccontacts/CheckBoxContactPicker;Z)Z

    .line 561
    new-instance v0, Lcom/android/htccontacts/CheckBoxContactPicker$5$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/CheckBoxContactPicker$5$1;-><init>(Lcom/android/htccontacts/CheckBoxContactPicker$5;)V

    .line 568
    .local v0, mDoOKThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 572
    .end local v0           #mDoOKThread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method
