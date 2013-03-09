.class Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$4;
.super Lcom/htc/fusion/fx/MessageListener;
.source "ContactWidgetMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SetScene(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;


# direct methods
.method constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$4;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$4;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->OnItemEvent(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    invoke-static {v0, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$3100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    .line 1196
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1193
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$4;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    return-void
.end method
