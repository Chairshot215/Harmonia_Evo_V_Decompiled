.class final Ljava/lang/StringToReal$StringExponentPair;
.super Ljava/lang/Object;
.source "StringToReal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StringToReal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringExponentPair"
.end annotation


# instance fields
.field e:J

.field infinity:Z

.field negative:Z

.field s:Ljava/lang/String;

.field zero:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/StringToReal$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/StringToReal$StringExponentPair;-><init>()V

    return-void
.end method


# virtual methods
.method public specialValue()F
    .locals 1

    iget-boolean v0, p0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x80

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7f80

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    if-eqz v0, :cond_2

    const/high16 v0, -0x8000

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
