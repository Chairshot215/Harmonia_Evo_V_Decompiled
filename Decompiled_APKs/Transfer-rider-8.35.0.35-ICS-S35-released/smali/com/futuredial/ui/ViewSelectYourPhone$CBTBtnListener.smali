.class Lcom/futuredial/ui/ViewSelectYourPhone$CBTBtnListener;
.super Lcom/futuredial/ui/CBtnListener;
.source "ViewSelectYourPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ui/ViewSelectYourPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CBTBtnListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewSelectYourPhone;


# direct methods
.method public constructor <init>(Lcom/futuredial/ui/ViewSelectYourPhone;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "targetWindowClassName"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$CBTBtnListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    .line 46
    invoke-direct {p0, p2}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method additional_op()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$CBTBtnListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v1, "--------------BTBTN--------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$CBTBtnListener;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewSelectYourPhone;->stop_scan()V

    .line 52
    return-void
.end method
