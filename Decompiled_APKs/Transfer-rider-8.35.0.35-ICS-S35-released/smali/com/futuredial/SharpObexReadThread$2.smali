.class Lcom/futuredial/SharpObexReadThread$2;
.super Ljava/lang/Object;
.source "SharpObexReadThread.java"

# interfaces
.implements Lcom/futuredial/bluetooth/ICommCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/SharpObexReadThread;->DoComm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/SharpObexReadThread;


# direct methods
.method constructor <init>(Lcom/futuredial/SharpObexReadThread;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/futuredial/SharpObexReadThread$2;->this$0:Lcom/futuredial/SharpObexReadThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDataOver([B)Z
    .locals 3
    .parameter "buf"

    .prologue
    .line 167
    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 169
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 170
    .local v0, str:Ljava/lang/String;
    const-string v1, "CONNECT\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OK\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    :cond_0
    const/4 v1, 0x1

    .line 176
    .end local v0           #str:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
