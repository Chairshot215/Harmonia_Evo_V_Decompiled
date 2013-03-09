.class Lcom/htc/widget/HtcNumberPicker$1;
.super Ljava/lang/Object;
.source "HtcNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcNumberPicker;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcNumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/widget/HtcNumberPicker$1;->this$0:Lcom/htc/widget/HtcNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker$1;->this$0:Lcom/htc/widget/HtcNumberPicker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/widget/HtcNumberPicker;->mReadyToSet:Z

    .line 132
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker$1;->this$0:Lcom/htc/widget/HtcNumberPicker;

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker$1;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mPos:I
    invoke-static {v1}, Lcom/htc/widget/HtcNumberPicker;->access$000(Lcom/htc/widget/HtcNumberPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 133
    return-void
.end method
