.class Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionClosedEvent;
.super Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionClosedEvent"
.end annotation


# instance fields
.field private mError:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 1597
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;-><init>()V

    .line 1598
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionClosedEvent;->mError:I

    .line 1599
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 1603
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;->dump(Ljava/io/PrintWriter;)V

    .line 1604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONN_CLOSED, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionClosedEvent;->mError:I

    invoke-static {v1}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1605
    return-void
.end method
