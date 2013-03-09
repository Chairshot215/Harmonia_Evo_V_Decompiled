.class public final Llibcore/io/Libcore;
.super Ljava/lang/Object;
.source "Libcore.java"


# static fields
.field public static os:Llibcore/io/Os;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llibcore/io/BlockGuardOs;

    new-instance v1, Llibcore/io/Posix;

    invoke-direct {v1}, Llibcore/io/Posix;-><init>()V

    invoke-direct {v0, v1}, Llibcore/io/BlockGuardOs;-><init>(Llibcore/io/Os;)V

    sput-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
