.class Lcom/htc/android/htcime/tools/SipTouchPositionRecorder$3;
.super Ljava/lang/Object;
.source "SipTouchPositionRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder$3;->this$0:Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder$3;->this$0:Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;

    #calls: Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->sendReport()V
    invoke-static {v0}, Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;->access$000(Lcom/htc/android/htcime/tools/SipTouchPositionRecorder;)V

    .line 93
    return-void
.end method
