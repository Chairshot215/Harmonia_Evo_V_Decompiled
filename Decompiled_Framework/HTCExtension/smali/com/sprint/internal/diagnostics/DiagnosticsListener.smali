.class public Lcom/sprint/internal/diagnostics/DiagnosticsListener;
.super Ljava/lang/Object;
.source "DiagnosticsListener.java"


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


# direct methods
.method public constructor <init>(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/diagnostics/DiagnosticsListener;->DBG:Z

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
