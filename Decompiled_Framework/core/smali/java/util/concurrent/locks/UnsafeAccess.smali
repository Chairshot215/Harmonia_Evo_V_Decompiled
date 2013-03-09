.class final Ljava/util/concurrent/locks/UnsafeAccess;
.super Ljava/lang/Object;
.source "UnsafeAccess.java"


# static fields
.field static final THE_ONE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/locks/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
