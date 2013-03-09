.class public final Llibcore/icu/NativeCollation;
.super Ljava/lang/Object;
.source "NativeCollation.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native closeCollator(I)V
.end method

.method public static native closeElements(I)V
.end method

.method public static native compare(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native getAttribute(II)I
.end method

.method public static native getCollationElementIterator(ILjava/lang/String;)I
.end method

.method public static native getMaxExpansion(II)I
.end method

.method public static native getOffset(I)I
.end method

.method public static native getRules(I)Ljava/lang/String;
.end method

.method public static native getSortKey(ILjava/lang/String;)[B
.end method

.method public static native next(I)I
.end method

.method public static native openCollator(Ljava/lang/String;)I
.end method

.method public static native openCollatorFromRules(Ljava/lang/String;II)I
.end method

.method public static native previous(I)I
.end method

.method public static native reset(I)V
.end method

.method public static native safeClone(I)I
.end method

.method public static native setAttribute(III)V
.end method

.method public static native setOffset(II)V
.end method

.method public static native setText(ILjava/lang/String;)V
.end method
