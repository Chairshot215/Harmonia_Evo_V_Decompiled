.class public interface abstract Lcom/google/wireless/gdata/serializer/GDataSerializer;
.super Ljava/lang/Object;
.source "GDataSerializer.java"


# static fields
.field public static final FORMAT_CREATE:I = 0x1

.field public static final FORMAT_FULL:I = 0x0

.field public static final FORMAT_UPDATE:I = 0x2


# virtual methods
.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract serialize(Ljava/io/OutputStream;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method
