.class public Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
.super Ljava/lang/Object;
.source "HttpSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/HttpSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpSenderResult"
.end annotation


# instance fields
.field public downloadedSize:I

.field public responseHeaders:[Lorg/apache/http/Header;

.field public resultBytes:[B

.field public statusCode:I

.field final synthetic this$0:Lcom/htc/xps/pomelo/log/HttpSender;

.field public uploadedSize:I


# direct methods
.method public constructor <init>(Lcom/htc/xps/pomelo/log/HttpSender;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->this$0:Lcom/htc/xps/pomelo/log/HttpSender;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
