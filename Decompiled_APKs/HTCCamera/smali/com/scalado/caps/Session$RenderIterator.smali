.class Lcom/scalado/caps/Session$RenderIterator;
.super Lcom/scalado/base/Iterator;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderIterator"
.end annotation


# instance fields
.field private encoderIt:Lcom/scalado/base/Iterator;

.field private incompleteImageChecked:Z

.field private session:Lcom/scalado/caps/Session;

.field final synthetic this$0:Lcom/scalado/caps/Session;


# direct methods
.method constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Session;Lcom/scalado/caps/Encoder;)V
    .locals 2

    iput-object p1, p0, Lcom/scalado/caps/Session$RenderIterator;->this$0:Lcom/scalado/caps/Session;

    invoke-direct {p0}, Lcom/scalado/base/Iterator;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/caps/Session$RenderIterator;->incompleteImageChecked:Z

    :try_start_0
    invoke-virtual {p3, p2}, Lcom/scalado/caps/Encoder;->render(Lcom/scalado/caps/Session;)Lcom/scalado/base/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/caps/Session$RenderIterator;->encoderIt:Lcom/scalado/base/Iterator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p2, p0, Lcom/scalado/caps/Session$RenderIterator;->session:Lcom/scalado/caps/Session;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Session$RenderIterator;->encoderIt:Lcom/scalado/base/Iterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator;->abort()V

    return-void
.end method

.method public done()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v2, p0, Lcom/scalado/caps/Session$RenderIterator;->encoderIt:Lcom/scalado/base/Iterator;

    invoke-virtual {v2}, Lcom/scalado/base/Iterator;->done()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/scalado/caps/Session$RenderIterator;->incompleteImageChecked:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/scalado/caps/Session$RenderIterator;->session:Lcom/scalado/caps/Session;

    #calls: Lcom/scalado/caps/Session;->nativeIsIncompleteImage()I
    invoke-static {v2}, Lcom/scalado/caps/Session;->access$000(Lcom/scalado/caps/Session;)I

    move-result v0

    iget-object v2, p0, Lcom/scalado/caps/Session$RenderIterator;->session:Lcom/scalado/caps/Session;

    #getter for: Lcom/scalado/caps/Session;->isIncompleteImage:Z
    invoke-static {v2}, Lcom/scalado/caps/Session;->access$100(Lcom/scalado/caps/Session;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/caps/Session$RenderIterator;->session:Lcom/scalado/caps/Session;

    #calls: Lcom/scalado/caps/Session;->sendIncompleteImage()V
    invoke-static {v2}, Lcom/scalado/caps/Session;->access$200(Lcom/scalado/caps/Session;)V

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/scalado/caps/Session$RenderIterator;->incompleteImageChecked:Z

    :cond_1
    return v1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Session$RenderIterator;->encoderIt:Lcom/scalado/base/Iterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public step()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/scalado/caps/Session$RenderIterator;->encoderIt:Lcom/scalado/base/Iterator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    move-result v0

    return v0
.end method
