.class Ltwitter4j/http/HttpClient$2;
.super Ltwitter4j/http/OAuthToken;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/http/HttpClient;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/http/HttpClient;


# direct methods
.method constructor <init>(Ltwitter4j/http/HttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-object p1, p0, Ltwitter4j/http/HttpClient$2;->this$0:Ltwitter4j/http/HttpClient;

    invoke-direct {p0, p2, p3}, Ltwitter4j/http/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
