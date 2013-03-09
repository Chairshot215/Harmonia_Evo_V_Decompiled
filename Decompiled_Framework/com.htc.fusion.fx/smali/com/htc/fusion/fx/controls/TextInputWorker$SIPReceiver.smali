.class final Lcom/htc/fusion/fx/controls/TextInputWorker$SIPReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TextInputWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SIPReceiver"
.end annotation


# instance fields
.field sipAssociateView:Landroid/view/View;

.field sipFxTextInput:Lcom/htc/fusion/fx/controls/TextInputWorker;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/htc/fusion/fx/controls/TextInputWorker;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$SIPReceiver;->sipAssociateView:Landroid/view/View;

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$SIPReceiver;->sipFxTextInput:Lcom/htc/fusion/fx/controls/TextInputWorker;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "HTC_IME_CURRENT_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SIP_VISIBLE"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$SIPReceiver;->sipAssociateView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
