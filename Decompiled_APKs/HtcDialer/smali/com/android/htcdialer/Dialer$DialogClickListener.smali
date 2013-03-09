.class Lcom/android/htcdialer/Dialer$DialogClickListener;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/Dialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogClickListener"
.end annotation


# instance fields
.field number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/Dialer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "num"

    .prologue
    .line 5211
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$DialogClickListener;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5213
    iput-object p2, p0, Lcom/android/htcdialer/Dialer$DialogClickListener;->number:Ljava/lang/String;

    .line 5214
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 5218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5238
    :goto_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialogClickListener;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$2800(Lcom/android/htcdialer/Dialer;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5240
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialogClickListener;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$2800(Lcom/android/htcdialer/Dialer;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 5243
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialogClickListener;->this$0:Lcom/android/htcdialer/Dialer;

    const/4 v2, 0x0

    #setter for: Lcom/android/htcdialer/Dialer;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/android/htcdialer/Dialer;->access$2802(Lcom/android/htcdialer/Dialer;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 5244
    return-void

    .line 5220
    :pswitch_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialogClickListener;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/provider/ContactsContract$Intents;->createInsertNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 5222
    .local v0, actionIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialogClickListener;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v1, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5227
    .end local v0           #actionIntent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialogClickListener;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/provider/ContactsContract$Intents;->createUpdateNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 5229
    .restart local v0       #actionIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialogClickListener;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v1, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5218
    nop

    :pswitch_data_0
    .packed-switch 0x1020019
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
