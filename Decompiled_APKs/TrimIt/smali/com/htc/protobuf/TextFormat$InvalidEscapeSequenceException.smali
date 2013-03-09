.class Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;
.super Ljava/io/IOException;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InvalidEscapeSequenceException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x714c79599315c118L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 1147
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1148
    return-void
.end method
