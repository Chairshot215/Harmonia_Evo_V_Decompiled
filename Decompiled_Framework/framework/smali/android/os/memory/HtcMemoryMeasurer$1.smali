.class Landroid/os/memory/HtcMemoryMeasurer$1;
.super Ljava/lang/Object;
.source "HtcMemoryMeasurer.java"

# interfaces
.implements Landroid/os/memory/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/memory/HtcMemoryMeasurer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/memory/HtcMemoryMeasurer;


# direct methods
.method constructor <init>(Landroid/os/memory/HtcMemoryMeasurer;)V
    .locals 0

    iput-object p1, p0, Landroid/os/memory/HtcMemoryMeasurer$1;->this$0:Landroid/os/memory/HtcMemoryMeasurer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshUi(I)V
    .locals 1

    iget-object v0, p0, Landroid/os/memory/HtcMemoryMeasurer$1;->this$0:Landroid/os/memory/HtcMemoryMeasurer;

    #calls: Landroid/os/memory/HtcMemoryMeasurer;->onRefreshUi(I)V
    invoke-static {v0, p1}, Landroid/os/memory/HtcMemoryMeasurer;->access$000(Landroid/os/memory/HtcMemoryMeasurer;I)V

    return-void
.end method
