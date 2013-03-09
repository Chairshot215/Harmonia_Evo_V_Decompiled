.class Lorg/javia/arity/FormatCase;
.super Ljava/lang/Object;
.source "UnitTest.java"


# instance fields
.field public res:Ljava/lang/String;

.field public rounding:I

.field public val:D


# direct methods
.method public constructor <init>(IDLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput p1, p0, Lorg/javia/arity/FormatCase;->rounding:I

    .line 254
    iput-wide p2, p0, Lorg/javia/arity/FormatCase;->val:D

    .line 255
    iput-object p4, p0, Lorg/javia/arity/FormatCase;->res:Ljava/lang/String;

    .line 256
    return-void
.end method
