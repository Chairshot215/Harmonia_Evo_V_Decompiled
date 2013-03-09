.class Lcom/htc/android/htcime/ui/WordCandsList$1;
.super Landroid/os/Handler;
.source "WordCandsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/WordCandsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/WordCandsList;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/WordCandsList;)V
    .locals 0
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsList$1;->this$0:Lcom/htc/android/htcime/ui/WordCandsList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 731
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 737
    :goto_0
    return-void

    .line 733
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsList$1;->this$0:Lcom/htc/android/htcime/ui/WordCandsList;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList$1;->this$0:Lcom/htc/android/htcime/ui/WordCandsList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/WordCandsList;->access$200(Lcom/htc/android/htcime/ui/WordCandsList;)Lcom/htc/android/htcime/HTCIMMView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList$1;->this$0:Lcom/htc/android/htcime/ui/WordCandsList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandsList;->currentY:I
    invoke-static {v2}, Lcom/htc/android/htcime/ui/WordCandsList;->access$100(Lcom/htc/android/htcime/ui/WordCandsList;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMMView;->updateOffset(I)I

    move-result v1

    #setter for: Lcom/htc/android/htcime/ui/WordCandsList;->offsetY:I
    invoke-static {v0, v1}, Lcom/htc/android/htcime/ui/WordCandsList;->access$002(Lcom/htc/android/htcime/ui/WordCandsList;I)I

    .line 734
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsList$1;->this$0:Lcom/htc/android/htcime/ui/WordCandsList;

    #calls: Lcom/htc/android/htcime/ui/WordCandsList;->setDragStatus()V
    invoke-static {v0}, Lcom/htc/android/htcime/ui/WordCandsList;->access$300(Lcom/htc/android/htcime/ui/WordCandsList;)V

    goto :goto_0

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
