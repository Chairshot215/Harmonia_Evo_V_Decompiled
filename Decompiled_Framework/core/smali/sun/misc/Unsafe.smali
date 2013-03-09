.class public final Lsun/misc/Unsafe;
.super Ljava/lang/Object;
.source "Unsafe.java"


# static fields
.field private static final THE_ONE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/misc/Unsafe;

    invoke-direct {v0}, Lsun/misc/Unsafe;-><init>()V

    sput-object v0, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native arrayBaseOffset0(Ljava/lang/Class;)I
.end method

.method private static native arrayIndexScale0(Ljava/lang/Class;)I
.end method

.method public static getUnsafe()Lsun/misc/Unsafe;
    .locals 3

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Unsafe access denied"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    return-object v1
.end method

.method private static native objectFieldOffset0(Ljava/lang/reflect/Field;)J
.end method


# virtual methods
.method public arrayBaseOffset(Ljava/lang/Class;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for array classes only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lsun/misc/Unsafe;->arrayBaseOffset0(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public arrayIndexScale(Ljava/lang/Class;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for array classes only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lsun/misc/Unsafe;->arrayIndexScale0(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public native compareAndSwapInt(Ljava/lang/Object;JII)Z
.end method

.method public native compareAndSwapLong(Ljava/lang/Object;JJJ)Z
.end method

.method public native compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public native getInt(Ljava/lang/Object;J)I
.end method

.method public native getIntVolatile(Ljava/lang/Object;J)I
.end method

.method public native getLong(Ljava/lang/Object;J)J
.end method

.method public native getLongVolatile(Ljava/lang/Object;J)J
.end method

.method public native getObject(Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public native getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for instance fields only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lsun/misc/Unsafe;->objectFieldOffset0(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public park(ZJ)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Thread;->parkUntil(J)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Thread;->parkFor(J)V

    goto :goto_0
.end method

.method public native putInt(Ljava/lang/Object;JI)V
.end method

.method public native putIntVolatile(Ljava/lang/Object;JI)V
.end method

.method public native putLong(Ljava/lang/Object;JJ)V
.end method

.method public native putLongVolatile(Ljava/lang/Object;JJ)V
.end method

.method public native putObject(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putOrderedInt(Ljava/lang/Object;JI)V
.end method

.method public native putOrderedLong(Ljava/lang/Object;JJ)V
.end method

.method public native putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public unpark(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/Thread;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->unpark()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for Threads only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
