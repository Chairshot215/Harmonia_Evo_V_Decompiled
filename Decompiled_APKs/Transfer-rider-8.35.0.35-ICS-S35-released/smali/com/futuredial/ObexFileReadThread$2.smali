.class Lcom/futuredial/ObexFileReadThread$2;
.super Ljava/lang/Object;
.source "ObexFileReadThread.java"

# interfaces
.implements Lcom/futuredial/bluetooth/ICommCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ObexFileReadThread;->SetIsCompletedCLAN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ObexFileReadThread;


# direct methods
.method constructor <init>(Lcom/futuredial/ObexFileReadThread;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/futuredial/ObexFileReadThread$2;->this$0:Lcom/futuredial/ObexFileReadThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDataOver([B)Z
    .locals 3
    .parameter "buf"

    .prologue
    .line 146
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 148
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 150
    .local v0, str:Ljava/lang/String;
    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 152
    const/4 v1, 0x1

    .line 155
    .end local v0           #str:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
