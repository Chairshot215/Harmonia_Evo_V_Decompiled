.class Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$11;
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
        "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
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
    .line 1271
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$11;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1273
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$11;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$11;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    const-string v1, "Frequent Contacts"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$11;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchFrequentGroup()V
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$3400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    .line 1277
    :goto_0
    return-void

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$11;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchGroupPicker()V
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$3500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1271
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$11;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
