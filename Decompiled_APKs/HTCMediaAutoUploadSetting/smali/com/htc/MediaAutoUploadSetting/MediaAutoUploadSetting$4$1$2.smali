.class Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$2;
.super Ljava/lang/Object;
.source "MediaAutoUploadSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;

.field final synthetic val$selected_frequency:I


# direct methods
.method constructor <init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$2;->this$2:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;

    iput p2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$2;->val$selected_frequency:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichbtn"

    .prologue
    .line 526
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 527
    iget v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$2;->val$selected_frequency:I

    packed-switch v0, :pswitch_data_0

    .line 543
    :goto_0
    return-void

    .line 531
    :pswitch_0
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$2;->this$2:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$2;->val$selected_frequency:I

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I
    invoke-static {v0, v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1902(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;I)I

    .line 532
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$2;->this$2:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$2;->this$2:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;

    iget-object v1, v1, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v1, v1, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencies:[Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2000(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$2;->this$2:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;

    iget-object v2, v2, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v2, v2, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I
    invoke-static {v2}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1900(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$2;->this$2:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequencyTextView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 537
    :pswitch_1
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$2;->this$2:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #calls: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->launchTimePicker()V
    invoke-static {v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2200(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V

    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
