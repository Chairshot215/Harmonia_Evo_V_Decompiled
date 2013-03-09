.class Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$1;
.super Ljava/lang/Object;
.source "HtcBuletoothConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;


# direct methods
.method constructor <init>(Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 51
    sget-object v0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$3;->$SwitchMap$com$htc$HtcNaviPanel$settings$HtcBuletoothConfirm$BuletoothType:[I

    iget-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;

    #getter for: Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->mBluetothType:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;
    invoke-static {v1}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->access$000(Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;)Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;

    invoke-virtual {v0}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->finish()V

    .line 60
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;

    #calls: Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->sendConnect()V
    invoke-static {v0}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->access$100(Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;

    #calls: Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->sendDisconnect()V
    invoke-static {v0}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;->access$200(Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;)V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
