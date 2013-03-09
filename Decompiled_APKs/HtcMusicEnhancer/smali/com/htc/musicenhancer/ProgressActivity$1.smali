.class Lcom/htc/musicenhancer/ProgressActivity$1;
.super Ljava/lang/Object;
.source "ProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/ProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/ProgressActivity;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/ProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/musicenhancer/ProgressActivity$1;->this$0:Lcom/htc/musicenhancer/ProgressActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 170
    packed-switch p2, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v0, p0, Lcom/htc/musicenhancer/ProgressActivity$1;->this$0:Lcom/htc/musicenhancer/ProgressActivity;

    #calls: Lcom/htc/musicenhancer/ProgressActivity;->disableAutoUpdateSetting()V
    invoke-static {v0}, Lcom/htc/musicenhancer/ProgressActivity;->access$000(Lcom/htc/musicenhancer/ProgressActivity;)V

    .line 173
    iget-object v0, p0, Lcom/htc/musicenhancer/ProgressActivity$1;->this$0:Lcom/htc/musicenhancer/ProgressActivity;

    #calls: Lcom/htc/musicenhancer/ProgressActivity;->cancelDownload()V
    invoke-static {v0}, Lcom/htc/musicenhancer/ProgressActivity;->access$100(Lcom/htc/musicenhancer/ProgressActivity;)V

    .line 174
    iget-object v0, p0, Lcom/htc/musicenhancer/ProgressActivity$1;->this$0:Lcom/htc/musicenhancer/ProgressActivity;

    invoke-virtual {v0}, Lcom/htc/musicenhancer/ProgressActivity;->finish()V

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
