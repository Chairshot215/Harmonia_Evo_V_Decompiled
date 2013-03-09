.class Landroid/os/memory/HtcMemoryMeasurer$2;
.super Ljava/lang/Object;
.source "HtcMemoryMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/memory/HtcMemoryMeasurer;->measure()V
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

    iput-object p1, p0, Landroid/os/memory/HtcMemoryMeasurer$2;->this$0:Landroid/os/memory/HtcMemoryMeasurer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/os/memory/HtcMemoryMeasurer$2;->this$0:Landroid/os/memory/HtcMemoryMeasurer;

    #calls: Landroid/os/memory/HtcMemoryMeasurer;->measureInBackground()V
    invoke-static {v0}, Landroid/os/memory/HtcMemoryMeasurer;->access$100(Landroid/os/memory/HtcMemoryMeasurer;)V

    return-void
.end method
