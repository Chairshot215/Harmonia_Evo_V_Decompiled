.class public final Ldalvik/system/VMStack;
.super Ljava/lang/Object;
.source "VMStack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native fillStackTraceElements(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)I
.end method

.method public static native getCallingClassLoader()Ljava/lang/ClassLoader;
.end method

.method public static native getClasses(I)[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public static native getStackClass2()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public static native getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
.end method
