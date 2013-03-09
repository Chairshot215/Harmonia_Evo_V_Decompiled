.class public Lgnu/text/NullReader;
.super Ljava/io/Reader;
.source "NullReader.java"


# static fields
.field public static final nullReader:Lgnu/text/NullReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lgnu/text/NullReader;

    invoke-direct {v0}, Lgnu/text/NullReader;-><init>()V

    sput-object v0, Lgnu/text/NullReader;->nullReader:Lgnu/text/NullReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public read([CII)I
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 9
    const/4 v0, -0x1

    return v0
.end method

.method public ready()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    return v0
.end method
