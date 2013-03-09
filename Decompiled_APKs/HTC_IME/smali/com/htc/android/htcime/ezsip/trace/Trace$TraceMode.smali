.class public Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/trace/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TraceMode"
.end annotation


# static fields
.field public static final DISABLE:I = 0x0

.field public static final DISABLE_MT:I = 0x1

.field public static final FREEZE_CUR_TRACE:I = 0x9

.field public static final PREDICT_DONE:I = 0x8

.field public static final RECORDING:I = 0x6

.field public static final RECORD_BEGIN:I = 0x3

.field public static final RECORD_BEGINS:I = 0x4

.field public static final RECORD_BEGIN_PRV_FZ:I = 0x5

.field public static final RECORD_DONE:I = 0x7

.field public static final STANDBY:I = 0x2


# instance fields
.field public state:I

.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/trace/Trace;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/ezsip/trace/Trace;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->this$0:Lcom/htc/android/htcime/ezsip/trace/Trace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    return-void
.end method
