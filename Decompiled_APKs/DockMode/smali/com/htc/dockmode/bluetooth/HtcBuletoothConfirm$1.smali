.class Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$1;
.super Ljava/lang/Object;
.source "HtcBuletoothConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    .local p0, this:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$1;,"Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm.1;"
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$1;->this$0:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 60
    .local p0, this:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$1;,"Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm.1;"
    sget-object v0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$4;->$SwitchMap$com$htc$dockmode$bluetooth$HtcBuletoothConfirm$BuletoothType:[I

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$1;->this$0:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->mBluetothType:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;
    invoke-static {v1}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->access$000(Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;)Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$1;->this$0:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;

    invoke-virtual {v0}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->finish()V

    .line 69
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$1;->this$0:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;

    #calls: Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->sendConnect()V
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->access$100(Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$1;->this$0:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;

    #calls: Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->sendDisconnect()V
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->access$200(Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
