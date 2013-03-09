.class Lcom/android/browser/homepages/Template$StringEntity;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Lcom/android/browser/homepages/Template$Entity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/homepages/Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringEntity"
.end annotation


# instance fields
.field mValue:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/homepages/Template$StringEntity;->mValue:[B

    .line 71
    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;Lcom/android/browser/homepages/Template$EntityData;)V
    .locals 1
    .parameter "stream"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/browser/homepages/Template$StringEntity;->mValue:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 76
    return-void
.end method
