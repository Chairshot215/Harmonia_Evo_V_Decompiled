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
.field private myctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sprint/internal/diagnostics/Diagnostics;->myctx:Landroid/content/Context;

    .line 29
    const-string v0, "Diagnostics"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .locals 4

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .local v0, value:J
    const-string v2, "Diagnostics"

    const-string v3, "getTimestamp()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-wide v0
.end method

.method public registerForEvent(IILcom/sprint/internal/diagnostics/DiagnosticsListener;Ljava/lang/Object;)I
    .locals 3
    .parameter "eventType"
    .parameter "eventParam"
    .parameter "listener"
    .parameter "callbackData"

    .prologue
    .line 64
    const-string v0, "Diagnostics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public registerQueriableMetric(ILcom/sprint/internal/diagnostics/DiagnosticsListener;Ljava/lang/Object;)I
    .locals 3
    .parameter "metricId"
    .parameter "listener"
    .parameter "callbackData"

    .prologue
    .line 79
    const-string v0, "Diagnostics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerQueriableMetric("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllQueriableMetrics(Lcom/sprint/internal/diagnostics/DiagnosticsListener;)I
    .locals 2
    .parameter "listener"

    .prologue
    .line 84
    const-string v0, "Diagnostics"

    const-string v1, "removeAllQueriableMetrics()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSubmitMetric(I)Z
    .locals 3
    .parameter "metricID"

    .prologue
    .line 39
    const-string v0, "Diagnostics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldSubmitMetric("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public submitMetric(ILjava/lang/Object;)I
    .locals 3
    .parameter "metricID"
    .parameter "payload"

    .prologue
    .line 44
    const-string v0, "Diagnostics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submitMetric("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public submitMetricT(I[ILjava/lang/Object;)I
    .locals 3
    .parameter "metricID"
    .parameter "timestamp"
    .parameter "payload"

    .prologue
    .line 49
    const-string v0, "Diagnostics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submitMetricT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public submitMetricV(ILjava/util/Vector;)I
    .locals 3
    .parameter "metricID"
    .parameter "payload"

    .prologue
    .line 54
    const-string v0, "Diagnostics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submitMetric("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public submitMetricVT(I[ILjava/util/Vector;)I
    .locals 3
    .parameter "metricID"
    .parameter "timestamp"
    .parameter "payload"

    .prologue
    .line 59
    const-string v0, "Diagnostics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submitMetricT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterAllEvents(Lcom/sprint/internal/diagnostics/DiagnosticsListener;)I
    .locals 2
    .parameter "listener"

    .prologue
    .line 74
    const-string v0, "Diagnostics"

    const-string v1, "unregisterAllEvents()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterEvent(IILcom/sprint/internal/diagnostics/DiagnosticsListener;)I
    .locals 3
    .parameter "eventType"
    .parameter "eventParam"
    .parameter "listener"

    .prologue
    .line 69
    const-string v0, "Diagnostics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x0

    return v0
.end method
