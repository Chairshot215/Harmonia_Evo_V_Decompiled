.class Ltwitter4j/http/HttpClient$3;
.super Ljava/net/Authenticator;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/http/HttpClient;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/http/HttpClient;


# direct methods
.method constructor <init>(Ltwitter4j/http/HttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Ltwitter4j/http/HttpClient$3;->this$0:Ltwitter4j/http/HttpClient;

    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 3

    .prologue
    .line 580
    invoke-virtual {p0}, Ltwitter4j/http/HttpClient$3;->getRequestorType()Ljava/net/Authenticator$RequestorType;

    move-result-object v0

    sget-object v1, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    invoke-virtual {v0, v1}, Ljava/net/Authenticator$RequestorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    new-instance v0, Ljava/net/PasswordAuthentication;

    iget-object v1, p0, Ltwitter4j/http/HttpClient$3;->this$0:Ltwitter4j/http/HttpClient;

    invoke-static {v1}, Ltwitter4j/http/HttpClient;->access$000(Ltwitter4j/http/HttpClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/http/HttpClient$3;->this$0:Ltwitter4j/http/HttpClient;

    invoke-static {v2}, Ltwitter4j/http/HttpClient;->access$100(Ltwitter4j/http/HttpClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    .line 585
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
