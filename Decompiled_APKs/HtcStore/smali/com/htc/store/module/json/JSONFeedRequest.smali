.class public abstract Lcom/htc/store/module/json/JSONFeedRequest;
.super Ljava/lang/Object;
.source "JSONFeedRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mContentPath:Ljava/lang/String;

.field public mPreferenceManager:Lcom/htc/store/module/PreferenceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    .local p0, this:Lcom/htc/store/module/json/JSONFeedRequest;,"Lcom/htc/store/module/json/JSONFeedRequest<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-eqz p1, :cond_0

    .line 17
    new-instance v0, Lcom/htc/store/module/PreferenceManager;

    invoke-direct {v0, p1}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mContentPath:Ljava/lang/String;

    .line 22
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getUrl(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
