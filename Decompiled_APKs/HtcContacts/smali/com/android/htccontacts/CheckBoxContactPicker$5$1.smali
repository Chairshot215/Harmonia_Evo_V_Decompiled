.class Lcom/android/htccontacts/CheckBoxContactPicker$5$1;
.super Ljava/lang/Thread;
.source "CheckBoxContactPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/CheckBoxContactPicker$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/CheckBoxContactPicker$5;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/CheckBoxContactPicker$5;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$5$1;->this$1:Lcom/android/htccontacts/CheckBoxContactPicker$5;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$5$1;->this$1:Lcom/android/htccontacts/CheckBoxContactPicker$5;

    iget-object v0, v0, Lcom/android/htccontacts/CheckBoxContactPicker$5;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    #calls: Lcom/android/htccontacts/CheckBoxContactPicker;->doOK()V
    invoke-static {v0}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$200(Lcom/android/htccontacts/CheckBoxContactPicker;)V

    .line 564
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$5$1;->this$1:Lcom/android/htccontacts/CheckBoxContactPicker$5;

    iget-object v0, v0, Lcom/android/htccontacts/CheckBoxContactPicker$5;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/CheckBoxContactPicker;->finish()V

    .line 565
    return-void
.end method
