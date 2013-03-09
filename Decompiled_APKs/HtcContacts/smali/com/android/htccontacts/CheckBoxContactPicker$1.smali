.class Lcom/android/htccontacts/CheckBoxContactPicker$1;
.super Ljava/lang/Object;
.source "CheckBoxContactPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/CheckBoxContactPicker;->findViews()V
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
    .line 441
    iput-object p1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$1;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$1;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget-object v0, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$1;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget-object v0, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$1;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget-object v0, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 447
    :catch_0
    move-exception v0

    goto :goto_0
.end method
