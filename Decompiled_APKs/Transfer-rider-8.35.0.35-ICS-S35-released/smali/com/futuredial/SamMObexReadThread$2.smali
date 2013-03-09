.class Lcom/futuredial/SamMObexReadThread$2;
.super Ljava/lang/Object;
.source "SamMObexReadThread.java"

# interfaces
.implements Lcom/futuredial/bluetooth/ICommCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/SamMObexReadThread;->SetPhoneMode()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/SamMObexReadThread;


# direct methods
.method constructor <init>(Lcom/futuredial/SamMObexReadThread;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/futuredial/SamMObexReadThread$2;->this$0:Lcom/futuredial/SamMObexReadThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDataOver([B)Z
    .locals 3
    .parameter "buf"

    .prologue
    const/4 v2, -0x1

    .line 205
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 206
    .local v0, str:Ljava/lang/String;
    const-string v1, "OK\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "ERROR\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "ERROR:2033"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "CME ERROR:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 210
    :cond_0
    const/4 v1, 0x1

    .line 213
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
