.class Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;
.super Ljava/lang/Object;
.source "MailSync.java"

# interfaces
.implements Lcom/google/android/common/http/PartSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProtoBufPartSource"
.end annotation


# instance fields
.field private final mFilename:Ljava/lang/String;

.field mInputStream:Ljava/io/InputStream;

.field mLength:J

.field private final mProtoBufData:[B

.field final synthetic this$0:Lcom/google/android/gm/provider/MailSync;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailSync;Ljava/lang/String;J[B)V
    .locals 1
    .parameter
    .parameter "filename"
    .parameter "fileLen"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3750
    iput-object p1, p0, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;->this$0:Lcom/google/android/gm/provider/MailSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3751
    iput-object p2, p0, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;->mFilename:Ljava/lang/String;

    .line 3752
    iput-object p5, p0, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;->mProtoBufData:[B

    .line 3753
    iput-wide p3, p0, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;->mLength:J

    .line 3754
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;->newInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;->mInputStream:Ljava/io/InputStream;

    .line 3755
    return-void
.end method

.method private newInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3776
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;->mProtoBufData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3762
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 3763
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;->mInputStream:Ljava/io/InputStream;

    .line 3764
    .local v0, stream:Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;->mInputStream:Ljava/io/InputStream;

    .line 3767
    .end local v0           #stream:Ljava/io/InputStream;
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;->newInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3772
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 3758
    iget-wide v0, p0, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;->mLength:J

    return-wide v0
.end method
