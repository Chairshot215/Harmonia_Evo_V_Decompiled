.class Lcom/htc/lmw/steps/MailAndMessages$1;
.super Ljava/lang/Object;
.source "MailAndMessages.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/MailAndMessages;->setupListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/steps/MailAndMessages;


# direct methods
.method constructor <init>(Lcom/htc/lmw/steps/MailAndMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/lmw/steps/MailAndMessages$1;->this$0:Lcom/htc/lmw/steps/MailAndMessages;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lmw/steps/MailAndMessages$1;->this$0:Lcom/htc/lmw/steps/MailAndMessages;

    #calls: Lcom/htc/lmw/steps/MailAndMessages;->showMailStorageDurationDialog()V
    invoke-static {v0}, Lcom/htc/lmw/steps/MailAndMessages;->access$000(Lcom/htc/lmw/steps/MailAndMessages;)V

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/htc/lmw/steps/MailAndMessages$1;->this$0:Lcom/htc/lmw/steps/MailAndMessages;

    #calls: Lcom/htc/lmw/steps/MailAndMessages;->deleteOldMessageClick(Landroid/view/View;)V
    invoke-static {v0, p2}, Lcom/htc/lmw/steps/MailAndMessages;->access$100(Lcom/htc/lmw/steps/MailAndMessages;Landroid/view/View;)V

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/htc/lmw/steps/MailAndMessages$1;->this$0:Lcom/htc/lmw/steps/MailAndMessages;

    #calls: Lcom/htc/lmw/steps/MailAndMessages;->smsLimitDialog()V
    invoke-static {v0}, Lcom/htc/lmw/steps/MailAndMessages;->access$200(Lcom/htc/lmw/steps/MailAndMessages;)V

    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v0, p0, Lcom/htc/lmw/steps/MailAndMessages$1;->this$0:Lcom/htc/lmw/steps/MailAndMessages;

    #calls: Lcom/htc/lmw/steps/MailAndMessages;->mmsLimitDialog()V
    invoke-static {v0}, Lcom/htc/lmw/steps/MailAndMessages;->access$300(Lcom/htc/lmw/steps/MailAndMessages;)V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
