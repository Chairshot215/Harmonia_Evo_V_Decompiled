.class Lcom/google/android/voicesearch/masf/MasfSender$Response;
.super Ljava/lang/Object;
.source "MasfSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/masf/MasfSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Response"
.end annotation


# instance fields
.field final data:[B

.field final length:I

.field final synthetic this$0:Lcom/google/android/voicesearch/masf/MasfSender;

.field final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/masf/MasfSender;Ljava/io/DataInputStream;)V
    .locals 1
    .parameter
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/voicesearch/masf/MasfSender$Response;->this$0:Lcom/google/android/voicesearch/masf/MasfSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/masf/MasfSender$Response;->length:I

    .line 205
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/masf/MasfSender$Response;->type:I

    .line 206
    iget v0, p0, Lcom/google/android/voicesearch/masf/MasfSender$Response;->length:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/voicesearch/masf/MasfSender$Response;->data:[B

    .line 207
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/MasfSender$Response;->data:[B

    invoke-virtual {p2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 208
    return-void
.end method
