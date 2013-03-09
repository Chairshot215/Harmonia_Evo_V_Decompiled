.class Lcom/android/htccontacts/CheckBoxContactPicker$3;
.super Ljava/lang/Object;
.source "CheckBoxContactPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/CheckBoxContactPicker;->setListeners()V
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
    .line 499
    iput-object p1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$3;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$3;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/CheckBoxContactPicker;->doClickOk()V

    .line 502
    return-void
.end method
