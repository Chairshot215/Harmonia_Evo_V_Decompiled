.class Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;
.super Ljava/io/FilterInputStream;
.source "JarURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/url/JarURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JarURLConnectionInputStream"
.end annotation


# instance fields
.field final jarFile:Ljava/util/jar/JarFile;

.field final synthetic this$0:Llibcore/net/url/JarURLConnectionImpl;


# direct methods
.method protected constructor <init>(Llibcore/net/url/JarURLConnectionImpl;Ljava/io/InputStream;Ljava/util/jar/JarFile;)V
    .locals 0

    iput-object p1, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Llibcore/net/url/JarURLConnectionImpl;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p3, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->jarFile:Ljava/util/jar/JarFile;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Llibcore/net/url/JarURLConnectionImpl;

    invoke-virtual {v0}, Llibcore/net/url/JarURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Llibcore/net/url/JarURLConnectionImpl;

    const/4 v1, 0x1

    #setter for: Llibcore/net/url/JarURLConnectionImpl;->closed:Z
    invoke-static {v0, v1}, Llibcore/net/url/JarURLConnectionImpl;->access$002(Llibcore/net/url/JarURLConnectionImpl;Z)Z

    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    :cond_0
    return-void
.end method
