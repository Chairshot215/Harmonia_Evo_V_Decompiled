.class Lcom/htc/lmw/steps/MailAndMessages$3;
.super Ljava/lang/Object;
.source "MailAndMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/MailAndMessages;->smsLimitDialog()V
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
    .line 227
    iput-object p1, p0, Lcom/htc/lmw/steps/MailAndMessages$3;->this$0:Lcom/htc/lmw/steps/MailAndMessages;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/lmw/steps/MailAndMessages$3;->this$0:Lcom/htc/lmw/steps/MailAndMessages;

    const/4 v1, 0x0

    #setter for: Lcom/htc/lmw/steps/MailAndMessages;->activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;
    invoke-static {v0, v1}, Lcom/htc/lmw/steps/MailAndMessages;->access$402(Lcom/htc/lmw/steps/MailAndMessages;Lcom/htc/lmw/ui/NumberPickerDialog;)Lcom/htc/lmw/ui/NumberPickerDialog;

    .line 231
    return-void
.end method
