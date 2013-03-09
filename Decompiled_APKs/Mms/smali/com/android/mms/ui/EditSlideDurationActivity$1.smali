.class Lcom/android/mms/ui/EditSlideDurationActivity$1;
.super Ljava/lang/Object;
.source "EditSlideDurationActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EditSlideDurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EditSlideDurationActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EditSlideDurationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/mms/ui/EditSlideDurationActivity$1;->this$0:Lcom/android/mms/ui/EditSlideDurationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    :goto_0
    return v0

    .line 173
    :cond_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 180
    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/EditSlideDurationActivity$1;->this$0:Lcom/android/mms/ui/EditSlideDurationActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/EditSlideDurationActivity;->editDone()V

    goto :goto_0

    .line 176
    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/EditSlideDurationActivity$1;->this$0:Lcom/android/mms/ui/EditSlideDurationActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/EditSlideDurationActivity;->editDone()V

    goto :goto_0

    .line 183
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x54 -> :sswitch_2
    .end sparse-switch
.end method
