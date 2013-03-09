.class Ljava/util/jar/Manifest$Chunk;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Chunk"
.end annotation


# instance fields
.field end:I

.field start:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/util/jar/Manifest$Chunk;->start:I

    iput p2, p0, Ljava/util/jar/Manifest$Chunk;->end:I

    return-void
.end method
