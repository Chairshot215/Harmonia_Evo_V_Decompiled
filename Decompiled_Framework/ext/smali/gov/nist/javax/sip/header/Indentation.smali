.class Lgov/nist/javax/sip/header/Indentation;
.super Ljava/lang/Object;
.source "Indentation.java"


# instance fields
.field private indentation:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    return-void
.end method


# virtual methods
.method protected decrement()V
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    return-void
.end method

.method protected getCount()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    return v0
.end method

.method protected getIndentation()Ljava/lang/String;
    .locals 2

    iget v1, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    new-array v0, v1, [C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method protected increment()V
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    return-void
.end method

.method protected setIndentation(I)V
    .locals 0

    iput p1, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    return-void
.end method
