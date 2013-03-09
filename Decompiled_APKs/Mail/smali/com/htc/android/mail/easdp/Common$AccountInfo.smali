.class Lcom/htc/android/mail/easdp/Common$AccountInfo;
.super Ljava/lang/Object;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easdp/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountInfo"
.end annotation


# instance fields
.field acoundId:Ljava/lang/String;

.field domain:Ljava/lang/String;

.field emailAddr:Ljava/lang/String;

.field heartbeat:I

.field password:Ljava/lang/String;

.field serverAddr:Ljava/lang/String;

.field useSSL:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
