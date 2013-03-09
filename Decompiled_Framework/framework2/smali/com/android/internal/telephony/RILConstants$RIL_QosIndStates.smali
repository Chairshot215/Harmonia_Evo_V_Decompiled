.class public Lcom/android/internal/telephony/RILConstants$RIL_QosIndStates;
.super Ljava/lang/Object;
.source "RILConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RILConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RIL_QosIndStates"
.end annotation


# static fields
.field public static final RIL_QOS_ERROR_UNKNOWN:I = 0x4

.field public static final RIL_QOS_NEGOTIATED:I = 0x1

.field public static final RIL_QOS_NETWORK_RELEASE:I = 0x3

.field public static final RIL_QOS_SUCCESS:I = 0x0

.field public static final RIL_QOS_USER_RELEASE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
