.class public Lcom/google/android/marvin/utils/StringBuilderUtils;
.super Ljava/lang/Object;
.source "StringBuilderUtils.java"


# static fields
.field private static final SEPARATOR:C = ' '


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 4
    .parameter "builder"
    .parameter "args"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .restart local p0
    :cond_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 39
    return-object p0

    .line 30
    :cond_1
    aget-object v0, p1, v1

    .line 31
    .local v0, arg:Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 30
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
