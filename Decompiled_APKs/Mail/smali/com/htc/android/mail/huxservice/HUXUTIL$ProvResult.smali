.class public Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
.super Ljava/lang/Object;
.source "HUXUTIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HUXUTIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProvResult"
.end annotation


# instance fields
.field public cmd:Ljava/lang/String;

.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public requestBody:Ljava/lang/String;

.field public responseText:Ljava/lang/String;

.field public status:I

.field public uri:Ljava/lang/String;

.field public xobj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0
    .parameter "status"
    .parameter "cmd"
    .parameter "password"
    .parameter "uri"
    .parameter "requestBody"
    .parameter "responseText"
    .parameter "xobj"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 489
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput p1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->status:I

    .line 491
    iput-object p2, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->cmd:Ljava/lang/String;

    .line 492
    iput-object p3, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->password:Ljava/lang/String;

    .line 493
    iput-object p4, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->uri:Ljava/lang/String;

    .line 494
    iput-object p5, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->requestBody:Ljava/lang/String;

    .line 495
    iput-object p6, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->responseText:Ljava/lang/String;

    .line 496
    iput-object p7, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->xobj:Ljava/lang/Object;

    .line 497
    iput p8, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->errorCode:I

    .line 498
    iput-object p9, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->errorMessage:Ljava/lang/String;

    .line 499
    return-void
.end method
