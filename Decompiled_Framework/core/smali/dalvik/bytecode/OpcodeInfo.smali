.class public final Ldalvik/bytecode/OpcodeInfo;
.super Ljava/lang/Object;
.source "OpcodeInfo.java"


# static fields
.field public static final MAXIMUM_PACKED_VALUE:I

.field public static final MAXIMUM_VALUE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xffff

    sput v0, Ldalvik/bytecode/OpcodeInfo;->MAXIMUM_VALUE:I

    const/16 v0, 0x1ff

    sput v0, Ldalvik/bytecode/OpcodeInfo;->MAXIMUM_PACKED_VALUE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native isInvoke(I)Z
.end method
