.class public Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;
.super Ljava/lang/Object;
.source "HUXUTIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HUXUTIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenObject"
.end annotation


# instance fields
.field public token:Ljava/lang/String;

.field public tokenExpiry:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "token"
    .parameter "tokenExpiry"

    .prologue
    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;->token:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;->tokenExpiry:Ljava/lang/String;

    .line 192
    return-void
.end method
