.class Lcom/htc/lmw/steps/MailAndMessages$6;
.super Ljava/lang/Object;
.source "MailAndMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/MailAndMessages;->showMailStorageDurationDialog()V
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
    .line 365
    iput-object p1, p0, Lcom/htc/lmw/steps/MailAndMessages$6;->this$0:Lcom/htc/lmw/steps/MailAndMessages;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 368
    iget-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages$6;->this$0:Lcom/htc/lmw/steps/MailAndMessages;

    const/16 v2, 0x63

    invoke-static {}, Lcom/htc/lmw/steps/MailAndMessages;->access$500()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    #calls: Lcom/htc/lmw/steps/MailAndMessages;->setItemHint(ILjava/lang/CharSequence;)V
    invoke-static {v1, v2, v0}, Lcom/htc/lmw/steps/MailAndMessages;->access$600(Lcom/htc/lmw/steps/MailAndMessages;ILjava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/htc/lmw/steps/MailAndMessages$6;->this$0:Lcom/htc/lmw/steps/MailAndMessages;

    #setter for: Lcom/htc/lmw/steps/MailAndMessages;->mMailSettingId:I
    invoke-static {v0, p2}, Lcom/htc/lmw/steps/MailAndMessages;->access$702(Lcom/htc/lmw/steps/MailAndMessages;I)I

    .line 370
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 371
    return-void
.end method
