.class public Lorg/jivesoftware/smack/GoogleExtensions;
.super Ljava/lang/Object;
.source "GoogleExtensions.java"


# static fields
.field private static supportsExtendedContactAttr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jivesoftware/smack/GoogleExtensions;->supportsExtendedContactAttr:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportExtendedContactAttribute()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lorg/jivesoftware/smack/GoogleExtensions;->supportsExtendedContactAttr:Z

    return v0
.end method
