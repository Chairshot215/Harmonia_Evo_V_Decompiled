.class public Lorg/apache/http/impl/client/naf/util/Ll;
.super Ljava/lang/Object;
.source "Ll.java"


# static fields
.field public static final AKA:I = 0x8

.field public static final ALL:I = -0x1

.field public static final BASIC:I = 0x1

.field public static CURRENT:I = 0x0

.field public static final FINISHED:I = 0x4

.field private static final HTC_DEBUG:Z = false

.field public static final HTTP_TRAFFIC:I = 0x20

.field public static final KEYS:I = 0x40

.field public static final LOGGING_SILENCE:I = 0x0

.field public static final RUNTIME_DUMP:I = 0x10

.field public static final STARTED:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static is(I)Z
    .locals 2

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/2addr v1, p0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static no(I)Z
    .locals 2

    invoke-static {p0}, Lorg/apache/http/impl/client/naf/util/Ll;->is(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
