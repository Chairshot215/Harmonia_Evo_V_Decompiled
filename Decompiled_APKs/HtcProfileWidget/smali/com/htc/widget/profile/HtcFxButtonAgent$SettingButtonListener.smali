.class Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "HtcFxButtonAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/profile/HtcFxButtonAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingButtonListener"
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
.field final synthetic this$0:Lcom/htc/widget/profile/HtcFxButtonAgent;


# direct methods
.method private constructor <init>(Lcom/htc/widget/profile/HtcFxButtonAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;->this$0:Lcom/htc/widget/profile/HtcFxButtonAgent;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/profile/HtcFxButtonAgent;Lcom/htc/widget/profile/HtcFxButtonAgent$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;-><init>(Lcom/htc/widget/profile/HtcFxButtonAgent;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Integer;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;->this$0:Lcom/htc/widget/profile/HtcFxButtonAgent;

    #getter for: Lcom/htc/widget/profile/HtcFxButtonAgent;->mSettingButton:Lcom/htc/fusion/fx/controls/FxSettingButton;
    invoke-static {v0}, Lcom/htc/widget/profile/HtcFxButtonAgent;->access$500(Lcom/htc/widget/profile/HtcFxButtonAgent;)Lcom/htc/fusion/fx/controls/FxSettingButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;->this$0:Lcom/htc/widget/profile/HtcFxButtonAgent;

    #getter for: Lcom/htc/widget/profile/HtcFxButtonAgent;->mListener:Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;
    invoke-static {v0}, Lcom/htc/widget/profile/HtcFxButtonAgent;->access$300(Lcom/htc/widget/profile/HtcFxButtonAgent;)Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;->this$0:Lcom/htc/widget/profile/HtcFxButtonAgent;

    #getter for: Lcom/htc/widget/profile/HtcFxButtonAgent;->mListener:Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;
    invoke-static {v0}, Lcom/htc/widget/profile/HtcFxButtonAgent;->access$300(Lcom/htc/widget/profile/HtcFxButtonAgent;)Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;->this$0:Lcom/htc/widget/profile/HtcFxButtonAgent;

    #getter for: Lcom/htc/widget/profile/HtcFxButtonAgent;->mSettingButton:Lcom/htc/fusion/fx/controls/FxSettingButton;
    invoke-static {v1}, Lcom/htc/widget/profile/HtcFxButtonAgent;->access$500(Lcom/htc/widget/profile/HtcFxButtonAgent;)Lcom/htc/fusion/fx/controls/FxSettingButton;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;->onClick(Lcom/htc/fusion/fx/FxControl;)V

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-static {}, Lcom/htc/widget/profile/HtcFxButtonAgent;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Both parameters should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/htc/widget/profile/HtcFxButtonAgent;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t mSettingButton: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;->this$0:Lcom/htc/widget/profile/HtcFxButtonAgent;

    #getter for: Lcom/htc/widget/profile/HtcFxButtonAgent;->mButton:Lcom/htc/fusion/fx/controls/FxButton;
    invoke-static {v2}, Lcom/htc/widget/profile/HtcFxButtonAgent;->access$200(Lcom/htc/widget/profile/HtcFxButtonAgent;)Lcom/htc/fusion/fx/controls/FxButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lcom/htc/widget/profile/HtcFxButtonAgent;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t mListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;->this$0:Lcom/htc/widget/profile/HtcFxButtonAgent;

    #getter for: Lcom/htc/widget/profile/HtcFxButtonAgent;->mListener:Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;
    invoke-static {v2}, Lcom/htc/widget/profile/HtcFxButtonAgent;->access$300(Lcom/htc/widget/profile/HtcFxButtonAgent;)Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;->onMessageReceived(Ljava/lang/Integer;)V

    return-void
.end method
