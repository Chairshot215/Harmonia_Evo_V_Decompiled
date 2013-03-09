.class public Lcom/htc/android/mail/ByteStringStreams;
.super Ljava/lang/Object;
.source "ByteStringStreams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;,
        Lcom/htc/android/mail/ByteStringStreams$BSABase64InputStream;,
        Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;
    }
.end annotation


# instance fields
.field private mFirstLine:I

.field private mLastLine:I

.field private mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/htc/android/mail/ByteStringStreams;->mLines:Ljava/util/ArrayList;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/ByteStringStreams;->mFirstLine:I

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/ByteStringStreams;->mLastLine:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "firstLine"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/htc/android/mail/ByteStringStreams;->mLines:Ljava/util/ArrayList;

    .line 21
    iput p2, p0, Lcom/htc/android/mail/ByteStringStreams;->mFirstLine:I

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/ByteStringStreams;->mLastLine:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;II)V
    .locals 0
    .parameter
    .parameter "firstLine"
    .parameter "lastLine"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/htc/android/mail/ByteStringStreams;->mLines:Ljava/util/ArrayList;

    .line 28
    iput p2, p0, Lcom/htc/android/mail/ByteStringStreams;->mFirstLine:I

    .line 29
    iput p3, p0, Lcom/htc/android/mail/ByteStringStreams;->mLastLine:I

    .line 30
    return-void
.end method


# virtual methods
.method public final getBase64InputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Lcom/htc/android/mail/ByteStringStreams$BSABase64InputStream;

    iget-object v1, p0, Lcom/htc/android/mail/ByteStringStreams;->mLines:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/android/mail/ByteStringStreams;->mFirstLine:I

    iget v3, p0, Lcom/htc/android/mail/ByteStringStreams;->mLastLine:I

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/ByteStringStreams$BSABase64InputStream;-><init>(Ljava/util/ArrayList;II)V

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;

    iget-object v1, p0, Lcom/htc/android/mail/ByteStringStreams;->mLines:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/android/mail/ByteStringStreams;->mFirstLine:I

    iget v3, p0, Lcom/htc/android/mail/ByteStringStreams;->mLastLine:I

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/ByteStringStreams$BSAInputStream;-><init>(Ljava/util/ArrayList;II)V

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;

    iget-object v1, p0, Lcom/htc/android/mail/ByteStringStreams;->mLines:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/android/mail/ByteStringStreams;->mFirstLine:I

    iget v3, p0, Lcom/htc/android/mail/ByteStringStreams;->mLastLine:I

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/ByteStringStreams$BSAOutputStream;-><init>(Ljava/util/ArrayList;II)V

    return-object v0
.end method
