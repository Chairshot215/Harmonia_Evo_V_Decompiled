.class Lcom/htc/util/mail/mimemessage/BinaryTempFileBody$BinaryTempFileBodyInputStream;
.super Ljava/io/FilterInputStream;
.source "BinaryTempFileBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BinaryTempFileBodyInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;


# direct methods
.method public constructor <init>(Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;

    #getter for: Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->mFile:Ljava/io/File;
    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->access$000(Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
