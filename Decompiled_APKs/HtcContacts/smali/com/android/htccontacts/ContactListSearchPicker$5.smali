.class Lcom/android/htccontacts/ContactListSearchPicker$5;
.super Landroid/os/Handler;
.source "ContactListSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactListSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactListSearchPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactListSearchPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/htccontacts/ContactListSearchPicker$5;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 891
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 898
    :goto_0
    return-void

    .line 893
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$5;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactListSearchPicker;->handleSelectionCacheUpdate()V

    .line 894
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$5;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/ContactListSearchPicker;->mIsFreshing:Z

    goto :goto_0

    .line 891
    nop

    :pswitch_data_0
    .packed-switch 0x5002
        :pswitch_0
    .end packed-switch
.end method
