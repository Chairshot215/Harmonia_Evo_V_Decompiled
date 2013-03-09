.class Lcom/android/htccontacts/CommonContactAttributePicker$1$1;
.super Ljava/lang/Object;
.source "CommonContactAttributePicker.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/CommonContactAttributePicker$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/CommonContactAttributePicker$1;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/CommonContactAttributePicker$1;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$1$1;->this$1:Lcom/android/htccontacts/CommonContactAttributePicker$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$1$1;->this$1:Lcom/android/htccontacts/CommonContactAttributePicker$1;

    const/16 v1, 0x500f

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker$1;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$1$1;->this$1:Lcom/android/htccontacts/CommonContactAttributePicker$1;

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$1;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$300(Lcom/android/htccontacts/CommonContactAttributePicker;)Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 347
    return v2
.end method
