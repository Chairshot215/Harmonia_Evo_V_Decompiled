.class public Lcom/sprint/internal/diagnostics/Diagnostics;
.super Ljava/lang/Object;
.source "Diagnostics.java"


# static fields
.field public static final EVENT_PARAM_ANY:I = 0x7d0

.field public static final EVENT_TYPE_ANY:I = 0x3e8

.field public static final EVENT_TYPE_PROFILE_CHANGED:I = 0x3ea

.field public static final EVENT_TYPE_QUERY_METRIC:I = 0x3e9

.field public static final STATUS_CANNOT_INITIALIZE:I = 0x2

.field public static final STATUS_ERROR:I = 0x1

.field public static final STATUS_INVALID_PARM:I = 0x4

.field public static final STATUS_NOT_INITIALIZE:I = 0x3

.field public static final STATUS_NOT_PERMITTED:I = 0x7

.field public static final STATUS_NO_REGISTRATIONS:I = 0x6

.field public static final STATUS_OUT_OF_MEMORY:I = 0x5

.field public static final STATUS_SUCCESS:I


# instance fields
.field private final DBG:Z

.field private myctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/diagnostics/Diagnostics;->DBG:Z

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sprint/internal/diagnostics/Diagnostics;->myctx:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public getTimestamp()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public registerForEvent(IILcom/sprint/internal/diagnostics/DiagnosticsListener;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerQueriableMetric(ILcom/sprint/internal/diagnostics/DiagnosticsListener;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeAllQueriableMetrics(Lcom/sprint/internal/diagnostics/DiagnosticsListener;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldSubmitMetric(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public submitMetric(ILjava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public submitMetricT(I[ILjava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public submitMetricV(ILjava/util/Vector;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public submitMetricVT(I[ILjava/util/Vector;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unregisterAllEvents(Lcom/sprint/internal/diagnostics/DiagnosticsListener;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unregisterEvent(IILcom/sprint/internal/diagnostics/DiagnosticsListener;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
