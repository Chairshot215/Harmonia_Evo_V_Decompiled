.class Lcom/htc/messaging/ui/HtcSMSErrorScreen$4;
.super Ljava/lang/Object;
.source "HtcSMSErrorScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/messaging/ui/HtcSMSErrorScreen;->showErrorCauseDialg(II)V
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
    .line 121
    iput-object p1, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen$4;->this$0:Lcom/htc/messaging/ui/HtcSMSErrorScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/messaging/ui/HtcSMSErrorScreen$4;->this$0:Lcom/htc/messaging/ui/HtcSMSErrorScreen;

    invoke-virtual {v0}, Lcom/htc/messaging/ui/HtcSMSErrorScreen;->finish()V

    .line 124
    return-void
.end method
