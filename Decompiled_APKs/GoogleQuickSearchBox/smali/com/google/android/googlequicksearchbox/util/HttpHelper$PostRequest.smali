.class public Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;
.super Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/util/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostRequest"
.end annotation


# instance fields
.field private mContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;-><init>()V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;-><init>(Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;->mContent:Ljava/lang/String;

    .line 122
    return-void
.end method
