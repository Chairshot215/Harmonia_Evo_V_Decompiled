.class Lcom/htc/messaging/ui/HtcSMSErrorScreen$1;
.super Ljava/lang/Object;
.source "HtcSMSErrorScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/messaging/ui/HtcSMSErrorScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/messaging/ui/HtcSMSErrorScreen;


# direct methods
.method constructor <init>(Lcom/htc/messaging/ui/HtcSMSErrorScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen$1;->this$0:Lcom/htc/messaging/ui/HtcSMSErrorScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen$1;->this$0:Lcom/htc/messaging/ui/HtcSMSErrorScreen;

    iget-object v1, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen$1;->this$0:Lcom/htc/messaging/ui/HtcSMSErrorScreen;

    #getter for: Lcom/htc/messaging/ui/HtcSMSErrorScreen;->mSMSErrorCause:I
    invoke-static {v1}, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->access$000(Lcom/htc/messaging/ui/HtcSMSErrorScreen;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen$1;->this$0:Lcom/htc/messaging/ui/HtcSMSErrorScreen;

    #getter for: Lcom/htc/messaging/ui/HtcSMSErrorScreen;->mSMSErrorClass:I
    invoke-static {v2}, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->access$100(Lcom/htc/messaging/ui/HtcSMSErrorScreen;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->showErrorCauseDialg(II)V

    .line 74
    return-void
.end method
