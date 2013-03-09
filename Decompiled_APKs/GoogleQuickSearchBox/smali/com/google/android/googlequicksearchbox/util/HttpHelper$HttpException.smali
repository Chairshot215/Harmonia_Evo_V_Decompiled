.class public Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
.super Ljava/io/IOException;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/util/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpException"
.end annotation


# instance fields
.field private final mReasonPhrase:Ljava/lang/String;

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "statusCode"
    .parameter "reasonPhrase"

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 140
    iput p1, p0, Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;->mStatusCode:I

    .line 141
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;->mReasonPhrase:Ljava/lang/String;

    .line 142
    return-void
.end method
