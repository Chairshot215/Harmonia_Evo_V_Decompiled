.class Lcom/htc/util/http/HttpUtil$1;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/http/HttpUtil;->sendGETRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;Ljava/util/HashMap;)Lcom/htc/util/http/HttpUtil$ResponseObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/http/HttpUtil;


# direct methods
.method constructor <init>(Lcom/htc/util/http/HttpUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/htc/util/http/HttpUtil$1;->this$0:Lcom/htc/util/http/HttpUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/util/http/HttpUtil$1;->this$0:Lcom/htc/util/http/HttpUtil;

    #calls: Lcom/htc/util/http/HttpUtil;->connectionTimeout()V
    invoke-static {v0}, Lcom/htc/util/http/HttpUtil;->access$000(Lcom/htc/util/http/HttpUtil;)V

    .line 319
    return-void
.end method
