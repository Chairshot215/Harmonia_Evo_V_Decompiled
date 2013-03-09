.class Ljava/text/DecimalFormat$1;
.super Ljava/lang/Object;
.source "DecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/DecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/text/DecimalFormat;


# direct methods
.method constructor <init>(Ljava/text/DecimalFormat;)V
    .locals 0

    iput-object p1, p0, Ljava/text/DecimalFormat$1;->this$0:Ljava/text/DecimalFormat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/text/DecimalFormat$1;->this$0:Ljava/text/DecimalFormat;

    #getter for: Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;
    invoke-static {v0}, Ljava/text/DecimalFormat;->access$000(Ljava/text/DecimalFormat;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
