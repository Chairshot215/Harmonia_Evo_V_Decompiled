.class Lcom/futuredial/service/DMIBTScanModule$1;
.super Ljava/lang/Thread;
.source "DMIBTScanModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/service/DMIBTScanModule;->dmi_bt_close_bt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/service/DMIBTScanModule;


# direct methods
.method constructor <init>(Lcom/futuredial/service/DMIBTScanModule;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/futuredial/service/DMIBTScanModule$1;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/futuredial/service/DMIBTScanModule$1;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/futuredial/service/DMIBTScanModule;->SendMsg(I)Z

    .line 96
    iget-object v0, p0, Lcom/futuredial/service/DMIBTScanModule$1;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    invoke-virtual {v0}, Lcom/futuredial/service/DMIBTScanModule;->close_bt()Z

    .line 97
    iget-object v0, p0, Lcom/futuredial/service/DMIBTScanModule$1;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/futuredial/service/DMIBTScanModule;->SendMsg(I)Z

    .line 98
    return-void
.end method
