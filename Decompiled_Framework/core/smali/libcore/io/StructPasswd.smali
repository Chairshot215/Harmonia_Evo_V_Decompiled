.class public final Llibcore/io/StructPasswd;
.super Ljava/lang/Object;
.source "StructPasswd.java"


# instance fields
.field public pw_dir:Ljava/lang/String;

.field public pw_gid:I

.field public pw_name:Ljava/lang/String;

.field public pw_shell:Ljava/lang/String;

.field public pw_uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llibcore/io/StructPasswd;->pw_name:Ljava/lang/String;

    iput p2, p0, Llibcore/io/StructPasswd;->pw_uid:I

    iput p3, p0, Llibcore/io/StructPasswd;->pw_gid:I

    iput-object p4, p0, Llibcore/io/StructPasswd;->pw_dir:Ljava/lang/String;

    iput-object p5, p0, Llibcore/io/StructPasswd;->pw_shell:Ljava/lang/String;

    return-void
.end method
