.class Lcom/htc/fusion/fx/controls/FxSettingButton$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "FxSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/FxSettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field final synthetic val$l:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/FxSettingButton;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxSettingButton$1;->this$0:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/FxSettingButton$1;->val$l:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxSettingButton$1;->val$l:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/controls/FxSettingButton$1;->onMessageReceived(Ljava/lang/Integer;)V

    return-void
.end method
