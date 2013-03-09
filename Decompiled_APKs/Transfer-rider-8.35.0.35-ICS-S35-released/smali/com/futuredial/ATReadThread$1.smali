.class Lcom/futuredial/ATReadThread$1;
.super Ljava/lang/Object;
.source "ATReadThread.java"

# interfaces
.implements Lcom/futuredial/bluetooth/ICommCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ATReadThread;->SetIsCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ATReadThread;

.field final synthetic val$callBackArray:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/futuredial/ATReadThread;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/futuredial/ATReadThread$1;->this$0:Lcom/futuredial/ATReadThread;

    iput-object p2, p0, Lcom/futuredial/ATReadThread$1;->val$callBackArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDataOver([B)Z
    .locals 4
    .parameter "buf"

    .prologue
    .line 66
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 67
    .local v2, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/futuredial/ATReadThread$1;->val$callBackArray:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 69
    iget-object v3, p0, Lcom/futuredial/ATReadThread$1;->val$callBackArray:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 71
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    :cond_0
    const/4 v3, 0x1

    .line 76
    .end local v1           #s:Ljava/lang/String;
    :goto_1
    return v3

    .line 67
    .restart local v1       #s:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1           #s:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
