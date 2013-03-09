.class public Lcom/htc/android/epst/translator/MediaStreamTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "MediaStreamTranslator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MediaStreamTranslator"


# instance fields
.field private mMediaStream:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/MediaStreamTranslator;->mMediaStream:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/android/epst/translator/MediaStreamTranslator;->mMediaStream:Ljava/lang/String;

    return-object v0
.end method

.method public sendReadRequest(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/translator/MediaStreamTranslator;->retrieveItemAndUpdate(II)V

    .line 25
    return-void
.end method
